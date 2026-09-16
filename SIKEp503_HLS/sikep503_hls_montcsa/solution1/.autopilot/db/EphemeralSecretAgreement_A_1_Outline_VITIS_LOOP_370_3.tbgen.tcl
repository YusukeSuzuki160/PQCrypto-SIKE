set moduleName EphemeralSecretAgreement_A_1_Outline_VITIS_LOOP_370_3
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
set C_modelName {EphemeralSecretAgreement_A.1_Outline_VITIS_LOOP_370_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict coeff { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z_2 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X_2 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ coeff int 64 regular {array 48 { 1 } 1 1 }  }
	{ npts_1 int 32 regular  }
	{ pts_Z_2 int 64 regular {array 56 { 2 1 } 1 1 }  }
	{ pts_Z int 64 regular {array 56 { 2 1 } 1 1 }  }
	{ pts_X_2 int 64 regular {array 56 { 2 1 } 1 1 }  }
	{ pts_X int 64 regular {array 56 { 2 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "coeff", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "npts_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pts_Z_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_X_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ coeff_address0 sc_out sc_lv 6 signal 0 } 
	{ coeff_ce0 sc_out sc_logic 1 signal 0 } 
	{ coeff_q0 sc_in sc_lv 64 signal 0 } 
	{ npts_1 sc_in sc_lv 32 signal 1 } 
	{ pts_Z_2_address0 sc_out sc_lv 6 signal 2 } 
	{ pts_Z_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ pts_Z_2_we0 sc_out sc_logic 1 signal 2 } 
	{ pts_Z_2_d0 sc_out sc_lv 64 signal 2 } 
	{ pts_Z_2_q0 sc_in sc_lv 64 signal 2 } 
	{ pts_Z_2_address1 sc_out sc_lv 6 signal 2 } 
	{ pts_Z_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ pts_Z_2_q1 sc_in sc_lv 64 signal 2 } 
	{ pts_Z_address0 sc_out sc_lv 6 signal 3 } 
	{ pts_Z_ce0 sc_out sc_logic 1 signal 3 } 
	{ pts_Z_we0 sc_out sc_logic 1 signal 3 } 
	{ pts_Z_d0 sc_out sc_lv 64 signal 3 } 
	{ pts_Z_q0 sc_in sc_lv 64 signal 3 } 
	{ pts_Z_address1 sc_out sc_lv 6 signal 3 } 
	{ pts_Z_ce1 sc_out sc_logic 1 signal 3 } 
	{ pts_Z_q1 sc_in sc_lv 64 signal 3 } 
	{ pts_X_2_address0 sc_out sc_lv 6 signal 4 } 
	{ pts_X_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ pts_X_2_we0 sc_out sc_logic 1 signal 4 } 
	{ pts_X_2_d0 sc_out sc_lv 64 signal 4 } 
	{ pts_X_2_q0 sc_in sc_lv 64 signal 4 } 
	{ pts_X_2_address1 sc_out sc_lv 6 signal 4 } 
	{ pts_X_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ pts_X_2_q1 sc_in sc_lv 64 signal 4 } 
	{ pts_X_address0 sc_out sc_lv 6 signal 5 } 
	{ pts_X_ce0 sc_out sc_logic 1 signal 5 } 
	{ pts_X_we0 sc_out sc_logic 1 signal 5 } 
	{ pts_X_d0 sc_out sc_lv 64 signal 5 } 
	{ pts_X_q0 sc_in sc_lv 64 signal 5 } 
	{ pts_X_address1 sc_out sc_lv 6 signal 5 } 
	{ pts_X_ce1 sc_out sc_logic 1 signal 5 } 
	{ pts_X_q1 sc_in sc_lv 64 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "coeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coeff", "role": "address0" }} , 
 	{ "name": "coeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff", "role": "ce0" }} , 
 	{ "name": "coeff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeff", "role": "q0" }} , 
 	{ "name": "npts_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "npts_1", "role": "default" }} , 
 	{ "name": "pts_Z_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z_2", "role": "address0" }} , 
 	{ "name": "pts_Z_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_2", "role": "ce0" }} , 
 	{ "name": "pts_Z_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_2", "role": "we0" }} , 
 	{ "name": "pts_Z_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_2", "role": "d0" }} , 
 	{ "name": "pts_Z_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_2", "role": "q0" }} , 
 	{ "name": "pts_Z_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z_2", "role": "address1" }} , 
 	{ "name": "pts_Z_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_2", "role": "ce1" }} , 
 	{ "name": "pts_Z_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_2", "role": "q1" }} , 
 	{ "name": "pts_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z", "role": "address0" }} , 
 	{ "name": "pts_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "ce0" }} , 
 	{ "name": "pts_Z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "we0" }} , 
 	{ "name": "pts_Z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "d0" }} , 
 	{ "name": "pts_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "q0" }} , 
 	{ "name": "pts_Z_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z", "role": "address1" }} , 
 	{ "name": "pts_Z_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "ce1" }} , 
 	{ "name": "pts_Z_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "q1" }} , 
 	{ "name": "pts_X_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X_2", "role": "address0" }} , 
 	{ "name": "pts_X_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_2", "role": "ce0" }} , 
 	{ "name": "pts_X_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_2", "role": "we0" }} , 
 	{ "name": "pts_X_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_2", "role": "d0" }} , 
 	{ "name": "pts_X_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_2", "role": "q0" }} , 
 	{ "name": "pts_X_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X_2", "role": "address1" }} , 
 	{ "name": "pts_X_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_2", "role": "ce1" }} , 
 	{ "name": "pts_X_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_2", "role": "q1" }} , 
 	{ "name": "pts_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X", "role": "address0" }} , 
 	{ "name": "pts_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "ce0" }} , 
 	{ "name": "pts_X_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "we0" }} , 
 	{ "name": "pts_X_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "d0" }} , 
 	{ "name": "pts_X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "q0" }} , 
 	{ "name": "pts_X_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X", "role": "address1" }} , 
 	{ "name": "pts_X_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "ce1" }} , 
 	{ "name": "pts_X_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "11", "13", "15", "17", "26", "35", "41", "198", "355", "534", "540", "546", "621", "696", "705", "714", "720", "726", "905"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Outline_VITIS_LOOP_370_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38802", "EstimateLatencyMax" : "38802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_fp2mul503_mont_49_fu_191", "Port" : "coeff", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "355", "SubInstance" : "grp_fp2mul503_mont_50_fu_216", "Port" : "coeff", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "npts_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1190_fu_156", "Port" : "pts_Z_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "905", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Port" : "pts_Z_2", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1189_fu_148", "Port" : "pts_Z", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "905", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Port" : "pts_Z", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "pts_X_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1188_fu_140", "Port" : "pts_X_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "905", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Port" : "pts_X_2", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1187_fu_132", "Port" : "pts_X", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "905", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Port" : "pts_X", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_fpadd503_1_fu_164", "Port" : "p503x2_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "26", "SubInstance" : "grp_fpadd503_1_fu_173", "Port" : "p503x2_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "35", "SubInstance" : "grp_fpsub503_2_fu_182", "Port" : "p503x2_1", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "534", "SubInstance" : "grp_fpsub503_1_fu_226", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "540", "SubInstance" : "grp_fpsub503_1_fu_234", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "546", "SubInstance" : "grp_fp2sqr503_mont_2_1_fu_242", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "621", "SubInstance" : "grp_fp2sqr503_mont_fu_250", "Port" : "p503x2_1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "696", "SubInstance" : "grp_fpadd503_fu_258", "Port" : "p503x2_1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "705", "SubInstance" : "grp_fpadd503_fu_267", "Port" : "p503x2_1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "714", "SubInstance" : "grp_fpsub503_fu_276", "Port" : "p503x2_1", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "720", "SubInstance" : "grp_fpsub503_fu_284", "Port" : "p503x2_1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_fp2mul503_mont_49_fu_191", "Port" : "p503_1", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "198", "SubInstance" : "grp_fp2mul503_mont_629_2_fu_206", "Port" : "p503_1", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "355", "SubInstance" : "grp_fp2mul503_mont_50_fu_216", "Port" : "p503_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "726", "SubInstance" : "grp_fp2mul503_mont_5_fu_292", "Port" : "p503_1", "Inst_start_state" : "24", "Inst_end_state" : "25"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_370_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_Z_2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_Z_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_X_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_X_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_4_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1187_fu_132", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1187",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1187_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1188_fu_140", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1188",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1188_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1189_fu_148", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1189",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1189_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1190_fu_156", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1190",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1190_fu_156.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_164", "Parent" : "0", "Child" : ["18", "20", "23"],
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
					{"ID" : "18", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "20", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "23", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "23", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_164.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "17", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_164.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_164.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "17", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_164.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_164.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_164.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "17", "Child" : ["24", "25"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_164.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_164.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_173", "Parent" : "0", "Child" : ["27", "29", "32"],
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
					{"ID" : "27", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "29", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "32", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "32", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_173.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "26", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_173.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_173.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "26", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_173.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_173.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_173.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "26", "Child" : ["33", "34"],
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_173.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_173.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_182", "Parent" : "0", "Child" : ["36", "38"],
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
					{"ID" : "36", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "38", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_182.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Parent" : "35", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_182.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_182.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Parent" : "35", "Child" : ["39", "40"],
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
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_182.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.p503x2_1_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_182.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191", "Parent" : "0", "Child" : ["42", "43", "44", "45", "46", "47", "48", "49", "71", "73", "75", "77", "80", "82", "128", "150", "152"],
		"CDFG" : "fp2mul503_mont_49",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1013", "EstimateLatencyMax" : "1013",
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
					{"ID" : "49", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "71", "SubInstance" : "grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1_fu_103", "Port" : "a_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "71", "SubInstance" : "grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1_fu_103", "Port" : "a_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "73", "SubInstance" : "grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142_fu_112", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_rdc_mont_fu_147", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_rdc_mont_1_fu_170", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1_fu_131", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.t1_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.t2_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.tt1_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.tt1_1_U", "Parent" : "41"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.tt2_U", "Parent" : "41"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.tt2_1_U", "Parent" : "41"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.tt3_U", "Parent" : "41"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88", "Parent" : "41", "Child" : ["50"],
		"CDFG" : "mp_mul_57",
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
					{"ID" : "50", "SubInstance" : "grp_mul_66_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_mul_66_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_mul_66_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_mul_66_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30", "Parent" : "49", "Child" : ["51", "52", "53", "55", "58", "61", "63", "66"],
		"CDFG" : "mul_66",
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
					{"ID" : "55", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "66", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "66", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.acc_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.acc_1_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Parent" : "50", "Child" : ["54"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68", "Parent" : "50", "Child" : ["56", "57"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U1238", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75", "Parent" : "50", "Child" : ["59", "60"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_38_186",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U1241", "Parent" : "58"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_85_2_fu_84", "Parent" : "50", "Child" : ["62"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_85_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92", "Parent" : "50", "Child" : ["64", "65"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.mul_64ns_64ns_128_1_1_U1247", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "50", "Child" : ["67", "69"],
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
					{"ID" : "69", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "69", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "69", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "66", "Child" : ["68"],
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
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "66", "Child" : ["70"],
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
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1_fu_103", "Parent" : "41", "Child" : ["72"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142_fu_112", "Parent" : "41", "Child" : ["74"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142",
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
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1_fu_121", "Parent" : "41", "Child" : ["76"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1",
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
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1_fu_121.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1_fu_131", "Parent" : "41", "Child" : ["78", "79"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1_fu_131.p503_1_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1_fu_131.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1143_fu_139", "Parent" : "41", "Child" : ["81"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1143",
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
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1143_fu_139.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147", "Parent" : "41", "Child" : ["83", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "103", "108", "113", "118", "123"],
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
					{"ID" : "83", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "82", "Child" : ["84"],
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
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_292", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_299", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_306", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_312", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_318", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_325", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_332", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_338", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_345", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_354", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_361", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.tmp_261_is_digit_lessthan_ct_fu_367", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.tmp_262_is_digit_lessthan_ct_fu_374", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381", "Parent" : "82", "Child" : ["99", "100", "101", "102"],
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
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "98"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "98"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "98"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "98"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388", "Parent" : "82", "Child" : ["104", "105", "106", "107"],
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
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "103"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "103"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "103"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395", "Parent" : "82", "Child" : ["109", "110", "111", "112"],
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
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "108"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "108"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "108"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "108"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402", "Parent" : "82", "Child" : ["114", "115", "116", "117"],
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
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "113"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "113"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "113"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "113"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409", "Parent" : "82", "Child" : ["119", "120", "121", "122"],
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
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "118"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "118"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "118"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "118"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416", "Parent" : "82", "Child" : ["124", "125", "126", "127"],
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
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "123"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "123"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "123"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "123"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154", "Parent" : "41", "Child" : ["129"],
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
					{"ID" : "129", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18", "Parent" : "128", "Child" : ["130", "131", "132", "134", "137", "140", "142", "145"],
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
					{"ID" : "134", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "145", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "145", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.acc_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.acc_1_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "129", "Child" : ["133"],
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
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "129", "Child" : ["135", "136"],
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
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "134"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "129", "Child" : ["138", "139"],
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
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "137"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "129", "Child" : ["141"],
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
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "129", "Child" : ["143", "144"],
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
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "142"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "129", "Child" : ["146", "148"],
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
					{"ID" : "148", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "148", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "148", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "145", "Child" : ["147"],
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
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "145", "Child" : ["149"],
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
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1144_fu_162", "Parent" : "41", "Child" : ["151"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1144",
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
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1144_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170", "Parent" : "41", "Child" : ["153", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "173", "178", "183", "188", "193"],
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
					{"ID" : "153", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "152", "Child" : ["154"],
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
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_283", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_290", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_297", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_303", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_309", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_316", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_323", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_329", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_336", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_345", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_352", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.tmp_45_is_digit_lessthan_ct_fu_358", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.tmp_46_is_digit_lessthan_ct_fu_365", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372", "Parent" : "152", "Child" : ["169", "170", "171", "172"],
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
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "168"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "168"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "168"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "168"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379", "Parent" : "152", "Child" : ["174", "175", "176", "177"],
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
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "173"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "173"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "173"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "173"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386", "Parent" : "152", "Child" : ["179", "180", "181", "182"],
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
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "178"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "178"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "178"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "178"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393", "Parent" : "152", "Child" : ["184", "185", "186", "187"],
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
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "183"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "183"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "183"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "183"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400", "Parent" : "152", "Child" : ["189", "190", "191", "192"],
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
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "188"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "188"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "188"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407", "Parent" : "152", "Child" : ["194", "195", "196", "197"],
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
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "193"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "193"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "193"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_49_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "193"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206", "Parent" : "0", "Child" : ["199", "200", "201", "202", "203", "204", "205", "206", "228", "250", "252", "254", "256", "259", "261", "307", "309"],
		"CDFG" : "fp2mul503_mont_629_2",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_mp_mul_5120_fu_72", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "250", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1_fu_96", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "261", "SubInstance" : "grp_rdc_mont_134_fu_140", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_mp_mul_5120_fu_84", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "250", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1_fu_96", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "309", "SubInstance" : "grp_rdc_mont_4_fu_155", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_mp_mul_5120_fu_72", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "252", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118_fu_105", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_mp_mul_5120_fu_84", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "252", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118_fu_105", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "256", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1_fu_124", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.t1_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.t2_U", "Parent" : "198"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.tt1_U", "Parent" : "198"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.tt1_1_U", "Parent" : "198"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.tt2_U", "Parent" : "198"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.tt2_1_U", "Parent" : "198"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.tt3_U", "Parent" : "198"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72", "Parent" : "198", "Child" : ["207"],
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
					{"ID" : "207", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18", "Parent" : "206", "Child" : ["208", "209", "210", "212", "215", "218", "220", "223"],
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
					{"ID" : "212", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "223", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "223", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.acc_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.acc_1_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "207", "Child" : ["211"],
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
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "207", "Child" : ["213", "214"],
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
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "212"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "212"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "207", "Child" : ["216", "217"],
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
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "215"},
	{"ID" : "217", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "207", "Child" : ["219"],
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
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "207", "Child" : ["221", "222"],
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
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "220"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "207", "Child" : ["224", "226"],
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
					{"ID" : "226", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "226", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "226", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "226", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "223", "Child" : ["225"],
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
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "223", "Child" : ["227"],
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
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84", "Parent" : "198", "Child" : ["229"],
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
					{"ID" : "229", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18", "Parent" : "228", "Child" : ["230", "231", "232", "234", "237", "240", "242", "245"],
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
					{"ID" : "234", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "245", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "245", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.acc_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.acc_1_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "229", "Child" : ["233"],
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
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "229", "Child" : ["235", "236"],
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
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "234"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "234"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "229", "Child" : ["238", "239"],
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
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "237"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "229", "Child" : ["241"],
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
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "229", "Child" : ["243", "244"],
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
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "242"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "229", "Child" : ["246", "248"],
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
					{"ID" : "248", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "248", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "248", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "248", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "245", "Child" : ["247"],
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
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "245", "Child" : ["249"],
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
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1_fu_96", "Parent" : "198", "Child" : ["251"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118_fu_105", "Parent" : "198", "Child" : ["253"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118_fu_105.flow_control_loop_pipe_sequential_init_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1_fu_114", "Parent" : "198", "Child" : ["255"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1",
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
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1_fu_124", "Parent" : "198", "Child" : ["257", "258"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1_fu_124.p503_1_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1119_fu_132", "Parent" : "198", "Child" : ["260"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1119",
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
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1119_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140", "Parent" : "198", "Child" : ["262", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "282", "287", "292", "297", "302"],
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
					{"ID" : "262", "SubInstance" : "grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "261", "Child" : ["263"],
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
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_292", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_299", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_306", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_312", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_318", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_325", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_332", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_338", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_345", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_354", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_361", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.tmp_260_is_digit_lessthan_ct_fu_367", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.tmp_261_is_digit_lessthan_ct_fu_374", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381", "Parent" : "261", "Child" : ["278", "279", "280", "281"],
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
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "277"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "277"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "277"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "277"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388", "Parent" : "261", "Child" : ["283", "284", "285", "286"],
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
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "282"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "282"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "282"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "282"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395", "Parent" : "261", "Child" : ["288", "289", "290", "291"],
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
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "287"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "287"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "287"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "287"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402", "Parent" : "261", "Child" : ["293", "294", "295", "296"],
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
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "292"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "292"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "292"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "292"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409", "Parent" : "261", "Child" : ["298", "299", "300", "301"],
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
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "297"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "297"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "297"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "297"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416", "Parent" : "261", "Child" : ["303", "304", "305", "306"],
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
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "302"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "302"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "302"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "302"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1120_fu_147", "Parent" : "198", "Child" : ["308"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1120",
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
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1120_fu_147.flow_control_loop_pipe_sequential_init_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155", "Parent" : "198", "Child" : ["310", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "330", "335", "340", "345", "350"],
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
					{"ID" : "310", "SubInstance" : "grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "309", "Child" : ["311"],
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
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_283", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_290", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_297", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_303", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_309", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_316", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_323", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_329", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_336", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_345", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_352", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372", "Parent" : "309", "Child" : ["326", "327", "328", "329"],
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
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "325"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "325"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "325"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "325"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379", "Parent" : "309", "Child" : ["331", "332", "333", "334"],
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
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "330"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "330"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "330"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "330"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386", "Parent" : "309", "Child" : ["336", "337", "338", "339"],
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
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "335"},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "335"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "335"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "335"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393", "Parent" : "309", "Child" : ["341", "342", "343", "344"],
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
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "340"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "340"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "340"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "340"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400", "Parent" : "309", "Child" : ["346", "347", "348", "349"],
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
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "345"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "345"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "345"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "345"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407", "Parent" : "309", "Child" : ["351", "352", "353", "354"],
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
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "350"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "350"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "350"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_629_2_fu_206.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "350"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216", "Parent" : "0", "Child" : ["356", "357", "358", "359", "360", "361", "362", "363", "385", "407", "409", "411", "413", "416", "418", "464", "486", "488"],
		"CDFG" : "fp2mul503_mont_50",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "969", "EstimateLatencyMax" : "969",
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
					{"ID" : "363", "SubInstance" : "grp_mp_mul_58_fu_76", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "407", "SubInstance" : "grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "418", "SubInstance" : "grp_rdc_mont_134_fu_142", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "385", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "407", "SubInstance" : "grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "488", "SubInstance" : "grp_rdc_mont_4_fu_165", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "363", "SubInstance" : "grp_mp_mul_58_fu_76", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "385", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "409", "SubInstance" : "grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136_fu_109", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "413", "SubInstance" : "grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.t1_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.t2_U", "Parent" : "355"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.tt1_U", "Parent" : "355"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.tt1_1_U", "Parent" : "355"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.tt2_U", "Parent" : "355"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.tt2_1_U", "Parent" : "355"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.tt3_U", "Parent" : "355"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76", "Parent" : "355", "Child" : ["364"],
		"CDFG" : "mp_mul_58",
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
					{"ID" : "364", "SubInstance" : "grp_mul_67_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_67_fu_20", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_67_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_67_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20", "Parent" : "363", "Child" : ["365", "366", "367", "369", "372", "375", "377", "380"],
		"CDFG" : "mul_67",
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
					{"ID" : "369", "SubInstance" : "grp_mul_67_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_mul_67_Pipeline_VITIS_LOOP_38_185_fu_65", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_mul_67_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "380", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_mul_67_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "380", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.acc_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.acc_1_U", "Parent" : "364"},
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "364", "Child" : ["368"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "364", "Child" : ["370", "371"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U1294", "Parent" : "369"},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "369"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_185_fu_65", "Parent" : "364", "Child" : ["373", "374"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_38_185",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_185_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U1297", "Parent" : "372"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_185_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "364", "Child" : ["376"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "364", "Child" : ["378", "379"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U1302", "Parent" : "377"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "377"},
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "364", "Child" : ["381", "383"],
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
					{"ID" : "383", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "383", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "381", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "383", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "381", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "383", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "380", "Child" : ["382"],
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
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "380", "Child" : ["384"],
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
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88", "Parent" : "355", "Child" : ["386"],
		"CDFG" : "mp_mul_57",
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
					{"ID" : "386", "SubInstance" : "grp_mul_66_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_mul_66_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_mul_66_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_mul_66_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30", "Parent" : "385", "Child" : ["387", "388", "389", "391", "394", "397", "399", "402"],
		"CDFG" : "mul_66",
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
					{"ID" : "391", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "389", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "402", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "389", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "402", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.acc_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.acc_1_U", "Parent" : "386"},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Parent" : "386", "Child" : ["390"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "389"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68", "Parent" : "386", "Child" : ["392", "393"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U1238", "Parent" : "391"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "391"},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75", "Parent" : "386", "Child" : ["395", "396"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_38_186",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U1241", "Parent" : "394"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "394"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_85_2_fu_84", "Parent" : "386", "Child" : ["398"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_85_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "397"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92", "Parent" : "386", "Child" : ["400", "401"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.mul_64ns_64ns_128_1_1_U1247", "Parent" : "399"},
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "399"},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "386", "Child" : ["403", "405"],
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
					{"ID" : "405", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "405", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "403", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "405", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "403", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "405", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "402", "Child" : ["404"],
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
	{"ID" : "404", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "403"},
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "402", "Child" : ["406"],
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
	{"ID" : "406", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "405"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1_fu_100", "Parent" : "355", "Child" : ["408"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136_fu_109", "Parent" : "355", "Child" : ["410"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136",
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
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1_fu_116", "Parent" : "355", "Child" : ["412"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1",
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
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1_fu_126", "Parent" : "355", "Child" : ["414", "415"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1_fu_126.p503_1_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "413"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1137_fu_134", "Parent" : "355", "Child" : ["417"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1137",
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
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1137_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142", "Parent" : "355", "Child" : ["419", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "439", "444", "449", "454", "459"],
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
					{"ID" : "419", "SubInstance" : "grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "418", "Child" : ["420"],
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
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_292", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_299", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_306", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_312", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_318", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_325", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_332", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_338", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_345", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_354", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_361", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.tmp_260_is_digit_lessthan_ct_fu_367", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.tmp_261_is_digit_lessthan_ct_fu_374", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381", "Parent" : "418", "Child" : ["435", "436", "437", "438"],
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
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "434"},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "434"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "434"},
	{"ID" : "438", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "434"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388", "Parent" : "418", "Child" : ["440", "441", "442", "443"],
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
	{"ID" : "440", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "439"},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "439"},
	{"ID" : "442", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "439"},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "439"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395", "Parent" : "418", "Child" : ["445", "446", "447", "448"],
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
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "444"},
	{"ID" : "446", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "444"},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "444"},
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "444"},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402", "Parent" : "418", "Child" : ["450", "451", "452", "453"],
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
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "449"},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "449"},
	{"ID" : "452", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "449"},
	{"ID" : "453", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "449"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409", "Parent" : "418", "Child" : ["455", "456", "457", "458"],
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
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "454"},
	{"ID" : "456", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "454"},
	{"ID" : "457", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "454"},
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "454"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416", "Parent" : "418", "Child" : ["460", "461", "462", "463"],
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
	{"ID" : "460", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "459"},
	{"ID" : "461", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "459"},
	{"ID" : "462", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "459"},
	{"ID" : "463", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "459"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149", "Parent" : "355", "Child" : ["465"],
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
					{"ID" : "465", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "465", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "465", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "465", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18", "Parent" : "464", "Child" : ["466", "467", "468", "470", "473", "476", "478", "481"],
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
					{"ID" : "470", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "473", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "468", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "481", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "468", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "481", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_U", "Parent" : "465"},
	{"ID" : "467", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_1_U", "Parent" : "465"},
	{"ID" : "468", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "465", "Child" : ["469"],
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
	{"ID" : "469", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "468"},
	{"ID" : "470", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "465", "Child" : ["471", "472"],
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
	{"ID" : "471", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "470"},
	{"ID" : "472", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "470"},
	{"ID" : "473", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "465", "Child" : ["474", "475"],
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
	{"ID" : "474", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "473"},
	{"ID" : "475", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "473"},
	{"ID" : "476", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "465", "Child" : ["477"],
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
	{"ID" : "477", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "476"},
	{"ID" : "478", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "465", "Child" : ["479", "480"],
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
	{"ID" : "479", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "478"},
	{"ID" : "480", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "478"},
	{"ID" : "481", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "465", "Child" : ["482", "484"],
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
					{"ID" : "484", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "484", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "482", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "484", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "482", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "484", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "482", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "481", "Child" : ["483"],
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
	{"ID" : "483", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "482"},
	{"ID" : "484", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "481", "Child" : ["485"],
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
	{"ID" : "485", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "484"},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1138_fu_157", "Parent" : "355", "Child" : ["487"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1138",
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
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1138_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "486"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165", "Parent" : "355", "Child" : ["489", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "509", "514", "519", "524", "529"],
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
					{"ID" : "489", "SubInstance" : "grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "488", "Child" : ["490"],
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
	{"ID" : "490", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "489"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_283", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_290", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_297", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_303", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_309", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_316", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_323", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_329", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_336", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_345", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_352", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372", "Parent" : "488", "Child" : ["505", "506", "507", "508"],
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
	{"ID" : "505", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "504"},
	{"ID" : "506", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "504"},
	{"ID" : "507", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "504"},
	{"ID" : "508", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "504"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379", "Parent" : "488", "Child" : ["510", "511", "512", "513"],
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
	{"ID" : "510", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "509"},
	{"ID" : "511", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "509"},
	{"ID" : "512", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "509"},
	{"ID" : "513", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "509"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386", "Parent" : "488", "Child" : ["515", "516", "517", "518"],
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
	{"ID" : "515", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "514"},
	{"ID" : "516", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "514"},
	{"ID" : "517", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "514"},
	{"ID" : "518", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "514"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393", "Parent" : "488", "Child" : ["520", "521", "522", "523"],
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
	{"ID" : "520", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "519"},
	{"ID" : "521", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "519"},
	{"ID" : "522", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "519"},
	{"ID" : "523", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "519"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400", "Parent" : "488", "Child" : ["525", "526", "527", "528"],
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
	{"ID" : "525", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "524"},
	{"ID" : "526", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "524"},
	{"ID" : "527", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "524"},
	{"ID" : "528", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "524"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407", "Parent" : "488", "Child" : ["530", "531", "532", "533"],
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
	{"ID" : "530", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "529"},
	{"ID" : "531", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "529"},
	{"ID" : "532", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "529"},
	{"ID" : "533", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_50_fu_216.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "529"},
	{"ID" : "534", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_226", "Parent" : "0", "Child" : ["535", "537"],
		"CDFG" : "fpsub503_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "535", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "535", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "537", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "537", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_226.grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "534", "Child" : ["536"],
		"CDFG" : "fpsub503_1_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_226.grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "535"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_226.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "534", "Child" : ["538", "539"],
		"CDFG" : "fpsub503_1_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_226.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "537"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_226.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "537"},
	{"ID" : "540", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_234", "Parent" : "0", "Child" : ["541", "543"],
		"CDFG" : "fpsub503_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "541", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "541", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "543", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "543", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_234.grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "540", "Child" : ["542"],
		"CDFG" : "fpsub503_1_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_234.grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "541"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_234.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "540", "Child" : ["544", "545"],
		"CDFG" : "fpsub503_1_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_234.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "543"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_1_fu_234.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "543"},
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242", "Parent" : "0", "Child" : ["547", "548", "549", "550", "552", "554", "557", "559", "590"],
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
					{"ID" : "550", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "552", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "557", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "559", "SubInstance" : "grp_fpmul503_mont_2_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "550", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "552", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "590", "SubInstance" : "grp_fpmul503_mont_2_3_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "554", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.t1_U", "Parent" : "546"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.t2_U", "Parent" : "546"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.t3_U", "Parent" : "546"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46", "Parent" : "546", "Child" : ["551"],
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
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "550"},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "546", "Child" : ["553"],
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
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "552"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "546", "Child" : ["555", "556"],
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
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "554"},
	{"ID" : "556", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "554"},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102_fu_74", "Parent" : "546", "Child" : ["558"],
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
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "557"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81", "Parent" : "546", "Child" : ["560"],
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
					{"ID" : "560", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "560", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "560", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18", "Parent" : "559", "Child" : ["561"],
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
					{"ID" : "561", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "561", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "561", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "561", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18", "Parent" : "560", "Child" : ["562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589"],
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
	{"ID" : "562", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U761", "Parent" : "561"},
	{"ID" : "563", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U762", "Parent" : "561"},
	{"ID" : "564", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U763", "Parent" : "561"},
	{"ID" : "565", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U764", "Parent" : "561"},
	{"ID" : "566", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U765", "Parent" : "561"},
	{"ID" : "567", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U766", "Parent" : "561"},
	{"ID" : "568", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U767", "Parent" : "561"},
	{"ID" : "569", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U768", "Parent" : "561"},
	{"ID" : "570", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U769", "Parent" : "561"},
	{"ID" : "571", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_56ns_119_1_1_U770", "Parent" : "561"},
	{"ID" : "572", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_56ns_119_1_1_U771", "Parent" : "561"},
	{"ID" : "573", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U772", "Parent" : "561"},
	{"ID" : "574", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U773", "Parent" : "561"},
	{"ID" : "575", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U774", "Parent" : "561"},
	{"ID" : "576", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U775", "Parent" : "561"},
	{"ID" : "577", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_127_1_1_U776", "Parent" : "561"},
	{"ID" : "578", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_127_1_1_U777", "Parent" : "561"},
	{"ID" : "579", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_65ns_128_1_1_U778", "Parent" : "561"},
	{"ID" : "580", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_65ns_128_1_1_U779", "Parent" : "561"},
	{"ID" : "581", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U780", "Parent" : "561"},
	{"ID" : "582", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U781", "Parent" : "561"},
	{"ID" : "583", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U782", "Parent" : "561"},
	{"ID" : "584", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_62ns_64_1_1_U783", "Parent" : "561"},
	{"ID" : "585", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U784", "Parent" : "561"},
	{"ID" : "586", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_62ns_64_1_1_U785", "Parent" : "561"},
	{"ID" : "587", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U786", "Parent" : "561"},
	{"ID" : "588", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64s_64_1_1_U787", "Parent" : "561"},
	{"ID" : "589", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64s_64_1_1_U788", "Parent" : "561"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89", "Parent" : "546", "Child" : ["591"],
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
					{"ID" : "591", "SubInstance" : "grp_mul_2_3_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "591", "SubInstance" : "grp_mul_2_3_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16", "Parent" : "590", "Child" : ["592"],
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
					{"ID" : "592", "SubInstance" : "grp_mul_2_3_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "592", "SubInstance" : "grp_mul_2_3_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "592", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16", "Parent" : "591", "Child" : ["593", "594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620"],
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
	{"ID" : "593", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U798", "Parent" : "592"},
	{"ID" : "594", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U799", "Parent" : "592"},
	{"ID" : "595", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U800", "Parent" : "592"},
	{"ID" : "596", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U801", "Parent" : "592"},
	{"ID" : "597", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U802", "Parent" : "592"},
	{"ID" : "598", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U803", "Parent" : "592"},
	{"ID" : "599", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U804", "Parent" : "592"},
	{"ID" : "600", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U805", "Parent" : "592"},
	{"ID" : "601", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U806", "Parent" : "592"},
	{"ID" : "602", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_56ns_119_1_1_U807", "Parent" : "592"},
	{"ID" : "603", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_56ns_119_1_1_U808", "Parent" : "592"},
	{"ID" : "604", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U809", "Parent" : "592"},
	{"ID" : "605", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U810", "Parent" : "592"},
	{"ID" : "606", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U811", "Parent" : "592"},
	{"ID" : "607", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U812", "Parent" : "592"},
	{"ID" : "608", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_127_1_1_U813", "Parent" : "592"},
	{"ID" : "609", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_127_1_1_U814", "Parent" : "592"},
	{"ID" : "610", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_65ns_128_1_1_U815", "Parent" : "592"},
	{"ID" : "611", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_65ns_128_1_1_U816", "Parent" : "592"},
	{"ID" : "612", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U817", "Parent" : "592"},
	{"ID" : "613", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U818", "Parent" : "592"},
	{"ID" : "614", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U819", "Parent" : "592"},
	{"ID" : "615", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_62ns_64_1_1_U820", "Parent" : "592"},
	{"ID" : "616", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U821", "Parent" : "592"},
	{"ID" : "617", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_62ns_64_1_1_U822", "Parent" : "592"},
	{"ID" : "618", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U823", "Parent" : "592"},
	{"ID" : "619", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64s_64_1_1_U824", "Parent" : "592"},
	{"ID" : "620", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64s_64_1_1_U825", "Parent" : "592"},
	{"ID" : "621", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250", "Parent" : "0", "Child" : ["622", "623", "624", "625", "627", "629", "632", "634", "665"],
		"CDFG" : "fp2sqr503_mont",
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
					{"ID" : "625", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "627", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "632", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "634", "SubInstance" : "grp_fpmul503_mont_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "625", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "627", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "665", "SubInstance" : "grp_fpmul503_mont_1_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "629", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "622", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.t1_U", "Parent" : "621"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.t2_U", "Parent" : "621"},
	{"ID" : "624", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.t3_U", "Parent" : "621"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1_fu_46", "Parent" : "621", "Child" : ["626"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "625"},
	{"ID" : "627", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "621", "Child" : ["628"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "627"},
	{"ID" : "629", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "621", "Child" : ["630", "631"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "630", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "629"},
	{"ID" : "631", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "629"},
	{"ID" : "632", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105_fu_74", "Parent" : "621", "Child" : ["633"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "632"},
	{"ID" : "634", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81", "Parent" : "621", "Child" : ["635"],
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
					{"ID" : "635", "SubInstance" : "grp_mul_1_4_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "635", "SubInstance" : "grp_mul_1_4_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "635", "SubInstance" : "grp_mul_1_4_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "635", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18", "Parent" : "634", "Child" : ["636"],
		"CDFG" : "mul_1_4",
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
					{"ID" : "636", "SubInstance" : "grp_mul_1_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "636", "SubInstance" : "grp_mul_1_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "636", "SubInstance" : "grp_mul_1_2_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "636", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18", "Parent" : "635", "Child" : ["637", "638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664"],
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
	{"ID" : "637", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U224", "Parent" : "636"},
	{"ID" : "638", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U225", "Parent" : "636"},
	{"ID" : "639", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U226", "Parent" : "636"},
	{"ID" : "640", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U227", "Parent" : "636"},
	{"ID" : "641", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U228", "Parent" : "636"},
	{"ID" : "642", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U229", "Parent" : "636"},
	{"ID" : "643", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U230", "Parent" : "636"},
	{"ID" : "644", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U231", "Parent" : "636"},
	{"ID" : "645", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U232", "Parent" : "636"},
	{"ID" : "646", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_56ns_119_1_1_U233", "Parent" : "636"},
	{"ID" : "647", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_56ns_119_1_1_U234", "Parent" : "636"},
	{"ID" : "648", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_62ns_125_1_1_U235", "Parent" : "636"},
	{"ID" : "649", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_62ns_125_1_1_U236", "Parent" : "636"},
	{"ID" : "650", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_62ns_125_1_1_U237", "Parent" : "636"},
	{"ID" : "651", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_62ns_125_1_1_U238", "Parent" : "636"},
	{"ID" : "652", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_127_1_1_U239", "Parent" : "636"},
	{"ID" : "653", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_127_1_1_U240", "Parent" : "636"},
	{"ID" : "654", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_65ns_128_1_1_U241", "Parent" : "636"},
	{"ID" : "655", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_65ns_128_1_1_U242", "Parent" : "636"},
	{"ID" : "656", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U243", "Parent" : "636"},
	{"ID" : "657", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U244", "Parent" : "636"},
	{"ID" : "658", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U245", "Parent" : "636"},
	{"ID" : "659", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_62ns_64_1_1_U246", "Parent" : "636"},
	{"ID" : "660", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U247", "Parent" : "636"},
	{"ID" : "661", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_62ns_64_1_1_U248", "Parent" : "636"},
	{"ID" : "662", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U249", "Parent" : "636"},
	{"ID" : "663", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64s_64_1_1_U250", "Parent" : "636"},
	{"ID" : "664", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64s_64_1_1_U251", "Parent" : "636"},
	{"ID" : "665", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89", "Parent" : "621", "Child" : ["666"],
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
					{"ID" : "666", "SubInstance" : "grp_mul_3_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "666", "SubInstance" : "grp_mul_3_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16", "Parent" : "665", "Child" : ["667"],
		"CDFG" : "mul_3_1",
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
					{"ID" : "667", "SubInstance" : "grp_mul_1_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "667", "SubInstance" : "grp_mul_1_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "667", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16", "Parent" : "666", "Child" : ["668", "669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695"],
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
	{"ID" : "668", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U622", "Parent" : "667"},
	{"ID" : "669", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U623", "Parent" : "667"},
	{"ID" : "670", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U624", "Parent" : "667"},
	{"ID" : "671", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U625", "Parent" : "667"},
	{"ID" : "672", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U626", "Parent" : "667"},
	{"ID" : "673", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U627", "Parent" : "667"},
	{"ID" : "674", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U628", "Parent" : "667"},
	{"ID" : "675", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U629", "Parent" : "667"},
	{"ID" : "676", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U630", "Parent" : "667"},
	{"ID" : "677", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_56ns_119_1_1_U631", "Parent" : "667"},
	{"ID" : "678", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_56ns_119_1_1_U632", "Parent" : "667"},
	{"ID" : "679", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_62ns_125_1_1_U633", "Parent" : "667"},
	{"ID" : "680", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_62ns_125_1_1_U634", "Parent" : "667"},
	{"ID" : "681", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_62ns_125_1_1_U635", "Parent" : "667"},
	{"ID" : "682", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_62ns_125_1_1_U636", "Parent" : "667"},
	{"ID" : "683", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_127_1_1_U637", "Parent" : "667"},
	{"ID" : "684", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_127_1_1_U638", "Parent" : "667"},
	{"ID" : "685", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_65ns_128_1_1_U639", "Parent" : "667"},
	{"ID" : "686", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_65ns_128_1_1_U640", "Parent" : "667"},
	{"ID" : "687", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U641", "Parent" : "667"},
	{"ID" : "688", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U642", "Parent" : "667"},
	{"ID" : "689", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U643", "Parent" : "667"},
	{"ID" : "690", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_62ns_64_1_1_U644", "Parent" : "667"},
	{"ID" : "691", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U645", "Parent" : "667"},
	{"ID" : "692", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_62ns_64_1_1_U646", "Parent" : "667"},
	{"ID" : "693", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U647", "Parent" : "667"},
	{"ID" : "694", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64s_64_1_1_U648", "Parent" : "667"},
	{"ID" : "695", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64s_64_1_1_U649", "Parent" : "667"},
	{"ID" : "696", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258", "Parent" : "0", "Child" : ["697", "699", "702"],
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
					{"ID" : "697", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "697", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "697", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "699", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "702", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "699", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "702", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "697", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "696", "Child" : ["698"],
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
	{"ID" : "698", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "697"},
	{"ID" : "699", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "696", "Child" : ["700", "701"],
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
			{"Name" : "carry_1363_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "700", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "699"},
	{"ID" : "701", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "699"},
	{"ID" : "702", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "696", "Child" : ["703", "704"],
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
	{"ID" : "703", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "702"},
	{"ID" : "704", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "702"},
	{"ID" : "705", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267", "Parent" : "0", "Child" : ["706", "708", "711"],
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
					{"ID" : "706", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "706", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "706", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "708", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "711", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "708", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "711", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "706", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "705", "Child" : ["707"],
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
	{"ID" : "707", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "706"},
	{"ID" : "708", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "705", "Child" : ["709", "710"],
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
			{"Name" : "carry_1363_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "708"},
	{"ID" : "710", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "708"},
	{"ID" : "711", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "705", "Child" : ["712", "713"],
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
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "711"},
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "711"},
	{"ID" : "714", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276", "Parent" : "0", "Child" : ["715", "717"],
		"CDFG" : "fpsub503",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "717", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "717", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "715", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "714", "Child" : ["716"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "715"},
	{"ID" : "717", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "714", "Child" : ["718", "719"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "717"},
	{"ID" : "719", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "717"},
	{"ID" : "720", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284", "Parent" : "0", "Child" : ["721", "723"],
		"CDFG" : "fpsub503",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "721", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "721", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "723", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "723", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "721", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "720", "Child" : ["722"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "722", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "721"},
	{"ID" : "723", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "720", "Child" : ["724", "725"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "724", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "723"},
	{"ID" : "725", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "723"},
	{"ID" : "726", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292", "Parent" : "0", "Child" : ["727", "728", "729", "730", "731", "732", "733", "734", "756", "778", "780", "782", "784", "787", "789", "835", "857", "859"],
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
					{"ID" : "734", "SubInstance" : "grp_mp_mul_1_fu_74", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "778", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "789", "SubInstance" : "grp_rdc_mont_fu_142", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "756", "SubInstance" : "grp_mp_mul_1_fu_86", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "778", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "859", "SubInstance" : "grp_rdc_mont_1_fu_165", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "734", "SubInstance" : "grp_mp_mul_1_fu_74", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "780", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "756", "SubInstance" : "grp_mp_mul_1_fu_86", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "780", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "784", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.t1_U", "Parent" : "726"},
	{"ID" : "728", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.t2_U", "Parent" : "726"},
	{"ID" : "729", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt1_U", "Parent" : "726"},
	{"ID" : "730", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt1_1_U", "Parent" : "726"},
	{"ID" : "731", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt2_U", "Parent" : "726"},
	{"ID" : "732", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt2_1_U", "Parent" : "726"},
	{"ID" : "733", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt3_U", "Parent" : "726"},
	{"ID" : "734", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74", "Parent" : "726", "Child" : ["735"],
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
					{"ID" : "735", "SubInstance" : "grp_mul_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "735", "SubInstance" : "grp_mul_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "735", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "735", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "735", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18", "Parent" : "734", "Child" : ["736", "737", "738", "740", "743", "746", "748", "751"],
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
					{"ID" : "740", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "743", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "738", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "751", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "738", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "751", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "736", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.acc_U", "Parent" : "735"},
	{"ID" : "737", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.acc_1_U", "Parent" : "735"},
	{"ID" : "738", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "735", "Child" : ["739"],
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
	{"ID" : "739", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "738"},
	{"ID" : "740", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "735", "Child" : ["741", "742"],
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
	{"ID" : "741", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U563", "Parent" : "740"},
	{"ID" : "742", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "740"},
	{"ID" : "743", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Parent" : "735", "Child" : ["744", "745"],
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
	{"ID" : "744", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U566", "Parent" : "743"},
	{"ID" : "745", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "743"},
	{"ID" : "746", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "735", "Child" : ["747"],
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
	{"ID" : "747", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "746"},
	{"ID" : "748", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "735", "Child" : ["749", "750"],
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
	{"ID" : "749", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U571", "Parent" : "748"},
	{"ID" : "750", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "748"},
	{"ID" : "751", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "735", "Child" : ["752", "754"],
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
					{"ID" : "754", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "754", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "752", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "754", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "752", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "754", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "752", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "751", "Child" : ["753"],
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
	{"ID" : "753", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "752"},
	{"ID" : "754", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "751", "Child" : ["755"],
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
	{"ID" : "755", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "754"},
	{"ID" : "756", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86", "Parent" : "726", "Child" : ["757"],
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
					{"ID" : "757", "SubInstance" : "grp_mul_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "757", "SubInstance" : "grp_mul_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "757", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "757", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "757", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18", "Parent" : "756", "Child" : ["758", "759", "760", "762", "765", "768", "770", "773"],
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
					{"ID" : "762", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "765", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "760", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "773", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "760", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "773", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "758", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.acc_U", "Parent" : "757"},
	{"ID" : "759", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.acc_1_U", "Parent" : "757"},
	{"ID" : "760", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "757", "Child" : ["761"],
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
	{"ID" : "761", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "760"},
	{"ID" : "762", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "757", "Child" : ["763", "764"],
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
	{"ID" : "763", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U563", "Parent" : "762"},
	{"ID" : "764", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "762"},
	{"ID" : "765", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Parent" : "757", "Child" : ["766", "767"],
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
	{"ID" : "766", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U566", "Parent" : "765"},
	{"ID" : "767", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "765"},
	{"ID" : "768", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "757", "Child" : ["769"],
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
	{"ID" : "769", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "768"},
	{"ID" : "770", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "757", "Child" : ["771", "772"],
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
	{"ID" : "771", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U571", "Parent" : "770"},
	{"ID" : "772", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "770"},
	{"ID" : "773", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "757", "Child" : ["774", "776"],
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
					{"ID" : "776", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "776", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "774", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "776", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "774", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "776", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "774", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "773", "Child" : ["775"],
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
	{"ID" : "775", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "774"},
	{"ID" : "776", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "773", "Child" : ["777"],
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
	{"ID" : "777", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "776"},
	{"ID" : "778", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98", "Parent" : "726", "Child" : ["779"],
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
	{"ID" : "779", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "778"},
	{"ID" : "780", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107", "Parent" : "726", "Child" : ["781"],
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
	{"ID" : "781", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "780"},
	{"ID" : "782", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1_fu_116", "Parent" : "726", "Child" : ["783"],
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
	{"ID" : "783", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "782"},
	{"ID" : "784", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126", "Parent" : "726", "Child" : ["785", "786"],
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
	{"ID" : "785", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126.p503_1_U", "Parent" : "784"},
	{"ID" : "786", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "784"},
	{"ID" : "787", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140_fu_134", "Parent" : "726", "Child" : ["788"],
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
	{"ID" : "788", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "787"},
	{"ID" : "789", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142", "Parent" : "726", "Child" : ["790", "792", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "810", "815", "820", "825", "830"],
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
					{"ID" : "790", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "790", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "789", "Child" : ["791"],
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
	{"ID" : "791", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "790"},
	{"ID" : "792", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_292", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "793", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_299", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "794", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_306", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "795", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_312", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "796", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_318", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "797", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_325", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "798", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_332", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "799", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_338", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "800", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_345", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "801", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_354", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "802", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_361", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "803", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.tmp_261_is_digit_lessthan_ct_fu_367", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "804", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.tmp_262_is_digit_lessthan_ct_fu_374", "Parent" : "789",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "805", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381", "Parent" : "789", "Child" : ["806", "807", "808", "809"],
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
	{"ID" : "806", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "805"},
	{"ID" : "807", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "805"},
	{"ID" : "808", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "805"},
	{"ID" : "809", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "805"},
	{"ID" : "810", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388", "Parent" : "789", "Child" : ["811", "812", "813", "814"],
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
	{"ID" : "811", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "810"},
	{"ID" : "812", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "810"},
	{"ID" : "813", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "810"},
	{"ID" : "814", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "810"},
	{"ID" : "815", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395", "Parent" : "789", "Child" : ["816", "817", "818", "819"],
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
	{"ID" : "816", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "815"},
	{"ID" : "817", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "815"},
	{"ID" : "818", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "815"},
	{"ID" : "819", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "815"},
	{"ID" : "820", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402", "Parent" : "789", "Child" : ["821", "822", "823", "824"],
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
	{"ID" : "821", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "820"},
	{"ID" : "822", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "820"},
	{"ID" : "823", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "820"},
	{"ID" : "824", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "820"},
	{"ID" : "825", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409", "Parent" : "789", "Child" : ["826", "827", "828", "829"],
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
	{"ID" : "826", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "825"},
	{"ID" : "827", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "825"},
	{"ID" : "828", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "825"},
	{"ID" : "829", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "825"},
	{"ID" : "830", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416", "Parent" : "789", "Child" : ["831", "832", "833", "834"],
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
	{"ID" : "831", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "830"},
	{"ID" : "832", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "830"},
	{"ID" : "833", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "830"},
	{"ID" : "834", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "830"},
	{"ID" : "835", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149", "Parent" : "726", "Child" : ["836"],
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
					{"ID" : "836", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "836", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "836", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "836", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "836", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18", "Parent" : "835", "Child" : ["837", "838", "839", "841", "844", "847", "849", "852"],
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
					{"ID" : "841", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "844", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "839", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "852", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "839", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "852", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "837", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_U", "Parent" : "836"},
	{"ID" : "838", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_1_U", "Parent" : "836"},
	{"ID" : "839", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "836", "Child" : ["840"],
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
	{"ID" : "840", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "839"},
	{"ID" : "841", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "836", "Child" : ["842", "843"],
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
	{"ID" : "842", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "841"},
	{"ID" : "843", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "841"},
	{"ID" : "844", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "836", "Child" : ["845", "846"],
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
	{"ID" : "845", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "844"},
	{"ID" : "846", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "844"},
	{"ID" : "847", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "836", "Child" : ["848"],
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
	{"ID" : "848", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "847"},
	{"ID" : "849", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "836", "Child" : ["850", "851"],
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
	{"ID" : "850", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "849"},
	{"ID" : "851", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "849"},
	{"ID" : "852", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "836", "Child" : ["853", "855"],
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
					{"ID" : "855", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "855", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "853", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "855", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "853", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "855", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "853", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "852", "Child" : ["854"],
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
	{"ID" : "854", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "853"},
	{"ID" : "855", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "852", "Child" : ["856"],
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
	{"ID" : "856", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "855"},
	{"ID" : "857", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141_fu_157", "Parent" : "726", "Child" : ["858"],
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
	{"ID" : "858", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "857"},
	{"ID" : "859", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165", "Parent" : "726", "Child" : ["860", "862", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "880", "885", "890", "895", "900"],
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
					{"ID" : "860", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "860", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "859", "Child" : ["861"],
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
	{"ID" : "861", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "860"},
	{"ID" : "862", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_283", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "863", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_290", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "864", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_297", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "865", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_303", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "866", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_309", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "867", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_316", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "868", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_323", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "869", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_329", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "870", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_336", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "871", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_345", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "872", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_352", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "873", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.tmp_45_is_digit_lessthan_ct_fu_358", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "874", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.tmp_46_is_digit_lessthan_ct_fu_365", "Parent" : "859",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "875", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372", "Parent" : "859", "Child" : ["876", "877", "878", "879"],
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
	{"ID" : "876", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "875"},
	{"ID" : "877", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "875"},
	{"ID" : "878", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "875"},
	{"ID" : "879", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "875"},
	{"ID" : "880", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379", "Parent" : "859", "Child" : ["881", "882", "883", "884"],
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
	{"ID" : "881", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "880"},
	{"ID" : "882", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "880"},
	{"ID" : "883", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "880"},
	{"ID" : "884", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "880"},
	{"ID" : "885", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386", "Parent" : "859", "Child" : ["886", "887", "888", "889"],
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
	{"ID" : "886", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "885"},
	{"ID" : "887", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "885"},
	{"ID" : "888", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "885"},
	{"ID" : "889", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "885"},
	{"ID" : "890", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393", "Parent" : "859", "Child" : ["891", "892", "893", "894"],
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
	{"ID" : "891", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "890"},
	{"ID" : "892", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "890"},
	{"ID" : "893", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "890"},
	{"ID" : "894", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "890"},
	{"ID" : "895", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400", "Parent" : "859", "Child" : ["896", "897", "898", "899"],
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
	{"ID" : "896", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "895"},
	{"ID" : "897", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "895"},
	{"ID" : "898", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "895"},
	{"ID" : "899", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "895"},
	{"ID" : "900", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407", "Parent" : "859", "Child" : ["901", "902", "903", "904"],
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
	{"ID" : "901", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "900"},
	{"ID" : "902", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "900"},
	{"ID" : "903", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "900"},
	{"ID" : "904", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "900"},
	{"ID" : "905", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Parent" : "0", "Child" : ["906"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pts_Z_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln18_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln370", "Type" : "None", "Direction" : "I"},
			{"Name" : "npts_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_313_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "906", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302.flow_control_loop_pipe_sequential_init_U", "Parent" : "905"}]}


set ArgLastReadFirstWriteLatency {
	EphemeralSecretAgreement_A_1_Outline_VITIS_LOOP_370_3 {
		coeff {Type I LastRead 1 FirstWrite -1}
		npts_1 {Type I LastRead 0 FirstWrite -1}
		pts_Z_2 {Type IO LastRead 0 FirstWrite -1}
		pts_Z {Type IO LastRead 0 FirstWrite -1}
		pts_X_2 {Type IO LastRead 0 FirstWrite -1}
		pts_X {Type IO LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1187 {
		zext_ln18_3 {Type I LastRead 0 FirstWrite -1}
		pts_X {Type I LastRead 0 FirstWrite -1}
		pt_new_X {Type O LastRead -1 FirstWrite 1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1188 {
		zext_ln18_3 {Type I LastRead 0 FirstWrite -1}
		pts_X_2 {Type I LastRead 0 FirstWrite -1}
		pt_new_X_2 {Type O LastRead -1 FirstWrite 1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1189 {
		zext_ln18_3 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type I LastRead 0 FirstWrite -1}
		pt_new_Z {Type O LastRead -1 FirstWrite 1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1190 {
		zext_ln18_3 {Type I LastRead 0 FirstWrite -1}
		pts_Z_2 {Type I LastRead 0 FirstWrite -1}
		pt_new_Z_2 {Type O LastRead -1 FirstWrite 1}}
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
	fp2mul503_mont_49 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_57 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_66 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_38_186 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142 {
		b_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		add_ln201 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1143 {
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
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1144 {
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
	fp2mul503_mont_629_2 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
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
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1119 {
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
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1120 {
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
	fp2mul503_mont_50 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_58 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_67 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_38_185 {
		coeff {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	mp_mul_57 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_66 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_38_186 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136 {
		coeff {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1137 {
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
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1138 {
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
	fpsub503_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_1_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_1_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_1_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_1_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
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
	fp2sqr503_mont {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_1_4 {
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
	mul_3_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	mul_1_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
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
		carry_1363_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
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
		carry_1363_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
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
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191 {
		pts_Z_2 {Type IO LastRead 0 FirstWrite 1}
		zext_ln18_3 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type IO LastRead 0 FirstWrite 1}
		pts_X_2 {Type IO LastRead 0 FirstWrite 1}
		pts_X {Type IO LastRead 0 FirstWrite 1}
		pt_new_X {Type I LastRead 0 FirstWrite -1}
		pt_new_X_2 {Type I LastRead 0 FirstWrite -1}
		pt_new_Z {Type I LastRead 0 FirstWrite -1}
		pt_new_Z_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln370 {Type I LastRead 0 FirstWrite -1}
		npts_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "38802", "Max" : "38802"}
	, {"Name" : "Interval", "Min" : "38802", "Max" : "38802"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	coeff { ap_memory {  { coeff_address0 mem_address 1 6 }  { coeff_ce0 mem_ce 1 1 }  { coeff_q0 mem_dout 0 64 } } }
	npts_1 { ap_none {  { npts_1 in_data 0 32 } } }
	pts_Z_2 { ap_memory {  { pts_Z_2_address0 mem_address 1 6 }  { pts_Z_2_ce0 mem_ce 1 1 }  { pts_Z_2_we0 mem_we 1 1 }  { pts_Z_2_d0 mem_din 1 64 }  { pts_Z_2_q0 mem_dout 0 64 }  { pts_Z_2_address1 MemPortADDR2 1 6 }  { pts_Z_2_ce1 MemPortCE2 1 1 }  { pts_Z_2_q1 MemPortDOUT2 0 64 } } }
	pts_Z { ap_memory {  { pts_Z_address0 mem_address 1 6 }  { pts_Z_ce0 mem_ce 1 1 }  { pts_Z_we0 mem_we 1 1 }  { pts_Z_d0 mem_din 1 64 }  { pts_Z_q0 mem_dout 0 64 }  { pts_Z_address1 MemPortADDR2 1 6 }  { pts_Z_ce1 MemPortCE2 1 1 }  { pts_Z_q1 MemPortDOUT2 0 64 } } }
	pts_X_2 { ap_memory {  { pts_X_2_address0 mem_address 1 6 }  { pts_X_2_ce0 mem_ce 1 1 }  { pts_X_2_we0 mem_we 1 1 }  { pts_X_2_d0 mem_din 1 64 }  { pts_X_2_q0 mem_dout 0 64 }  { pts_X_2_address1 MemPortADDR2 1 6 }  { pts_X_2_ce1 MemPortCE2 1 1 }  { pts_X_2_q1 MemPortDOUT2 0 64 } } }
	pts_X { ap_memory {  { pts_X_address0 mem_address 1 6 }  { pts_X_ce0 mem_ce 1 1 }  { pts_X_we0 mem_we 1 1 }  { pts_X_d0 mem_din 1 64 }  { pts_X_q0 mem_dout 0 64 }  { pts_X_address1 MemPortADDR2 1 6 }  { pts_X_ce1 MemPortCE2 1 1 }  { pts_X_q1 MemPortDOUT2 0 64 } } }
}
