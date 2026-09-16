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
set cdfgNum 607
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "11", "13", "15", "17", "26", "35", "41", "198", "355", "534", "540", "546", "701", "856", "865", "874", "880", "886", "1065"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Outline_VITIS_LOOP_370_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "42176", "EstimateLatencyMax" : "42176",
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
					{"ID" : "41", "SubInstance" : "grp_fp2mul503_mont_36_fu_191", "Port" : "coeff", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "355", "SubInstance" : "grp_fp2mul503_mont_37_fu_216", "Port" : "coeff", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "npts_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1190_fu_156", "Port" : "pts_Z_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1065", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Port" : "pts_Z_2", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1189_fu_148", "Port" : "pts_Z", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1065", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Port" : "pts_Z", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "pts_X_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1188_fu_140", "Port" : "pts_X_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1065", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Port" : "pts_X_2", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1187_fu_132", "Port" : "pts_X", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "1065", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Port" : "pts_X", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_fpadd503_1_fu_164", "Port" : "p503x2_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "26", "SubInstance" : "grp_fpadd503_1_fu_173", "Port" : "p503x2_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "35", "SubInstance" : "grp_fpsub503_2_fu_182", "Port" : "p503x2_1", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "534", "SubInstance" : "grp_fpsub503_1_fu_226", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "540", "SubInstance" : "grp_fpsub503_1_fu_234", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "546", "SubInstance" : "grp_fp2sqr503_mont_2_1_fu_242", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "701", "SubInstance" : "grp_fp2sqr503_mont_fu_250", "Port" : "p503x2_1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "856", "SubInstance" : "grp_fpadd503_fu_258", "Port" : "p503x2_1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "865", "SubInstance" : "grp_fpadd503_fu_267", "Port" : "p503x2_1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "874", "SubInstance" : "grp_fpsub503_fu_276", "Port" : "p503x2_1", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "880", "SubInstance" : "grp_fpsub503_fu_284", "Port" : "p503x2_1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_fp2mul503_mont_36_fu_191", "Port" : "p503_1", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "198", "SubInstance" : "grp_fp2mul503_mont_623_2_fu_206", "Port" : "p503_1", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "355", "SubInstance" : "grp_fp2mul503_mont_37_fu_216", "Port" : "p503_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "886", "SubInstance" : "grp_fp2mul503_mont_5_fu_292", "Port" : "p503_1", "Inst_start_state" : "24", "Inst_end_state" : "25"}]}],
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
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1187_fu_132", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1187",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln14_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1187_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1188_fu_140", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1188",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln14_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1188_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1189_fu_148", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1189",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln14_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1189_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1190_fu_156", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1190",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln14_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1190_fu_156.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
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
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
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
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
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
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191", "Parent" : "0", "Child" : ["42", "43", "44", "45", "46", "47", "48", "49", "71", "73", "75", "77", "80", "82", "128", "150", "152"],
		"CDFG" : "fp2mul503_mont_36",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "947", "EstimateLatencyMax" : "947",
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
					{"ID" : "49", "SubInstance" : "grp_mp_mul_44_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "71", "SubInstance" : "grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1_fu_103", "Port" : "a_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_mp_mul_44_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "71", "SubInstance" : "grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1_fu_103", "Port" : "a_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_mp_mul_44_fu_88", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "73", "SubInstance" : "grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1145_fu_112", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_rdc_mont_fu_147", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_rdc_mont_1_fu_170", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_199_1_fu_131", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.t1_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.t2_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.tt1_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.tt1_1_U", "Parent" : "41"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.tt2_U", "Parent" : "41"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.tt2_1_U", "Parent" : "41"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.tt3_U", "Parent" : "41"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88", "Parent" : "41", "Child" : ["50"],
		"CDFG" : "mp_mul_44",
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
					{"ID" : "50", "SubInstance" : "grp_mul_50_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_mul_50_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_mul_50_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_mul_50_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30", "Parent" : "49", "Child" : ["51", "52", "53", "55", "58", "61", "63", "66"],
		"CDFG" : "mul_50",
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
					{"ID" : "55", "SubInstance" : "grp_mul_50_Pipeline_VITIS_LOOP_38_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_mul_50_Pipeline_VITIS_LOOP_38_183_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_mul_50_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "66", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_mul_50_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "66", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.acc_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.acc_1_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_63_1_fu_60", "Parent" : "50", "Child" : ["54"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_63_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_1_fu_68", "Parent" : "50", "Child" : ["56", "57"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U952", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_183_fu_75", "Parent" : "50", "Child" : ["59", "60"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_38_183",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_183_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U955", "Parent" : "58"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_183_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_85_2_fu_84", "Parent" : "50", "Child" : ["62"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_85_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92", "Parent" : "50", "Child" : ["64", "65"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.mul_64ns_64ns_128_1_1_U961", "Parent" : "63"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "50", "Child" : ["67", "69"],
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
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "66", "Child" : ["68"],
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
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "66", "Child" : ["70"],
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
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1_fu_103", "Parent" : "41", "Child" : ["72"],
		"CDFG" : "fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1145_fu_112", "Parent" : "41", "Child" : ["74"],
		"CDFG" : "fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1145",
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
			{"Name" : "add_ln195", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1145_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_172_1_fu_121", "Parent" : "41", "Child" : ["76"],
		"CDFG" : "fp2mul503_mont_36_Pipeline_VITIS_LOOP_172_1",
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
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_172_1_fu_121.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_199_1_fu_131", "Parent" : "41", "Child" : ["78", "79"],
		"CDFG" : "fp2mul503_mont_36_Pipeline_VITIS_LOOP_199_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_199_1_fu_131.p503_1_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_199_1_fu_131.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1146_fu_139", "Parent" : "41", "Child" : ["81"],
		"CDFG" : "fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1146",
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
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1146_fu_139.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147", "Parent" : "41", "Child" : ["83", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "103", "108", "113", "118", "123"],
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
					{"ID" : "83", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "82", "Child" : ["84"],
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
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_292", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_299", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_306", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_312", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_318", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_325", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_332", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_338", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_345", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_354", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_361", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.tmp_909_is_digit_lessthan_ct_fu_367", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.tmp_910_is_digit_lessthan_ct_fu_374", "Parent" : "82",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381", "Parent" : "82", "Child" : ["99", "100", "101", "102"],
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
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U266", "Parent" : "98"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U267", "Parent" : "98"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U268", "Parent" : "98"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U269", "Parent" : "98"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388", "Parent" : "82", "Child" : ["104", "105", "106", "107"],
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
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U266", "Parent" : "103"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U267", "Parent" : "103"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U268", "Parent" : "103"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U269", "Parent" : "103"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395", "Parent" : "82", "Child" : ["109", "110", "111", "112"],
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
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U266", "Parent" : "108"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U267", "Parent" : "108"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U268", "Parent" : "108"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U269", "Parent" : "108"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402", "Parent" : "82", "Child" : ["114", "115", "116", "117"],
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
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U266", "Parent" : "113"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U267", "Parent" : "113"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U268", "Parent" : "113"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U269", "Parent" : "113"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409", "Parent" : "82", "Child" : ["119", "120", "121", "122"],
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
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U266", "Parent" : "118"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U267", "Parent" : "118"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U268", "Parent" : "118"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U269", "Parent" : "118"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416", "Parent" : "82", "Child" : ["124", "125", "126", "127"],
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
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U266", "Parent" : "123"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U267", "Parent" : "123"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U268", "Parent" : "123"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U269", "Parent" : "123"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154", "Parent" : "41", "Child" : ["129"],
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
					{"ID" : "129", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20", "Parent" : "128", "Child" : ["130", "131", "132", "134", "137", "140", "142", "145"],
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
					{"ID" : "134", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "145", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "145", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.acc_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.acc_1_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "129", "Child" : ["133"],
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
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "129", "Child" : ["135", "136"],
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
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "134"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "129", "Child" : ["138", "139"],
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
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "137"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "129", "Child" : ["141"],
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
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "129", "Child" : ["143", "144"],
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
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "142"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "129", "Child" : ["146", "148"],
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
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "145", "Child" : ["147"],
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
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "145", "Child" : ["149"],
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
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_mp_mul_586_fu_154.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_172_1147_fu_162", "Parent" : "41", "Child" : ["151"],
		"CDFG" : "fp2mul503_mont_36_Pipeline_VITIS_LOOP_172_1147",
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
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_fp2mul503_mont_36_Pipeline_VITIS_LOOP_172_1147_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170", "Parent" : "41", "Child" : ["153", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "173", "178", "183", "188", "193"],
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
					{"ID" : "153", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "152", "Child" : ["154"],
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
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_283", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_290", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_297", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_303", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_309", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_316", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_323", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_329", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_336", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_345", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_352", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.tmp_693_is_digit_lessthan_ct_fu_358", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.tmp_694_is_digit_lessthan_ct_fu_365", "Parent" : "152",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372", "Parent" : "152", "Child" : ["169", "170", "171", "172"],
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
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "168"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "168"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "168"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "168"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379", "Parent" : "152", "Child" : ["174", "175", "176", "177"],
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
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "173"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "173"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "173"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "173"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386", "Parent" : "152", "Child" : ["179", "180", "181", "182"],
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
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "178"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "178"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "178"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "178"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393", "Parent" : "152", "Child" : ["184", "185", "186", "187"],
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
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "183"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "183"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "183"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "183"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400", "Parent" : "152", "Child" : ["189", "190", "191", "192"],
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
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "188"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "188"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "188"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407", "Parent" : "152", "Child" : ["194", "195", "196", "197"],
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
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "193"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "193"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "193"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_36_fu_191.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "193"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206", "Parent" : "0", "Child" : ["199", "200", "201", "202", "203", "204", "205", "206", "228", "250", "252", "254", "256", "259", "261", "307", "309"],
		"CDFG" : "fp2mul503_mont_623_2",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_mp_mul_586_fu_72", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "250", "SubInstance" : "grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1_fu_96", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "261", "SubInstance" : "grp_rdc_mont_127_fu_140", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_mp_mul_586_fu_84", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "250", "SubInstance" : "grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1_fu_96", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "309", "SubInstance" : "grp_rdc_mont_6_fu_155", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_mp_mul_586_fu_72", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "252", "SubInstance" : "grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1118_fu_105", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_mp_mul_586_fu_84", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "252", "SubInstance" : "grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1118_fu_105", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "256", "SubInstance" : "grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_199_1_fu_124", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.t1_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.t2_U", "Parent" : "198"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.tt1_U", "Parent" : "198"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.tt1_1_U", "Parent" : "198"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.tt2_U", "Parent" : "198"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.tt2_1_U", "Parent" : "198"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.tt3_U", "Parent" : "198"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72", "Parent" : "198", "Child" : ["207"],
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
					{"ID" : "207", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20", "Parent" : "206", "Child" : ["208", "209", "210", "212", "215", "218", "220", "223"],
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
					{"ID" : "212", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "223", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "223", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.acc_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.acc_1_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "207", "Child" : ["211"],
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
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "207", "Child" : ["213", "214"],
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
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "212"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "212"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "207", "Child" : ["216", "217"],
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
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "215"},
	{"ID" : "217", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "207", "Child" : ["219"],
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
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "207", "Child" : ["221", "222"],
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
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "220"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "207", "Child" : ["224", "226"],
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
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "223", "Child" : ["225"],
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
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "223", "Child" : ["227"],
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
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_72.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84", "Parent" : "198", "Child" : ["229"],
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
					{"ID" : "229", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20", "Parent" : "228", "Child" : ["230", "231", "232", "234", "237", "240", "242", "245"],
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
					{"ID" : "234", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "245", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "245", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.acc_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.acc_1_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "229", "Child" : ["233"],
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
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "229", "Child" : ["235", "236"],
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
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "234"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "234"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "229", "Child" : ["238", "239"],
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
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "237"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "229", "Child" : ["241"],
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
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "229", "Child" : ["243", "244"],
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
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "242"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "229", "Child" : ["246", "248"],
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
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "245", "Child" : ["247"],
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
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "245", "Child" : ["249"],
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
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1_fu_96", "Parent" : "198", "Child" : ["251"],
		"CDFG" : "fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1118_fu_105", "Parent" : "198", "Child" : ["253"],
		"CDFG" : "fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1118",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1118_fu_105.flow_control_loop_pipe_sequential_init_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_172_1_fu_114", "Parent" : "198", "Child" : ["255"],
		"CDFG" : "fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_172_1",
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
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_172_1_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_199_1_fu_124", "Parent" : "198", "Child" : ["257", "258"],
		"CDFG" : "fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_199_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_199_1_fu_124.p503_1_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_199_1_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1119_fu_132", "Parent" : "198", "Child" : ["260"],
		"CDFG" : "fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1119",
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
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1119_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140", "Parent" : "198", "Child" : ["262", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "282", "287", "292", "297", "302"],
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
					{"ID" : "262", "SubInstance" : "grp_rdc_mont_127_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_rdc_mont_127_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "261", "Child" : ["263"],
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
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_rdc_mont_127_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_292", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_299", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_306", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_312", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_318", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_325", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_332", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_338", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_345", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_354", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_is_digit_lessthan_ct_fu_361", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.tmp_907_is_digit_lessthan_ct_fu_367", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.tmp_908_is_digit_lessthan_ct_fu_374", "Parent" : "261",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_381", "Parent" : "261", "Child" : ["278", "279", "280", "281"],
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
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U266", "Parent" : "277"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U267", "Parent" : "277"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U268", "Parent" : "277"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U269", "Parent" : "277"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_388", "Parent" : "261", "Child" : ["283", "284", "285", "286"],
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
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U266", "Parent" : "282"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U267", "Parent" : "282"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U268", "Parent" : "282"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U269", "Parent" : "282"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_395", "Parent" : "261", "Child" : ["288", "289", "290", "291"],
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
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U266", "Parent" : "287"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U267", "Parent" : "287"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U268", "Parent" : "287"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U269", "Parent" : "287"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_402", "Parent" : "261", "Child" : ["293", "294", "295", "296"],
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
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U266", "Parent" : "292"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U267", "Parent" : "292"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U268", "Parent" : "292"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U269", "Parent" : "292"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_409", "Parent" : "261", "Child" : ["298", "299", "300", "301"],
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
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U266", "Parent" : "297"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U267", "Parent" : "297"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U268", "Parent" : "297"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U269", "Parent" : "297"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_416", "Parent" : "261", "Child" : ["303", "304", "305", "306"],
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
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U266", "Parent" : "302"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U267", "Parent" : "302"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U268", "Parent" : "302"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_127_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U269", "Parent" : "302"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_172_1120_fu_147", "Parent" : "198", "Child" : ["308"],
		"CDFG" : "fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_172_1120",
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
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_172_1120_fu_147.flow_control_loop_pipe_sequential_init_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155", "Parent" : "198", "Child" : ["310", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "330", "335", "340", "345", "350"],
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
					{"ID" : "310", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "309", "Child" : ["311"],
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
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_283", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_290", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_297", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_303", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_309", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_316", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_323", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_329", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_336", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_345", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_is_digit_lessthan_ct_fu_352", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "309",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_372", "Parent" : "309", "Child" : ["326", "327", "328", "329"],
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
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "325"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "325"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "325"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "325"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_379", "Parent" : "309", "Child" : ["331", "332", "333", "334"],
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
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "330"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "330"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "330"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "330"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_386", "Parent" : "309", "Child" : ["336", "337", "338", "339"],
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
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "335"},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "335"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "335"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "335"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_393", "Parent" : "309", "Child" : ["341", "342", "343", "344"],
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
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "340"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "340"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "340"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "340"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_400", "Parent" : "309", "Child" : ["346", "347", "348", "349"],
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
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "345"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "345"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "345"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "345"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_407", "Parent" : "309", "Child" : ["351", "352", "353", "354"],
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
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "350"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "350"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "350"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_623_2_fu_206.grp_rdc_mont_6_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "350"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216", "Parent" : "0", "Child" : ["356", "357", "358", "359", "360", "361", "362", "363", "385", "407", "409", "411", "413", "416", "418", "464", "486", "488"],
		"CDFG" : "fp2mul503_mont_37",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "991", "EstimateLatencyMax" : "991",
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
					{"ID" : "363", "SubInstance" : "grp_mp_mul_45_fu_76", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "407", "SubInstance" : "grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "418", "SubInstance" : "grp_rdc_mont_127_fu_142", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "385", "SubInstance" : "grp_mp_mul_44_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "407", "SubInstance" : "grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "488", "SubInstance" : "grp_rdc_mont_6_fu_165", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "363", "SubInstance" : "grp_mp_mul_45_fu_76", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "385", "SubInstance" : "grp_mp_mul_44_fu_88", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "409", "SubInstance" : "grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1142_fu_109", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "413", "SubInstance" : "grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_199_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.t1_U", "Parent" : "355"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.t2_U", "Parent" : "355"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.tt1_U", "Parent" : "355"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.tt1_1_U", "Parent" : "355"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.tt2_U", "Parent" : "355"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.tt2_1_U", "Parent" : "355"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.tt3_U", "Parent" : "355"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76", "Parent" : "355", "Child" : ["364"],
		"CDFG" : "mp_mul_45",
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
					{"ID" : "364", "SubInstance" : "grp_mul_51_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_51_fu_20", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_51_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_51_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20", "Parent" : "363", "Child" : ["365", "366", "367", "369", "372", "375", "377", "380"],
		"CDFG" : "mul_51",
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
					{"ID" : "369", "SubInstance" : "grp_mul_51_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_mul_51_Pipeline_VITIS_LOOP_38_182_fu_65", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_mul_51_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "380", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_mul_51_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "380", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.acc_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.acc_1_U", "Parent" : "364"},
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "364", "Child" : ["368"],
		"CDFG" : "mul_51_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "364", "Child" : ["370", "371"],
		"CDFG" : "mul_51_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U1047", "Parent" : "369"},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "369"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_38_182_fu_65", "Parent" : "364", "Child" : ["373", "374"],
		"CDFG" : "mul_51_Pipeline_VITIS_LOOP_38_182",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_38_182_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U1050", "Parent" : "372"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_38_182_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "364", "Child" : ["376"],
		"CDFG" : "mul_51_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "364", "Child" : ["378", "379"],
		"CDFG" : "mul_51_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U1055", "Parent" : "377"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_mul_51_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "377"},
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "364", "Child" : ["381", "383"],
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
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "380", "Child" : ["382"],
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
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "380", "Child" : ["384"],
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
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_45_fu_76.grp_mul_51_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88", "Parent" : "355", "Child" : ["386"],
		"CDFG" : "mp_mul_44",
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
					{"ID" : "386", "SubInstance" : "grp_mul_50_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_mul_50_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_mul_50_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_mul_50_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30", "Parent" : "385", "Child" : ["387", "388", "389", "391", "394", "397", "399", "402"],
		"CDFG" : "mul_50",
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
					{"ID" : "391", "SubInstance" : "grp_mul_50_Pipeline_VITIS_LOOP_38_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "394", "SubInstance" : "grp_mul_50_Pipeline_VITIS_LOOP_38_183_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "389", "SubInstance" : "grp_mul_50_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "402", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "389", "SubInstance" : "grp_mul_50_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "402", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.acc_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.acc_1_U", "Parent" : "386"},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_63_1_fu_60", "Parent" : "386", "Child" : ["390"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_63_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "389"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_1_fu_68", "Parent" : "386", "Child" : ["392", "393"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U952", "Parent" : "391"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "391"},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_183_fu_75", "Parent" : "386", "Child" : ["395", "396"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_38_183",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_183_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U955", "Parent" : "394"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_38_183_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "394"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_85_2_fu_84", "Parent" : "386", "Child" : ["398"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_85_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "397"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92", "Parent" : "386", "Child" : ["400", "401"],
		"CDFG" : "mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.mul_64ns_64ns_128_1_1_U961", "Parent" : "399"},
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "399"},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "386", "Child" : ["403", "405"],
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
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "402", "Child" : ["404"],
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
	{"ID" : "404", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "403"},
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "402", "Child" : ["406"],
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
	{"ID" : "406", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_44_fu_88.grp_mul_50_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "405"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1_fu_100", "Parent" : "355", "Child" : ["408"],
		"CDFG" : "fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1142_fu_109", "Parent" : "355", "Child" : ["410"],
		"CDFG" : "fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1142",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1142_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_172_1_fu_116", "Parent" : "355", "Child" : ["412"],
		"CDFG" : "fp2mul503_mont_37_Pipeline_VITIS_LOOP_172_1",
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
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_172_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_199_1_fu_126", "Parent" : "355", "Child" : ["414", "415"],
		"CDFG" : "fp2mul503_mont_37_Pipeline_VITIS_LOOP_199_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_199_1_fu_126.p503_1_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_199_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "413"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1143_fu_134", "Parent" : "355", "Child" : ["417"],
		"CDFG" : "fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1143",
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
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1143_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142", "Parent" : "355", "Child" : ["419", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "439", "444", "449", "454", "459"],
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
					{"ID" : "419", "SubInstance" : "grp_rdc_mont_127_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_rdc_mont_127_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "418", "Child" : ["420"],
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
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_rdc_mont_127_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_292", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_299", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_306", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_312", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_318", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_325", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_332", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_338", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_345", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_354", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_is_digit_lessthan_ct_fu_361", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.tmp_907_is_digit_lessthan_ct_fu_367", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.tmp_908_is_digit_lessthan_ct_fu_374", "Parent" : "418",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_381", "Parent" : "418", "Child" : ["435", "436", "437", "438"],
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
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U266", "Parent" : "434"},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U267", "Parent" : "434"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U268", "Parent" : "434"},
	{"ID" : "438", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U269", "Parent" : "434"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_388", "Parent" : "418", "Child" : ["440", "441", "442", "443"],
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
	{"ID" : "440", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U266", "Parent" : "439"},
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U267", "Parent" : "439"},
	{"ID" : "442", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U268", "Parent" : "439"},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U269", "Parent" : "439"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_395", "Parent" : "418", "Child" : ["445", "446", "447", "448"],
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
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U266", "Parent" : "444"},
	{"ID" : "446", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U267", "Parent" : "444"},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U268", "Parent" : "444"},
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U269", "Parent" : "444"},
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_402", "Parent" : "418", "Child" : ["450", "451", "452", "453"],
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
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U266", "Parent" : "449"},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U267", "Parent" : "449"},
	{"ID" : "452", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U268", "Parent" : "449"},
	{"ID" : "453", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U269", "Parent" : "449"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_409", "Parent" : "418", "Child" : ["455", "456", "457", "458"],
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
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U266", "Parent" : "454"},
	{"ID" : "456", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U267", "Parent" : "454"},
	{"ID" : "457", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U268", "Parent" : "454"},
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U269", "Parent" : "454"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_416", "Parent" : "418", "Child" : ["460", "461", "462", "463"],
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
	{"ID" : "460", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U266", "Parent" : "459"},
	{"ID" : "461", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U267", "Parent" : "459"},
	{"ID" : "462", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U268", "Parent" : "459"},
	{"ID" : "463", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_127_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U269", "Parent" : "459"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149", "Parent" : "355", "Child" : ["465"],
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
					{"ID" : "465", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "465", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "465", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "465", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20", "Parent" : "464", "Child" : ["466", "467", "468", "470", "473", "476", "478", "481"],
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
					{"ID" : "470", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "473", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "468", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "481", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "468", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "481", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.acc_U", "Parent" : "465"},
	{"ID" : "467", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.acc_1_U", "Parent" : "465"},
	{"ID" : "468", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "465", "Child" : ["469"],
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
	{"ID" : "469", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "468"},
	{"ID" : "470", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "465", "Child" : ["471", "472"],
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
	{"ID" : "471", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "470"},
	{"ID" : "472", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "470"},
	{"ID" : "473", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "465", "Child" : ["474", "475"],
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
	{"ID" : "474", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "473"},
	{"ID" : "475", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "473"},
	{"ID" : "476", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "465", "Child" : ["477"],
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
	{"ID" : "477", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "476"},
	{"ID" : "478", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "465", "Child" : ["479", "480"],
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
	{"ID" : "479", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "478"},
	{"ID" : "480", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "478"},
	{"ID" : "481", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "465", "Child" : ["482", "484"],
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
	{"ID" : "482", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "481", "Child" : ["483"],
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
	{"ID" : "483", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "482"},
	{"ID" : "484", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "481", "Child" : ["485"],
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
	{"ID" : "485", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "484"},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_172_1144_fu_157", "Parent" : "355", "Child" : ["487"],
		"CDFG" : "fp2mul503_mont_37_Pipeline_VITIS_LOOP_172_1144",
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
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_fp2mul503_mont_37_Pipeline_VITIS_LOOP_172_1144_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "486"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165", "Parent" : "355", "Child" : ["489", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "509", "514", "519", "524", "529"],
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
					{"ID" : "489", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "488", "Child" : ["490"],
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
	{"ID" : "490", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "489"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_283", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_290", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_297", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_303", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_309", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_316", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_323", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_329", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_336", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_345", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_is_digit_lessthan_ct_fu_352", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "488",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_372", "Parent" : "488", "Child" : ["505", "506", "507", "508"],
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
	{"ID" : "505", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "504"},
	{"ID" : "506", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "504"},
	{"ID" : "507", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "504"},
	{"ID" : "508", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "504"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_379", "Parent" : "488", "Child" : ["510", "511", "512", "513"],
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
	{"ID" : "510", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "509"},
	{"ID" : "511", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "509"},
	{"ID" : "512", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "509"},
	{"ID" : "513", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "509"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_386", "Parent" : "488", "Child" : ["515", "516", "517", "518"],
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
	{"ID" : "515", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "514"},
	{"ID" : "516", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "514"},
	{"ID" : "517", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "514"},
	{"ID" : "518", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "514"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_393", "Parent" : "488", "Child" : ["520", "521", "522", "523"],
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
	{"ID" : "520", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "519"},
	{"ID" : "521", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "519"},
	{"ID" : "522", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "519"},
	{"ID" : "523", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "519"},
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_400", "Parent" : "488", "Child" : ["525", "526", "527", "528"],
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
	{"ID" : "525", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "524"},
	{"ID" : "526", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "524"},
	{"ID" : "527", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "524"},
	{"ID" : "528", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "524"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_407", "Parent" : "488", "Child" : ["530", "531", "532", "533"],
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
	{"ID" : "530", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "529"},
	{"ID" : "531", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "529"},
	{"ID" : "532", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "529"},
	{"ID" : "533", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_37_fu_216.grp_rdc_mont_6_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "529"},
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
	{"ID" : "546", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242", "Parent" : "0", "Child" : ["547", "548", "549", "550", "552", "554", "557", "559", "630"],
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
					{"ID" : "550", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "552", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "557", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1102_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "559", "SubInstance" : "grp_fpmul503_mont_6_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "550", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "552", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "630", "SubInstance" : "grp_fpmul503_mont_3_3_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "554", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.t1_U", "Parent" : "546"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.t2_U", "Parent" : "546"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.t3_U", "Parent" : "546"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1_fu_46", "Parent" : "546", "Child" : ["551"],
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
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "550"},
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
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1102_fu_74", "Parent" : "546", "Child" : ["558"],
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
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1102_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "557"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81", "Parent" : "546", "Child" : ["560", "561", "562", "584"],
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
					{"ID" : "562", "SubInstance" : "grp_mp_mul_586_fu_86", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "562", "SubInstance" : "grp_mp_mul_586_fu_86", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "584", "SubInstance" : "grp_rdc_mont_6_fu_96", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.temp_U", "Parent" : "559"},
	{"ID" : "561", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.temp_1_U", "Parent" : "559"},
	{"ID" : "562", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86", "Parent" : "559", "Child" : ["563"],
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
					{"ID" : "563", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "563", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "563", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "563", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "563", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20", "Parent" : "562", "Child" : ["564", "565", "566", "568", "571", "574", "576", "579"],
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
					{"ID" : "568", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "571", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "566", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "579", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "566", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "579", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "564", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.acc_U", "Parent" : "563"},
	{"ID" : "565", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.acc_1_U", "Parent" : "563"},
	{"ID" : "566", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "563", "Child" : ["567"],
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
	{"ID" : "567", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "566"},
	{"ID" : "568", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "563", "Child" : ["569", "570"],
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
	{"ID" : "569", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "568"},
	{"ID" : "570", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "568"},
	{"ID" : "571", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "563", "Child" : ["572", "573"],
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
	{"ID" : "572", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "571"},
	{"ID" : "573", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "571"},
	{"ID" : "574", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "563", "Child" : ["575"],
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
	{"ID" : "575", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "574"},
	{"ID" : "576", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "563", "Child" : ["577", "578"],
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
	{"ID" : "577", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "576"},
	{"ID" : "578", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "576"},
	{"ID" : "579", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "563", "Child" : ["580", "582"],
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
					{"ID" : "582", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "582", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "582", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "582", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "580", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "579", "Child" : ["581"],
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
	{"ID" : "581", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "580"},
	{"ID" : "582", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "579", "Child" : ["583"],
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
	{"ID" : "583", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "582"},
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96", "Parent" : "559", "Child" : ["585", "587", "588", "589", "590", "591", "592", "593", "594", "595", "596", "597", "598", "599", "600", "605", "610", "615", "620", "625"],
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
					{"ID" : "585", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "585", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "584", "Child" : ["586"],
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
	{"ID" : "586", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "585"},
	{"ID" : "587", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_283", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "588", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_290", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "589", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_297", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "590", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_303", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "591", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_309", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "592", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_316", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "593", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_323", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "594", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_329", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "595", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_336", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "596", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_345", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "597", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_352", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "598", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "599", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "584",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "600", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372", "Parent" : "584", "Child" : ["601", "602", "603", "604"],
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
	{"ID" : "601", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "600"},
	{"ID" : "602", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "600"},
	{"ID" : "603", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "600"},
	{"ID" : "604", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "600"},
	{"ID" : "605", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379", "Parent" : "584", "Child" : ["606", "607", "608", "609"],
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
	{"ID" : "606", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "605"},
	{"ID" : "607", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "605"},
	{"ID" : "608", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "605"},
	{"ID" : "609", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "605"},
	{"ID" : "610", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386", "Parent" : "584", "Child" : ["611", "612", "613", "614"],
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
	{"ID" : "611", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "610"},
	{"ID" : "612", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "610"},
	{"ID" : "613", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "610"},
	{"ID" : "614", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "610"},
	{"ID" : "615", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393", "Parent" : "584", "Child" : ["616", "617", "618", "619"],
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
	{"ID" : "616", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "615"},
	{"ID" : "617", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "615"},
	{"ID" : "618", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "615"},
	{"ID" : "619", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "615"},
	{"ID" : "620", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400", "Parent" : "584", "Child" : ["621", "622", "623", "624"],
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
	{"ID" : "621", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "620"},
	{"ID" : "622", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "620"},
	{"ID" : "623", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "620"},
	{"ID" : "624", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "620"},
	{"ID" : "625", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407", "Parent" : "584", "Child" : ["626", "627", "628", "629"],
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
	{"ID" : "626", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "625"},
	{"ID" : "627", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "625"},
	{"ID" : "628", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "625"},
	{"ID" : "629", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "625"},
	{"ID" : "630", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89", "Parent" : "546", "Child" : ["631", "632", "633", "655"],
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
					{"ID" : "633", "SubInstance" : "grp_mp_mul_586_fu_84", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "633", "SubInstance" : "grp_mp_mul_586_fu_84", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "655", "SubInstance" : "grp_rdc_mont_6_fu_94", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "631", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.temp_U", "Parent" : "630"},
	{"ID" : "632", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.temp_1_U", "Parent" : "630"},
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84", "Parent" : "630", "Child" : ["634"],
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
					{"ID" : "634", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "634", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "634", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "634", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "634", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20", "Parent" : "633", "Child" : ["635", "636", "637", "639", "642", "645", "647", "650"],
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
					{"ID" : "639", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "642", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "637", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "650", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "637", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "650", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "635", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.acc_U", "Parent" : "634"},
	{"ID" : "636", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.acc_1_U", "Parent" : "634"},
	{"ID" : "637", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "634", "Child" : ["638"],
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
	{"ID" : "638", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "637"},
	{"ID" : "639", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "634", "Child" : ["640", "641"],
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
	{"ID" : "640", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "639"},
	{"ID" : "641", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "639"},
	{"ID" : "642", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "634", "Child" : ["643", "644"],
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
	{"ID" : "643", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "642"},
	{"ID" : "644", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "642"},
	{"ID" : "645", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "634", "Child" : ["646"],
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
	{"ID" : "646", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "645"},
	{"ID" : "647", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "634", "Child" : ["648", "649"],
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
	{"ID" : "648", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "647"},
	{"ID" : "649", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "647"},
	{"ID" : "650", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "634", "Child" : ["651", "653"],
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
					{"ID" : "653", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "653", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "651", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "653", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "651", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "653", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "651", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "650", "Child" : ["652"],
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
	{"ID" : "652", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "651"},
	{"ID" : "653", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "650", "Child" : ["654"],
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
	{"ID" : "654", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "653"},
	{"ID" : "655", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94", "Parent" : "630", "Child" : ["656", "658", "659", "660", "661", "662", "663", "664", "665", "666", "667", "668", "669", "670", "671", "676", "681", "686", "691", "696"],
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
					{"ID" : "656", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "656", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "655", "Child" : ["657"],
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
	{"ID" : "657", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "656"},
	{"ID" : "658", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_283", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "659", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_290", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "660", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_297", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "661", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_303", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "662", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_309", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "663", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_316", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "664", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_323", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "665", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_329", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "666", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_336", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "667", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_345", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "668", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_352", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "669", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "670", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "655",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "671", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372", "Parent" : "655", "Child" : ["672", "673", "674", "675"],
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
	{"ID" : "672", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "671"},
	{"ID" : "673", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "671"},
	{"ID" : "674", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "671"},
	{"ID" : "675", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "671"},
	{"ID" : "676", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379", "Parent" : "655", "Child" : ["677", "678", "679", "680"],
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
	{"ID" : "677", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "676"},
	{"ID" : "678", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "676"},
	{"ID" : "679", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "676"},
	{"ID" : "680", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "676"},
	{"ID" : "681", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386", "Parent" : "655", "Child" : ["682", "683", "684", "685"],
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
	{"ID" : "682", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "681"},
	{"ID" : "683", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "681"},
	{"ID" : "684", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "681"},
	{"ID" : "685", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "681"},
	{"ID" : "686", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393", "Parent" : "655", "Child" : ["687", "688", "689", "690"],
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
	{"ID" : "687", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "686"},
	{"ID" : "688", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "686"},
	{"ID" : "689", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "686"},
	{"ID" : "690", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "686"},
	{"ID" : "691", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400", "Parent" : "655", "Child" : ["692", "693", "694", "695"],
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
	{"ID" : "692", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "691"},
	{"ID" : "693", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "691"},
	{"ID" : "694", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "691"},
	{"ID" : "695", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "691"},
	{"ID" : "696", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407", "Parent" : "655", "Child" : ["697", "698", "699", "700"],
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
	{"ID" : "697", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "696"},
	{"ID" : "698", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "696"},
	{"ID" : "699", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "696"},
	{"ID" : "700", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_242.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "696"},
	{"ID" : "701", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250", "Parent" : "0", "Child" : ["702", "703", "704", "705", "707", "709", "712", "714", "785"],
		"CDFG" : "fp2sqr503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "403", "EstimateLatencyMax" : "403",
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
					{"ID" : "705", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "707", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "712", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1105_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "714", "SubInstance" : "grp_fpmul503_mont_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "705", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "707", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "785", "SubInstance" : "grp_fpmul503_mont_1_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "709", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "702", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.t1_U", "Parent" : "701"},
	{"ID" : "703", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.t2_U", "Parent" : "701"},
	{"ID" : "704", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.t3_U", "Parent" : "701"},
	{"ID" : "705", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1_fu_46", "Parent" : "701", "Child" : ["706"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "706", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "705"},
	{"ID" : "707", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "701", "Child" : ["708"],
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
	{"ID" : "708", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "707"},
	{"ID" : "709", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "701", "Child" : ["710", "711"],
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
	{"ID" : "710", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "709"},
	{"ID" : "711", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "709"},
	{"ID" : "712", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1105_fu_74", "Parent" : "701", "Child" : ["713"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1105",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1105_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "712"},
	{"ID" : "714", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81", "Parent" : "701", "Child" : ["715", "716", "717", "739"],
		"CDFG" : "fpmul503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "358", "EstimateLatencyMax" : "358",
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
					{"ID" : "717", "SubInstance" : "grp_mp_mul_586_fu_86", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "717", "SubInstance" : "grp_mp_mul_586_fu_86", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "739", "SubInstance" : "grp_rdc_mont_1_fu_96", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "715", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.temp_U", "Parent" : "714"},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.temp_1_U", "Parent" : "714"},
	{"ID" : "717", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86", "Parent" : "714", "Child" : ["718"],
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
					{"ID" : "718", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "718", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "718", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "718", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "718", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20", "Parent" : "717", "Child" : ["719", "720", "721", "723", "726", "729", "731", "734"],
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
					{"ID" : "723", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "726", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "721", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "734", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "721", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "734", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "719", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.acc_U", "Parent" : "718"},
	{"ID" : "720", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.acc_1_U", "Parent" : "718"},
	{"ID" : "721", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "718", "Child" : ["722"],
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
	{"ID" : "722", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "721"},
	{"ID" : "723", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "718", "Child" : ["724", "725"],
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
	{"ID" : "724", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "723"},
	{"ID" : "725", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "723"},
	{"ID" : "726", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "718", "Child" : ["727", "728"],
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
	{"ID" : "727", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "726"},
	{"ID" : "728", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "726"},
	{"ID" : "729", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "718", "Child" : ["730"],
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
	{"ID" : "730", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "729"},
	{"ID" : "731", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "718", "Child" : ["732", "733"],
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
	{"ID" : "732", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "731"},
	{"ID" : "733", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "731"},
	{"ID" : "734", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "718", "Child" : ["735", "737"],
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
					{"ID" : "737", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "737", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "735", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "737", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "735", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "737", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "735", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "734", "Child" : ["736"],
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
	{"ID" : "736", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "735"},
	{"ID" : "737", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "734", "Child" : ["738"],
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
	{"ID" : "738", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "737"},
	{"ID" : "739", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96", "Parent" : "714", "Child" : ["740", "742", "743", "744", "745", "746", "747", "748", "749", "750", "751", "752", "753", "754", "755", "760", "765", "770", "775", "780"],
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
					{"ID" : "740", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "740", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "739", "Child" : ["741"],
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
	{"ID" : "741", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "740"},
	{"ID" : "742", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_283", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "743", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_290", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "744", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_297", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "745", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_303", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "746", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_309", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "747", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_316", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "748", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_323", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "749", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_329", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "750", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_336", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "751", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_345", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "752", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_is_digit_lessthan_ct_fu_352", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "753", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.tmp_693_is_digit_lessthan_ct_fu_358", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "754", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.tmp_694_is_digit_lessthan_ct_fu_365", "Parent" : "739",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "755", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_372", "Parent" : "739", "Child" : ["756", "757", "758", "759"],
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
	{"ID" : "756", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "755"},
	{"ID" : "757", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "755"},
	{"ID" : "758", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "755"},
	{"ID" : "759", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "755"},
	{"ID" : "760", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_379", "Parent" : "739", "Child" : ["761", "762", "763", "764"],
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
	{"ID" : "761", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "760"},
	{"ID" : "762", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "760"},
	{"ID" : "763", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "760"},
	{"ID" : "764", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "760"},
	{"ID" : "765", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_386", "Parent" : "739", "Child" : ["766", "767", "768", "769"],
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
	{"ID" : "766", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "765"},
	{"ID" : "767", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "765"},
	{"ID" : "768", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "765"},
	{"ID" : "769", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "765"},
	{"ID" : "770", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_393", "Parent" : "739", "Child" : ["771", "772", "773", "774"],
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
	{"ID" : "771", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "770"},
	{"ID" : "772", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "770"},
	{"ID" : "773", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "770"},
	{"ID" : "774", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "770"},
	{"ID" : "775", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_400", "Parent" : "739", "Child" : ["776", "777", "778", "779"],
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
	{"ID" : "776", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "775"},
	{"ID" : "777", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "775"},
	{"ID" : "778", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "775"},
	{"ID" : "779", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "775"},
	{"ID" : "780", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_407", "Parent" : "739", "Child" : ["781", "782", "783", "784"],
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
	{"ID" : "781", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "780"},
	{"ID" : "782", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "780"},
	{"ID" : "783", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "780"},
	{"ID" : "784", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_fu_81.grp_rdc_mont_1_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "780"},
	{"ID" : "785", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89", "Parent" : "701", "Child" : ["786", "787", "788", "810"],
		"CDFG" : "fpmul503_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "358", "EstimateLatencyMax" : "358",
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
					{"ID" : "788", "SubInstance" : "grp_mp_mul_1_fu_84", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "788", "SubInstance" : "grp_mp_mul_1_fu_84", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "810", "SubInstance" : "grp_rdc_mont_1_fu_94", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "786", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.temp_U", "Parent" : "785"},
	{"ID" : "787", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.temp_1_U", "Parent" : "785"},
	{"ID" : "788", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84", "Parent" : "785", "Child" : ["789"],
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
					{"ID" : "789", "SubInstance" : "grp_mul_1_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "789", "SubInstance" : "grp_mul_1_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "789", "SubInstance" : "grp_mul_1_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "789", "SubInstance" : "grp_mul_1_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "789", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20", "Parent" : "788", "Child" : ["790", "791", "792", "794", "797", "800", "802", "805"],
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
					{"ID" : "794", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "797", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "792", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "805", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "792", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "805", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "790", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.acc_U", "Parent" : "789"},
	{"ID" : "791", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.acc_1_U", "Parent" : "789"},
	{"ID" : "792", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "789", "Child" : ["793"],
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
	{"ID" : "793", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "792"},
	{"ID" : "794", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "789", "Child" : ["795", "796"],
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
	{"ID" : "795", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U333", "Parent" : "794"},
	{"ID" : "796", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "794"},
	{"ID" : "797", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65", "Parent" : "789", "Child" : ["798", "799"],
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
	{"ID" : "798", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U336", "Parent" : "797"},
	{"ID" : "799", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "797"},
	{"ID" : "800", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "789", "Child" : ["801"],
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
	{"ID" : "801", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "800"},
	{"ID" : "802", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "789", "Child" : ["803", "804"],
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
	{"ID" : "803", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U341", "Parent" : "802"},
	{"ID" : "804", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "802"},
	{"ID" : "805", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "789", "Child" : ["806", "808"],
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
					{"ID" : "808", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "808", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "806", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "808", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "806", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "808", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "806", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "805", "Child" : ["807"],
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
	{"ID" : "807", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "806"},
	{"ID" : "808", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "805", "Child" : ["809"],
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
	{"ID" : "809", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_mp_mul_1_fu_84.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "808"},
	{"ID" : "810", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94", "Parent" : "785", "Child" : ["811", "813", "814", "815", "816", "817", "818", "819", "820", "821", "822", "823", "824", "825", "826", "831", "836", "841", "846", "851"],
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
					{"ID" : "811", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "811", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "810", "Child" : ["812"],
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
	{"ID" : "812", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "811"},
	{"ID" : "813", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_283", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "814", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_290", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "815", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_297", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "816", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_303", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "817", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_309", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "818", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_316", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "819", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_323", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "820", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_329", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "821", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_336", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "822", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_345", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "823", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_is_digit_lessthan_ct_fu_352", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "824", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.tmp_693_is_digit_lessthan_ct_fu_358", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "825", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.tmp_694_is_digit_lessthan_ct_fu_365", "Parent" : "810",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "826", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_372", "Parent" : "810", "Child" : ["827", "828", "829", "830"],
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
	{"ID" : "827", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "826"},
	{"ID" : "828", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "826"},
	{"ID" : "829", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "826"},
	{"ID" : "830", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "826"},
	{"ID" : "831", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_379", "Parent" : "810", "Child" : ["832", "833", "834", "835"],
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
	{"ID" : "832", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "831"},
	{"ID" : "833", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "831"},
	{"ID" : "834", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "831"},
	{"ID" : "835", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "831"},
	{"ID" : "836", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_386", "Parent" : "810", "Child" : ["837", "838", "839", "840"],
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
	{"ID" : "837", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "836"},
	{"ID" : "838", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "836"},
	{"ID" : "839", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "836"},
	{"ID" : "840", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "836"},
	{"ID" : "841", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_393", "Parent" : "810", "Child" : ["842", "843", "844", "845"],
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
	{"ID" : "842", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "841"},
	{"ID" : "843", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "841"},
	{"ID" : "844", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "841"},
	{"ID" : "845", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "841"},
	{"ID" : "846", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_400", "Parent" : "810", "Child" : ["847", "848", "849", "850"],
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
	{"ID" : "847", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "846"},
	{"ID" : "848", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "846"},
	{"ID" : "849", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "846"},
	{"ID" : "850", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "846"},
	{"ID" : "851", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_407", "Parent" : "810", "Child" : ["852", "853", "854", "855"],
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
	{"ID" : "852", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "851"},
	{"ID" : "853", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "851"},
	{"ID" : "854", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "851"},
	{"ID" : "855", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_250.grp_fpmul503_mont_1_fu_89.grp_rdc_mont_1_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "851"},
	{"ID" : "856", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258", "Parent" : "0", "Child" : ["857", "859", "862"],
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
					{"ID" : "857", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "857", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "857", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "859", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "862", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "859", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "862", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "857", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "856", "Child" : ["858"],
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
	{"ID" : "858", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "857"},
	{"ID" : "859", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "856", "Child" : ["860", "861"],
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
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "860", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "859"},
	{"ID" : "861", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "859"},
	{"ID" : "862", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "856", "Child" : ["863", "864"],
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
	{"ID" : "863", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "862"},
	{"ID" : "864", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_258.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "862"},
	{"ID" : "865", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267", "Parent" : "0", "Child" : ["866", "868", "871"],
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
					{"ID" : "866", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "866", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "866", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "868", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "871", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "868", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "871", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "866", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "865", "Child" : ["867"],
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
	{"ID" : "867", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "866"},
	{"ID" : "868", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "865", "Child" : ["869", "870"],
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
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "869", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "868"},
	{"ID" : "870", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "868"},
	{"ID" : "871", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "865", "Child" : ["872", "873"],
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
	{"ID" : "872", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "871"},
	{"ID" : "873", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_267.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "871"},
	{"ID" : "874", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276", "Parent" : "0", "Child" : ["875", "877"],
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
					{"ID" : "875", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "875", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "877", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "877", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "875", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "874", "Child" : ["876"],
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
	{"ID" : "876", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "875"},
	{"ID" : "877", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "874", "Child" : ["878", "879"],
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
	{"ID" : "878", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "877"},
	{"ID" : "879", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_276.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "877"},
	{"ID" : "880", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284", "Parent" : "0", "Child" : ["881", "883"],
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
					{"ID" : "881", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "881", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "883", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "883", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "881", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "880", "Child" : ["882"],
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
	{"ID" : "882", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "881"},
	{"ID" : "883", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "880", "Child" : ["884", "885"],
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
	{"ID" : "884", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "883"},
	{"ID" : "885", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_284.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "883"},
	{"ID" : "886", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292", "Parent" : "0", "Child" : ["887", "888", "889", "890", "891", "892", "893", "894", "916", "938", "940", "942", "944", "947", "949", "995", "1017", "1019"],
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
					{"ID" : "894", "SubInstance" : "grp_mp_mul_fu_74", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "938", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1_fu_98", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "949", "SubInstance" : "grp_rdc_mont_fu_142", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "916", "SubInstance" : "grp_mp_mul_fu_86", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "938", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1_fu_98", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "1019", "SubInstance" : "grp_rdc_mont_1_fu_165", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "894", "SubInstance" : "grp_mp_mul_fu_74", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "940", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133_fu_107", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "916", "SubInstance" : "grp_mp_mul_fu_86", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "940", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133_fu_107", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "944", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "887", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.t1_U", "Parent" : "886"},
	{"ID" : "888", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.t2_U", "Parent" : "886"},
	{"ID" : "889", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt1_U", "Parent" : "886"},
	{"ID" : "890", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt1_1_U", "Parent" : "886"},
	{"ID" : "891", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt2_U", "Parent" : "886"},
	{"ID" : "892", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt2_1_U", "Parent" : "886"},
	{"ID" : "893", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.tt3_U", "Parent" : "886"},
	{"ID" : "894", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74", "Parent" : "886", "Child" : ["895"],
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
					{"ID" : "895", "SubInstance" : "grp_mul_2_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "895", "SubInstance" : "grp_mul_2_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "895", "SubInstance" : "grp_mul_2_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "895", "SubInstance" : "grp_mul_2_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "895", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20", "Parent" : "894", "Child" : ["896", "897", "898", "900", "903", "906", "908", "911"],
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
					{"ID" : "900", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "903", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "898", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "911", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "898", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "911", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "896", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.acc_U", "Parent" : "895"},
	{"ID" : "897", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.acc_1_U", "Parent" : "895"},
	{"ID" : "898", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "895", "Child" : ["899"],
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
	{"ID" : "899", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "898"},
	{"ID" : "900", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "895", "Child" : ["901", "902"],
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
	{"ID" : "901", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U522", "Parent" : "900"},
	{"ID" : "902", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "900"},
	{"ID" : "903", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65", "Parent" : "895", "Child" : ["904", "905"],
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
	{"ID" : "904", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U525", "Parent" : "903"},
	{"ID" : "905", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "903"},
	{"ID" : "906", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "895", "Child" : ["907"],
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
	{"ID" : "907", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "906"},
	{"ID" : "908", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "895", "Child" : ["909", "910"],
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
	{"ID" : "909", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U530", "Parent" : "908"},
	{"ID" : "910", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "908"},
	{"ID" : "911", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "895", "Child" : ["912", "914"],
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
					{"ID" : "914", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "914", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "912", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "914", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "912", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "914", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "912", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "911", "Child" : ["913"],
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
	{"ID" : "913", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "912"},
	{"ID" : "914", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "911", "Child" : ["915"],
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
	{"ID" : "915", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "914"},
	{"ID" : "916", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86", "Parent" : "886", "Child" : ["917"],
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
					{"ID" : "917", "SubInstance" : "grp_mul_2_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "917", "SubInstance" : "grp_mul_2_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "917", "SubInstance" : "grp_mul_2_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "917", "SubInstance" : "grp_mul_2_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "917", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20", "Parent" : "916", "Child" : ["918", "919", "920", "922", "925", "928", "930", "933"],
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
					{"ID" : "922", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "925", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "920", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "933", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "920", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "933", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "918", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.acc_U", "Parent" : "917"},
	{"ID" : "919", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.acc_1_U", "Parent" : "917"},
	{"ID" : "920", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "917", "Child" : ["921"],
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
	{"ID" : "921", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "920"},
	{"ID" : "922", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "917", "Child" : ["923", "924"],
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
	{"ID" : "923", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U522", "Parent" : "922"},
	{"ID" : "924", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "922"},
	{"ID" : "925", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65", "Parent" : "917", "Child" : ["926", "927"],
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
	{"ID" : "926", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U525", "Parent" : "925"},
	{"ID" : "927", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "925"},
	{"ID" : "928", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "917", "Child" : ["929"],
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
	{"ID" : "929", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "928"},
	{"ID" : "930", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "917", "Child" : ["931", "932"],
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
	{"ID" : "931", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U530", "Parent" : "930"},
	{"ID" : "932", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "930"},
	{"ID" : "933", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "917", "Child" : ["934", "936"],
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
					{"ID" : "936", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "936", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "934", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "936", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "934", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "936", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "934", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "933", "Child" : ["935"],
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
	{"ID" : "935", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "934"},
	{"ID" : "936", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "933", "Child" : ["937"],
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
	{"ID" : "937", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "936"},
	{"ID" : "938", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1_fu_98", "Parent" : "886", "Child" : ["939"],
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
	{"ID" : "939", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "938"},
	{"ID" : "940", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133_fu_107", "Parent" : "886", "Child" : ["941"],
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
	{"ID" : "941", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "940"},
	{"ID" : "942", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1_fu_116", "Parent" : "886", "Child" : ["943"],
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
	{"ID" : "943", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "942"},
	{"ID" : "944", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1_fu_126", "Parent" : "886", "Child" : ["945", "946"],
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
	{"ID" : "945", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1_fu_126.p503_1_U", "Parent" : "944"},
	{"ID" : "946", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "944"},
	{"ID" : "947", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1134_fu_134", "Parent" : "886", "Child" : ["948"],
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
	{"ID" : "948", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1134_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "947"},
	{"ID" : "949", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142", "Parent" : "886", "Child" : ["950", "952", "953", "954", "955", "956", "957", "958", "959", "960", "961", "962", "963", "964", "965", "970", "975", "980", "985", "990"],
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
					{"ID" : "950", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "950", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "949", "Child" : ["951"],
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
	{"ID" : "951", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "950"},
	{"ID" : "952", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_292", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "953", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_299", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "954", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_306", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "955", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_312", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "956", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_318", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "957", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_325", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "958", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_332", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "959", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_338", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "960", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_345", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "961", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_354", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "962", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_361", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "963", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.tmp_909_is_digit_lessthan_ct_fu_367", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "964", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.tmp_910_is_digit_lessthan_ct_fu_374", "Parent" : "949",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "965", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381", "Parent" : "949", "Child" : ["966", "967", "968", "969"],
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
	{"ID" : "966", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U266", "Parent" : "965"},
	{"ID" : "967", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U267", "Parent" : "965"},
	{"ID" : "968", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U268", "Parent" : "965"},
	{"ID" : "969", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U269", "Parent" : "965"},
	{"ID" : "970", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388", "Parent" : "949", "Child" : ["971", "972", "973", "974"],
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
	{"ID" : "971", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U266", "Parent" : "970"},
	{"ID" : "972", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U267", "Parent" : "970"},
	{"ID" : "973", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U268", "Parent" : "970"},
	{"ID" : "974", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U269", "Parent" : "970"},
	{"ID" : "975", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395", "Parent" : "949", "Child" : ["976", "977", "978", "979"],
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
	{"ID" : "976", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U266", "Parent" : "975"},
	{"ID" : "977", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U267", "Parent" : "975"},
	{"ID" : "978", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U268", "Parent" : "975"},
	{"ID" : "979", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U269", "Parent" : "975"},
	{"ID" : "980", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402", "Parent" : "949", "Child" : ["981", "982", "983", "984"],
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
	{"ID" : "981", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U266", "Parent" : "980"},
	{"ID" : "982", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U267", "Parent" : "980"},
	{"ID" : "983", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U268", "Parent" : "980"},
	{"ID" : "984", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U269", "Parent" : "980"},
	{"ID" : "985", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409", "Parent" : "949", "Child" : ["986", "987", "988", "989"],
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
	{"ID" : "986", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U266", "Parent" : "985"},
	{"ID" : "987", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U267", "Parent" : "985"},
	{"ID" : "988", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U268", "Parent" : "985"},
	{"ID" : "989", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U269", "Parent" : "985"},
	{"ID" : "990", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416", "Parent" : "949", "Child" : ["991", "992", "993", "994"],
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
	{"ID" : "991", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U266", "Parent" : "990"},
	{"ID" : "992", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U267", "Parent" : "990"},
	{"ID" : "993", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U268", "Parent" : "990"},
	{"ID" : "994", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U269", "Parent" : "990"},
	{"ID" : "995", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149", "Parent" : "886", "Child" : ["996"],
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
					{"ID" : "996", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "996", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "996", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "996", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "996", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20", "Parent" : "995", "Child" : ["997", "998", "999", "1001", "1004", "1007", "1009", "1012"],
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
					{"ID" : "1001", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1004", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "999", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "1012", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "999", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "1012", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "997", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.acc_U", "Parent" : "996"},
	{"ID" : "998", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.acc_1_U", "Parent" : "996"},
	{"ID" : "999", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "996", "Child" : ["1000"],
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
	{"ID" : "1000", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "999"},
	{"ID" : "1001", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "996", "Child" : ["1002", "1003"],
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
	{"ID" : "1002", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "1001"},
	{"ID" : "1003", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "1001"},
	{"ID" : "1004", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "996", "Child" : ["1005", "1006"],
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
	{"ID" : "1005", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "1004"},
	{"ID" : "1006", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "1004"},
	{"ID" : "1007", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "996", "Child" : ["1008"],
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
	{"ID" : "1008", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "1007"},
	{"ID" : "1009", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "996", "Child" : ["1010", "1011"],
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
	{"ID" : "1010", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "1009"},
	{"ID" : "1011", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "1009"},
	{"ID" : "1012", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "996", "Child" : ["1013", "1015"],
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
					{"ID" : "1015", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1015", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1013", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "1015", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1013", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "1015", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1013", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "1012", "Child" : ["1014"],
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
	{"ID" : "1014", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "1013"},
	{"ID" : "1015", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "1012", "Child" : ["1016"],
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
	{"ID" : "1016", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "1015"},
	{"ID" : "1017", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1135_fu_157", "Parent" : "886", "Child" : ["1018"],
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
	{"ID" : "1018", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1135_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "1017"},
	{"ID" : "1019", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165", "Parent" : "886", "Child" : ["1020", "1022", "1023", "1024", "1025", "1026", "1027", "1028", "1029", "1030", "1031", "1032", "1033", "1034", "1035", "1040", "1045", "1050", "1055", "1060"],
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
					{"ID" : "1020", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1020", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "1019", "Child" : ["1021"],
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
	{"ID" : "1021", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "1020"},
	{"ID" : "1022", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_283", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1023", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_290", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1024", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_297", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1025", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_303", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1026", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_309", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1027", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_316", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1028", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_323", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1029", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_329", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1030", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_336", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1031", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_345", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1032", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_352", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1033", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.tmp_693_is_digit_lessthan_ct_fu_358", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1034", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.tmp_694_is_digit_lessthan_ct_fu_365", "Parent" : "1019",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1035", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372", "Parent" : "1019", "Child" : ["1036", "1037", "1038", "1039"],
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
	{"ID" : "1036", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "1035"},
	{"ID" : "1037", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "1035"},
	{"ID" : "1038", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "1035"},
	{"ID" : "1039", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "1035"},
	{"ID" : "1040", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379", "Parent" : "1019", "Child" : ["1041", "1042", "1043", "1044"],
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
	{"ID" : "1041", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "1040"},
	{"ID" : "1042", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "1040"},
	{"ID" : "1043", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "1040"},
	{"ID" : "1044", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "1040"},
	{"ID" : "1045", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386", "Parent" : "1019", "Child" : ["1046", "1047", "1048", "1049"],
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
	{"ID" : "1046", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "1045"},
	{"ID" : "1047", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "1045"},
	{"ID" : "1048", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "1045"},
	{"ID" : "1049", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "1045"},
	{"ID" : "1050", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393", "Parent" : "1019", "Child" : ["1051", "1052", "1053", "1054"],
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
	{"ID" : "1051", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "1050"},
	{"ID" : "1052", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "1050"},
	{"ID" : "1053", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "1050"},
	{"ID" : "1054", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "1050"},
	{"ID" : "1055", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400", "Parent" : "1019", "Child" : ["1056", "1057", "1058", "1059"],
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
	{"ID" : "1056", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "1055"},
	{"ID" : "1057", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "1055"},
	{"ID" : "1058", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "1055"},
	{"ID" : "1059", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "1055"},
	{"ID" : "1060", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407", "Parent" : "1019", "Child" : ["1061", "1062", "1063", "1064"],
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
	{"ID" : "1061", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "1060"},
	{"ID" : "1062", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "1060"},
	{"ID" : "1063", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "1060"},
	{"ID" : "1064", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_292.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "1060"},
	{"ID" : "1065", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302", "Parent" : "0", "Child" : ["1066"],
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
			{"Name" : "zext_ln14_3", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "1066", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191_fu_302.flow_control_loop_pipe_sequential_init_U", "Parent" : "1065"}]}


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
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1187 {
		zext_ln14_3 {Type I LastRead 0 FirstWrite -1}
		pts_X {Type I LastRead 0 FirstWrite -1}
		pt_new_X {Type O LastRead -1 FirstWrite 1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1188 {
		zext_ln14_3 {Type I LastRead 0 FirstWrite -1}
		pts_X_2 {Type I LastRead 0 FirstWrite -1}
		pt_new_X_2 {Type O LastRead -1 FirstWrite 1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1189 {
		zext_ln14_3 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type I LastRead 0 FirstWrite -1}
		pt_new_Z {Type O LastRead -1 FirstWrite 1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_13_1190 {
		zext_ln14_3 {Type I LastRead 0 FirstWrite -1}
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
		carry_out {Type O LastRead -1 FirstWrite 0}
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
		carry_out {Type O LastRead -1 FirstWrite 0}
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
	fp2mul503_mont_36 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_44 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_50 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_38_183 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1145 {
		b_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		add_ln195 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_36_Pipeline_VITIS_LOOP_172_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_36_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_36_Pipeline_VITIS_LOOP_390_1146 {
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
	fp2mul503_mont_36_Pipeline_VITIS_LOOP_172_1147 {
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
	fp2mul503_mont_623_2 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
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
	fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1118 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_172_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_390_1119 {
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
	fp2mul503_mont_623_2_Pipeline_VITIS_LOOP_172_1120 {
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
	fp2mul503_mont_37 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_45 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_51 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_51_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_51_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_51_Pipeline_VITIS_LOOP_38_182 {
		coeff {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_51_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_51_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	mp_mul_44 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_50 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_38_183 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_50_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1142 {
		coeff {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_37_Pipeline_VITIS_LOOP_172_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_37_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_37_Pipeline_VITIS_LOOP_390_1143 {
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
	fp2mul503_mont_37_Pipeline_VITIS_LOOP_172_1144 {
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
	fp2sqr503_mont {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1 {
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
	fp2sqr503_mont_Pipeline_VITIS_LOOP_390_1105 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont {
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
	fpmul503_mont_1 {
		ma {Type I LastRead 0 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}}
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
		carry_out {Type O LastRead -1 FirstWrite 0}
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
		carry_out {Type O LastRead -1 FirstWrite 0}
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
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1191 {
		pts_Z_2 {Type IO LastRead 0 FirstWrite 1}
		zext_ln14_3 {Type I LastRead 0 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "42176", "Max" : "42176"}
	, {"Name" : "Interval", "Min" : "42176", "Max" : "42176"}
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
