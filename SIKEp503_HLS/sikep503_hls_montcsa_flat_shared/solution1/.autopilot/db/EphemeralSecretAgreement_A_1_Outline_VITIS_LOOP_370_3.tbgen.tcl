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
set cdfgNum 598
set C_modelName {EphemeralSecretAgreement_A.1_Outline_VITIS_LOOP_370_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict coeff { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z_2 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X_2 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ coeff int 64 regular {array 48 { 1 1 } 1 1 }  }
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
set portNum 45
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
	{ coeff_address1 sc_out sc_lv 6 signal 0 } 
	{ coeff_ce1 sc_out sc_logic 1 signal 0 } 
	{ coeff_q1 sc_in sc_lv 64 signal 0 } 
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
 	{ "name": "coeff_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coeff", "role": "address1" }} , 
 	{ "name": "coeff_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff", "role": "ce1" }} , 
 	{ "name": "coeff_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeff", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "9", "11", "13", "22", "28", "105", "182", "265", "271", "330", "389", "398", "404", "481"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Outline_VITIS_LOOP_370_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26335", "EstimateLatencyMax" : "26335",
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
					{"ID" : "28", "SubInstance" : "grp_fp2mul503_mont_436_fu_172", "Port" : "coeff", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "182", "SubInstance" : "grp_fp2mul503_mont_44_fu_193", "Port" : "coeff", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "npts_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1254_fu_128", "Port" : "pts_Z_2", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "481", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1255_fu_270", "Port" : "pts_Z_2", "Inst_start_state" : "38", "Inst_end_state" : "39"}]},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1253_fu_112", "Port" : "pts_Z", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "481", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1255_fu_270", "Port" : "pts_Z", "Inst_start_state" : "38", "Inst_end_state" : "39"}]},
			{"Name" : "pts_X_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1252_fu_120", "Port" : "pts_X_2", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "481", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1255_fu_270", "Port" : "pts_X_2", "Inst_start_state" : "38", "Inst_end_state" : "39"}]},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1251_fu_104", "Port" : "pts_X", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "481", "SubInstance" : "grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1255_fu_270", "Port" : "pts_X", "Inst_start_state" : "38", "Inst_end_state" : "39"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_fpadd503_1515_fu_136", "Port" : "p503x2_1", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "22", "SubInstance" : "grp_fpsub503_27_fu_154", "Port" : "p503x2_1", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "265", "SubInstance" : "grp_fpsub503_2_4_fu_202", "Port" : "p503x2_1", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "271", "SubInstance" : "grp_fp2sqr503_mont_2_1_fu_216", "Port" : "p503x2_1", "Inst_start_state" : "24", "Inst_end_state" : "25"},
					{"ID" : "330", "SubInstance" : "grp_fp2sqr503_mont_fu_223", "Port" : "p503x2_1", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "389", "SubInstance" : "grp_fpadd503_1528_fu_230", "Port" : "p503x2_1", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "398", "SubInstance" : "grp_fpsub503_2_32_fu_248", "Port" : "p503x2_1", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_fp2mul503_mont_436_fu_172", "Port" : "p503_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "105", "SubInstance" : "grp_fp2mul503_mont_331_2_fu_185", "Port" : "p503_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "182", "SubInstance" : "grp_fp2mul503_mont_44_fu_193", "Port" : "p503_1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "404", "SubInstance" : "grp_fp2mul503_mont_3301_fu_262", "Port" : "p503_1", "Inst_start_state" : "36", "Inst_end_state" : "37"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_370_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "39", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_Z_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_X_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1251_fu_104", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1251",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1251_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1253_fu_112", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1253",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1253_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1252_fu_120", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1252",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1252_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1254_fu_128", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1254",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1254_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1515_fu_136", "Parent" : "0", "Child" : ["14", "16", "19"],
		"CDFG" : "fpadd503_1515",
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
					{"ID" : "14", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "16", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "19", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "19", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1515_fu_136.grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "fpadd503_1515_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1515_fu_136.grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1515_fu_136.grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63", "Parent" : "13", "Child" : ["17", "18"],
		"CDFG" : "fpadd503_1515_Pipeline_VITIS_LOOP_40_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1515_fu_136.grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63.p503x2_1_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1515_fu_136.grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1515_fu_136.grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73", "Parent" : "13", "Child" : ["20", "21"],
		"CDFG" : "fpadd503_1515_Pipeline_VITIS_LOOP_47_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1515_fu_136.grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73.p503x2_1_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1515_fu_136.grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_154", "Parent" : "0", "Child" : ["23", "25"],
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
					{"ID" : "23", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "25", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_154.grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Parent" : "22", "Child" : ["24"],
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
			{"Name" : "zext_ln64_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_154.grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_154.grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62", "Parent" : "22", "Child" : ["26", "27"],
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
			{"Name" : "zext_ln64_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_154.grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62.p503x2_1_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_154.grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172", "Parent" : "0", "Child" : ["29", "30", "31", "32", "33", "34", "40", "42", "44", "46", "49", "51", "97", "103"],
		"CDFG" : "fp2mul503_mont_436",
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
					{"ID" : "34", "SubInstance" : "grp_mp_mul_51_fu_68", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "40", "SubInstance" : "grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1_fu_83", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_mp_mul_51_fu_68", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "42", "SubInstance" : "grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182_fu_90", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_rdc_mont_298_fu_121", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1_fu_107", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.t1_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.t2_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.tt1_U", "Parent" : "28"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.tt2_U", "Parent" : "28"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.tt3_U", "Parent" : "28"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_51_fu_68", "Parent" : "28", "Child" : ["35"],
		"CDFG" : "mp_mul_51",
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
					{"ID" : "35", "SubInstance" : "grp_mul_60_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_mul_60_fu_28", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_mul_60_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_51_fu_68.grp_mul_60_fu_28", "Parent" : "34", "Child" : ["36"],
		"CDFG" : "mul_60",
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
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_mul_60_Pipeline_COL_fu_328", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328", "Parent" : "35", "Child" : ["37", "38", "39"],
		"CDFG" : "mul_60_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_589_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.mul_64ns_64ns_128_1_1_U1356", "Parent" : "36"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.sparsemux_31_4_64_1_1_U1357", "Parent" : "36"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1_fu_83", "Parent" : "28", "Child" : ["41"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1_fu_83.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182_fu_90", "Parent" : "28", "Child" : ["43"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "add_ln205", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1_fu_99", "Parent" : "28", "Child" : ["45"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1",
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
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1_fu_107", "Parent" : "28", "Child" : ["47", "48"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "sext_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_209_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1_fu_107.p503_1_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1183_fu_115", "Parent" : "28", "Child" : ["50"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1183",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1183_fu_115.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121", "Parent" : "28", "Child" : ["52", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "72", "77", "82", "87", "92"],
		"CDFG" : "rdc_mont_298",
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
					{"ID" : "52", "SubInstance" : "grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "51", "Child" : ["53"],
		"CDFG" : "rdc_mont_298_Pipeline_VITIS_LOOP_299_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_305", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_312", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_319", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_325", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_331", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_338", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_345", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_351", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_358", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_367", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_374", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.tmp_44_is_digit_lessthan_ct_fu_380", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.tmp_45_is_digit_lessthan_ct_fu_387", "Parent" : "51",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394", "Parent" : "51", "Child" : ["68", "69", "70", "71"],
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
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U399", "Parent" : "67"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U400", "Parent" : "67"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U401", "Parent" : "67"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U402", "Parent" : "67"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401", "Parent" : "51", "Child" : ["73", "74", "75", "76"],
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
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U399", "Parent" : "72"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U400", "Parent" : "72"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U401", "Parent" : "72"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U402", "Parent" : "72"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408", "Parent" : "51", "Child" : ["78", "79", "80", "81"],
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
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U399", "Parent" : "77"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U400", "Parent" : "77"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U401", "Parent" : "77"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U402", "Parent" : "77"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415", "Parent" : "51", "Child" : ["83", "84", "85", "86"],
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
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U399", "Parent" : "82"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U400", "Parent" : "82"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U401", "Parent" : "82"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U402", "Parent" : "82"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422", "Parent" : "51", "Child" : ["88", "89", "90", "91"],
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
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U399", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U400", "Parent" : "87"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U401", "Parent" : "87"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U402", "Parent" : "87"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429", "Parent" : "51", "Child" : ["93", "94", "95", "96"],
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U399", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U400", "Parent" : "92"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U401", "Parent" : "92"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U402", "Parent" : "92"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_5149_fu_131", "Parent" : "28", "Child" : ["98"],
		"CDFG" : "mp_mul_5149",
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
					{"ID" : "98", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8", "Parent" : "97", "Child" : ["99"],
		"CDFG" : "mul_4157",
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
					{"ID" : "99", "SubInstance" : "grp_mul_4157_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306", "Parent" : "98", "Child" : ["100", "101", "102"],
		"CDFG" : "mul_4157_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U411", "Parent" : "99"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U412", "Parent" : "99"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1184_fu_138", "Parent" : "28", "Child" : ["104"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1184",
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
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_436_fu_172.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1184_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185", "Parent" : "0", "Child" : ["106", "107", "108", "109", "110", "111", "117", "119", "121", "123", "126", "128", "174", "180"],
		"CDFG" : "fp2mul503_mont_331_2",
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
					{"ID" : "111", "SubInstance" : "grp_mp_mul_514743_fu_54", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "117", "SubInstance" : "grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1_fu_70", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "128", "SubInstance" : "grp_rdc_mont_1_fu_106", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_mp_mul_514743_fu_54", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "119", "SubInstance" : "grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191_fu_77", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1_fu_92", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.t1_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.t2_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.tt1_U", "Parent" : "105"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.tt2_U", "Parent" : "105"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.tt3_U", "Parent" : "105"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_514743_fu_54", "Parent" : "105", "Child" : ["112"],
		"CDFG" : "mp_mul_514743",
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
					{"ID" : "112", "SubInstance" : "grp_mul_245_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mul_245_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mul_245_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26", "Parent" : "111", "Child" : ["113"],
		"CDFG" : "mul_245",
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
					{"ID" : "113", "SubInstance" : "grp_mul_245_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26.grp_mul_245_Pipeline_COL_fu_326", "Parent" : "112", "Child" : ["114", "115", "116"],
		"CDFG" : "mul_245_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26.grp_mul_245_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U352", "Parent" : "113"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26.grp_mul_245_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U353", "Parent" : "113"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26.grp_mul_245_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1_fu_70", "Parent" : "105", "Child" : ["118"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191_fu_77", "Parent" : "105", "Child" : ["120"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1_fu_84", "Parent" : "105", "Child" : ["122"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1",
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
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1_fu_92", "Parent" : "105", "Child" : ["124", "125"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "sext_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_209_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1_fu_92.p503_1_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1192_fu_100", "Parent" : "105", "Child" : ["127"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1192",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1192_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106", "Parent" : "105", "Child" : ["129", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "149", "154", "159", "164", "169"],
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
					{"ID" : "129", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "128", "Child" : ["130"],
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
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_305", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_312", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_319", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_325", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_331", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_338", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_345", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_351", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_358", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_367", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_374", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.tmp_45_is_digit_lessthan_ct_fu_380", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.tmp_46_is_digit_lessthan_ct_fu_387", "Parent" : "128",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394", "Parent" : "128", "Child" : ["145", "146", "147", "148"],
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
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U399", "Parent" : "144"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U400", "Parent" : "144"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U401", "Parent" : "144"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U402", "Parent" : "144"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401", "Parent" : "128", "Child" : ["150", "151", "152", "153"],
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
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U399", "Parent" : "149"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U400", "Parent" : "149"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U401", "Parent" : "149"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U402", "Parent" : "149"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408", "Parent" : "128", "Child" : ["155", "156", "157", "158"],
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
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U399", "Parent" : "154"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U400", "Parent" : "154"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U401", "Parent" : "154"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U402", "Parent" : "154"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415", "Parent" : "128", "Child" : ["160", "161", "162", "163"],
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
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U399", "Parent" : "159"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U400", "Parent" : "159"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U401", "Parent" : "159"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U402", "Parent" : "159"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422", "Parent" : "128", "Child" : ["165", "166", "167", "168"],
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
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U399", "Parent" : "164"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U400", "Parent" : "164"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U401", "Parent" : "164"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U402", "Parent" : "164"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429", "Parent" : "128", "Child" : ["170", "171", "172", "173"],
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
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U399", "Parent" : "169"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U400", "Parent" : "169"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U401", "Parent" : "169"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U402", "Parent" : "169"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_5149_fu_116", "Parent" : "105", "Child" : ["175"],
		"CDFG" : "mp_mul_5149",
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
					{"ID" : "175", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8", "Parent" : "174", "Child" : ["176"],
		"CDFG" : "mul_4157",
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
					{"ID" : "176", "SubInstance" : "grp_mul_4157_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306", "Parent" : "175", "Child" : ["177", "178", "179"],
		"CDFG" : "mul_4157_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U411", "Parent" : "176"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U412", "Parent" : "176"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "176"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1193_fu_123", "Parent" : "105", "Child" : ["181"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1193",
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
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_331_2_fu_185.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1193_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193", "Parent" : "0", "Child" : ["183", "184", "185", "186", "187", "188", "194", "200", "202", "204", "206", "209", "211", "257", "263"],
		"CDFG" : "fp2mul503_mont_44",
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
					{"ID" : "188", "SubInstance" : "grp_mp_mul_52_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "194", "SubInstance" : "grp_mp_mul_51_fu_68", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "200", "SubInstance" : "grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1_fu_81", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "211", "SubInstance" : "grp_rdc_mont_1_fu_117", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_mp_mul_52_fu_58", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "194", "SubInstance" : "grp_mp_mul_51_fu_68", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "202", "SubInstance" : "grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179_fu_88", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1_fu_103", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.t1_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.t2_U", "Parent" : "182"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.tt1_U", "Parent" : "182"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.tt2_U", "Parent" : "182"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.tt3_U", "Parent" : "182"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_52_fu_58", "Parent" : "182", "Child" : ["189"],
		"CDFG" : "mp_mul_52",
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
					{"ID" : "189", "SubInstance" : "grp_mul_61_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "grp_mul_61_fu_8", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "grp_mul_61_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_52_fu_58.grp_mul_61_fu_8", "Parent" : "188", "Child" : ["190"],
		"CDFG" : "mul_61",
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
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_mul_61_Pipeline_COL_fu_306", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_52_fu_58.grp_mul_61_fu_8.grp_mul_61_Pipeline_COL_fu_306", "Parent" : "189", "Child" : ["191", "192", "193"],
		"CDFG" : "mul_61_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_588_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_52_fu_58.grp_mul_61_fu_8.grp_mul_61_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U1410", "Parent" : "190"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_52_fu_58.grp_mul_61_fu_8.grp_mul_61_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U1411", "Parent" : "190"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_52_fu_58.grp_mul_61_fu_8.grp_mul_61_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "190"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_51_fu_68", "Parent" : "182", "Child" : ["195"],
		"CDFG" : "mp_mul_51",
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
					{"ID" : "195", "SubInstance" : "grp_mul_60_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_mul_60_fu_28", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_mul_60_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_51_fu_68.grp_mul_60_fu_28", "Parent" : "194", "Child" : ["196"],
		"CDFG" : "mul_60",
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
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_mul_60_Pipeline_COL_fu_328", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328", "Parent" : "195", "Child" : ["197", "198", "199"],
		"CDFG" : "mul_60_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_589_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.mul_64ns_64ns_128_1_1_U1356", "Parent" : "196"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.sparsemux_31_4_64_1_1_U1357", "Parent" : "196"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.flow_control_loop_pipe_sequential_init_U", "Parent" : "196"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1_fu_81", "Parent" : "182", "Child" : ["201"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1_fu_81.flow_control_loop_pipe_sequential_init_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179_fu_88", "Parent" : "182", "Child" : ["203"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1_fu_95", "Parent" : "182", "Child" : ["205"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1",
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
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1_fu_95.flow_control_loop_pipe_sequential_init_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1_fu_103", "Parent" : "182", "Child" : ["207", "208"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "sext_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_209_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1_fu_103.p503_1_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1180_fu_111", "Parent" : "182", "Child" : ["210"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1180",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1180_fu_111.flow_control_loop_pipe_sequential_init_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117", "Parent" : "182", "Child" : ["212", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "232", "237", "242", "247", "252"],
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
					{"ID" : "212", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "211", "Child" : ["213"],
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
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_305", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_312", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_319", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_325", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_331", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_338", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_345", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_351", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_358", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_367", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_374", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.tmp_45_is_digit_lessthan_ct_fu_380", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.tmp_46_is_digit_lessthan_ct_fu_387", "Parent" : "211",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394", "Parent" : "211", "Child" : ["228", "229", "230", "231"],
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
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U399", "Parent" : "227"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U400", "Parent" : "227"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U401", "Parent" : "227"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U402", "Parent" : "227"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401", "Parent" : "211", "Child" : ["233", "234", "235", "236"],
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
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U399", "Parent" : "232"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U400", "Parent" : "232"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U401", "Parent" : "232"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U402", "Parent" : "232"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408", "Parent" : "211", "Child" : ["238", "239", "240", "241"],
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
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U399", "Parent" : "237"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U400", "Parent" : "237"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U401", "Parent" : "237"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U402", "Parent" : "237"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415", "Parent" : "211", "Child" : ["243", "244", "245", "246"],
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
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U399", "Parent" : "242"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U400", "Parent" : "242"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U401", "Parent" : "242"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U402", "Parent" : "242"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422", "Parent" : "211", "Child" : ["248", "249", "250", "251"],
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
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U399", "Parent" : "247"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U400", "Parent" : "247"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U401", "Parent" : "247"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U402", "Parent" : "247"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429", "Parent" : "211", "Child" : ["253", "254", "255", "256"],
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
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U399", "Parent" : "252"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U400", "Parent" : "252"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U401", "Parent" : "252"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U402", "Parent" : "252"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_5149_fu_127", "Parent" : "182", "Child" : ["258"],
		"CDFG" : "mp_mul_5149",
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
					{"ID" : "258", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "258", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "258", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8", "Parent" : "257", "Child" : ["259"],
		"CDFG" : "mul_4157",
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
					{"ID" : "259", "SubInstance" : "grp_mul_4157_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306", "Parent" : "258", "Child" : ["260", "261", "262"],
		"CDFG" : "mul_4157_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U411", "Parent" : "259"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U412", "Parent" : "259"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "259"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1181_fu_134", "Parent" : "182", "Child" : ["264"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1181",
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
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_44_fu_193.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1181_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_4_fu_202", "Parent" : "0", "Child" : ["266", "268"],
		"CDFG" : "fpsub503_2_4",
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
					{"ID" : "266", "SubInstance" : "grp_fpsub503_2_4_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "266", "SubInstance" : "grp_fpsub503_2_4_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "268", "SubInstance" : "grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "268", "SubInstance" : "grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_4_fu_202.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_62_1_fu_38", "Parent" : "265", "Child" : ["267"],
		"CDFG" : "fpsub503_2_4_Pipeline_VITIS_LOOP_62_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln64_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_4_fu_202.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_62_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_4_fu_202.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49", "Parent" : "265", "Child" : ["269", "270"],
		"CDFG" : "fpsub503_2_4_Pipeline_VITIS_LOOP_69_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln64_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_4_fu_202.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49.p503x2_1_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_4_fu_202.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49.flow_control_loop_pipe_sequential_init_U", "Parent" : "268"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216", "Parent" : "0", "Child" : ["272", "273", "274", "275", "277", "279", "282", "284", "310"],
		"CDFG" : "fp2sqr503_mont_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "79", "EstimateLatencyMax" : "79",
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
					{"ID" : "275", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1_fu_34", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "277", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1_fu_42", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "282", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169_fu_58", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "284", "SubInstance" : "grp_fpmul503_mont_6_fu_65", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "310", "SubInstance" : "grp_fpmul503_mont_5_1_fu_73", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "279", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.t1_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.t2_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.t3_U", "Parent" : "271"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1_fu_34", "Parent" : "271", "Child" : ["276"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1_fu_42", "Parent" : "271", "Child" : ["278"],
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
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50", "Parent" : "271", "Child" : ["280", "281"],
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
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50.p503x2_1_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169_fu_58", "Parent" : "271", "Child" : ["283"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65", "Parent" : "271", "Child" : ["285"],
		"CDFG" : "fpmul503_mont_6",
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
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8", "Parent" : "284", "Child" : ["286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309"],
		"CDFG" : "mul_4_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U893", "Parent" : "285"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U894", "Parent" : "285"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U895", "Parent" : "285"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U896", "Parent" : "285"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U897", "Parent" : "285"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U898", "Parent" : "285"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U899", "Parent" : "285"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U900", "Parent" : "285"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U901", "Parent" : "285"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U902", "Parent" : "285"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U903", "Parent" : "285"},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U904", "Parent" : "285"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U905", "Parent" : "285"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_56ns_119_1_1_U906", "Parent" : "285"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U907", "Parent" : "285"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U908", "Parent" : "285"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_127_1_1_U909", "Parent" : "285"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_65ns_128_1_1_U910", "Parent" : "285"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_65ns_128_1_1_U911", "Parent" : "285"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U912", "Parent" : "285"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U913", "Parent" : "285"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_62ns_64_1_1_U914", "Parent" : "285"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_62ns_64_1_1_U915", "Parent" : "285"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_64s_64_1_1_U916", "Parent" : "285"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73", "Parent" : "271", "Child" : ["311"],
		"CDFG" : "fpmul503_mont_5_1",
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
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_mul_5_1_fu_6", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_mul_5_1_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6", "Parent" : "310", "Child" : ["312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329"],
		"CDFG" : "mul_5_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U923", "Parent" : "311"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U924", "Parent" : "311"},
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U925", "Parent" : "311"},
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U926", "Parent" : "311"},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U927", "Parent" : "311"},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U928", "Parent" : "311"},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U929", "Parent" : "311"},
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_56ns_119_1_1_U930", "Parent" : "311"},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_62ns_125_1_1_U931", "Parent" : "311"},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_62ns_125_1_1_U932", "Parent" : "311"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_127_1_1_U933", "Parent" : "311"},
	{"ID" : "323", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_65ns_128_1_1_U934", "Parent" : "311"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_65ns_128_1_1_U935", "Parent" : "311"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_64ns_64_1_1_U936", "Parent" : "311"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_64ns_64_1_1_U937", "Parent" : "311"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_62ns_64_1_1_U938", "Parent" : "311"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_62ns_64_1_1_U939", "Parent" : "311"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_216.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_64s_64_1_1_U940", "Parent" : "311"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223", "Parent" : "0", "Child" : ["331", "332", "333", "334", "336", "338", "341", "343", "369"],
		"CDFG" : "fp2sqr503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "79", "EstimateLatencyMax" : "79",
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
					{"ID" : "334", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1_fu_34", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "336", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1_fu_42", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "341", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172_fu_58", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "343", "SubInstance" : "grp_fpmul503_mont_4_fu_65", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "369", "SubInstance" : "grp_fpmul503_mont_3_fu_73", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "338", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2_fu_50", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.t1_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.t2_U", "Parent" : "330"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.t3_U", "Parent" : "330"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1_fu_34", "Parent" : "330", "Child" : ["335"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1_fu_42", "Parent" : "330", "Child" : ["337"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "336"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2_fu_50", "Parent" : "330", "Child" : ["339", "340"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2_fu_50.p503x2_1_U", "Parent" : "338"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "338"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172_fu_58", "Parent" : "330", "Child" : ["342"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65", "Parent" : "330", "Child" : ["344"],
		"CDFG" : "fpmul503_mont_4",
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
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "grp_mul_6_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "grp_mul_6_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "grp_mul_6_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8", "Parent" : "343", "Child" : ["345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368"],
		"CDFG" : "mul_6",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U253", "Parent" : "344"},
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U254", "Parent" : "344"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U255", "Parent" : "344"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U256", "Parent" : "344"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U257", "Parent" : "344"},
	{"ID" : "350", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U258", "Parent" : "344"},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U259", "Parent" : "344"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U260", "Parent" : "344"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U261", "Parent" : "344"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U262", "Parent" : "344"},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U263", "Parent" : "344"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U264", "Parent" : "344"},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U265", "Parent" : "344"},
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_56ns_119_1_1_U266", "Parent" : "344"},
	{"ID" : "359", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_62ns_125_1_1_U267", "Parent" : "344"},
	{"ID" : "360", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_62ns_125_1_1_U268", "Parent" : "344"},
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_127_1_1_U269", "Parent" : "344"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_65ns_128_1_1_U270", "Parent" : "344"},
	{"ID" : "363", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_65ns_128_1_1_U271", "Parent" : "344"},
	{"ID" : "364", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_64ns_64_1_1_U272", "Parent" : "344"},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_64ns_64_1_1_U273", "Parent" : "344"},
	{"ID" : "366", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_62ns_64_1_1_U274", "Parent" : "344"},
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_62ns_64_1_1_U275", "Parent" : "344"},
	{"ID" : "368", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_64s_64_1_1_U276", "Parent" : "344"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73", "Parent" : "330", "Child" : ["370"],
		"CDFG" : "fpmul503_mont_3",
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
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "grp_mul_7_fu_6", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "370", "SubInstance" : "grp_mul_7_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6", "Parent" : "369", "Child" : ["371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388"],
		"CDFG" : "mul_7",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "371", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1476", "Parent" : "370"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1477", "Parent" : "370"},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1478", "Parent" : "370"},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1479", "Parent" : "370"},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1480", "Parent" : "370"},
	{"ID" : "376", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1481", "Parent" : "370"},
	{"ID" : "377", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1482", "Parent" : "370"},
	{"ID" : "378", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_56ns_119_1_1_U1483", "Parent" : "370"},
	{"ID" : "379", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_62ns_125_1_1_U1484", "Parent" : "370"},
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_62ns_125_1_1_U1485", "Parent" : "370"},
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_127_1_1_U1486", "Parent" : "370"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_65ns_128_1_1_U1487", "Parent" : "370"},
	{"ID" : "383", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_65ns_128_1_1_U1488", "Parent" : "370"},
	{"ID" : "384", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_64ns_64_1_1_U1489", "Parent" : "370"},
	{"ID" : "385", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_64ns_64_1_1_U1490", "Parent" : "370"},
	{"ID" : "386", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_62ns_64_1_1_U1491", "Parent" : "370"},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_62ns_64_1_1_U1492", "Parent" : "370"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_223.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_64s_64_1_1_U1493", "Parent" : "370"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1528_fu_230", "Parent" : "0", "Child" : ["390", "392", "395"],
		"CDFG" : "fpadd503_1528",
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
					{"ID" : "390", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "390", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "390", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "392", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "395", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "395", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1528_fu_230.grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50", "Parent" : "389", "Child" : ["391"],
		"CDFG" : "fpadd503_1528_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1528_fu_230.grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "390"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1528_fu_230.grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63", "Parent" : "389", "Child" : ["393", "394"],
		"CDFG" : "fpadd503_1528_Pipeline_VITIS_LOOP_40_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1528_fu_230.grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63.p503x2_1_U", "Parent" : "392"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1528_fu_230.grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "392"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1528_fu_230.grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73", "Parent" : "389", "Child" : ["396", "397"],
		"CDFG" : "fpadd503_1528_Pipeline_VITIS_LOOP_47_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1528_fu_230.grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73.p503x2_1_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1528_fu_230.grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "395"},
	{"ID" : "398", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_32_fu_248", "Parent" : "0", "Child" : ["399", "401"],
		"CDFG" : "fpsub503_2_32",
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
					{"ID" : "399", "SubInstance" : "grp_fpsub503_2_32_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "399", "SubInstance" : "grp_fpsub503_2_32_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "401", "SubInstance" : "grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "401", "SubInstance" : "grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_32_fu_248.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_62_1_fu_38", "Parent" : "398", "Child" : ["400"],
		"CDFG" : "fpsub503_2_32_Pipeline_VITIS_LOOP_62_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln64_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_32_fu_248.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_62_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_32_fu_248.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49", "Parent" : "398", "Child" : ["402", "403"],
		"CDFG" : "fpsub503_2_32_Pipeline_VITIS_LOOP_69_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln64_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_32_fu_248.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49.p503x2_1_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_32_fu_248.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49.flow_control_loop_pipe_sequential_init_U", "Parent" : "401"},
	{"ID" : "404", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262", "Parent" : "0", "Child" : ["405", "406", "407", "408", "409", "410", "416", "418", "420", "422", "425", "427", "473", "479"],
		"CDFG" : "fp2mul503_mont_3301",
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
					{"ID" : "410", "SubInstance" : "grp_mp_mul_5146100_fu_54", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "416", "SubInstance" : "grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1_fu_70", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "427", "SubInstance" : "grp_rdc_mont_298_fu_106", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_mp_mul_5146100_fu_54", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "418", "SubInstance" : "grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200_fu_77", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "422", "SubInstance" : "grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1_fu_92", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.t1_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.t2_U", "Parent" : "404"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.tt1_U", "Parent" : "404"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.tt2_U", "Parent" : "404"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.tt3_U", "Parent" : "404"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5146100_fu_54", "Parent" : "404", "Child" : ["411"],
		"CDFG" : "mp_mul_5146100",
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
					{"ID" : "411", "SubInstance" : "grp_mul_3101_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_mul_3101_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_mul_3101_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26", "Parent" : "410", "Child" : ["412"],
		"CDFG" : "mul_3101",
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
					{"ID" : "412", "SubInstance" : "grp_mul_3101_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26.grp_mul_3101_Pipeline_COL_fu_326", "Parent" : "411", "Child" : ["413", "414", "415"],
		"CDFG" : "mul_3101_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26.grp_mul_3101_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U654", "Parent" : "412"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26.grp_mul_3101_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U655", "Parent" : "412"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26.grp_mul_3101_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "412"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1_fu_70", "Parent" : "404", "Child" : ["417"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200_fu_77", "Parent" : "404", "Child" : ["419"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "418"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1_fu_84", "Parent" : "404", "Child" : ["421"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1",
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
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "420"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1_fu_92", "Parent" : "404", "Child" : ["423", "424"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "sext_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_209_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1_fu_92.p503_1_U", "Parent" : "422"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "422"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1201_fu_100", "Parent" : "404", "Child" : ["426"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1201",
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
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1201_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "425"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106", "Parent" : "404", "Child" : ["428", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "448", "453", "458", "463", "468"],
		"CDFG" : "rdc_mont_298",
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
					{"ID" : "428", "SubInstance" : "grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "427", "Child" : ["429"],
		"CDFG" : "rdc_mont_298_Pipeline_VITIS_LOOP_299_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "429", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_305", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_312", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_319", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_325", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_331", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_338", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_345", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_351", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_358", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_367", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_374", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.tmp_44_is_digit_lessthan_ct_fu_380", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.tmp_45_is_digit_lessthan_ct_fu_387", "Parent" : "427",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394", "Parent" : "427", "Child" : ["444", "445", "446", "447"],
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
	{"ID" : "444", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U399", "Parent" : "443"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U400", "Parent" : "443"},
	{"ID" : "446", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U401", "Parent" : "443"},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U402", "Parent" : "443"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401", "Parent" : "427", "Child" : ["449", "450", "451", "452"],
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
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U399", "Parent" : "448"},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U400", "Parent" : "448"},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U401", "Parent" : "448"},
	{"ID" : "452", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U402", "Parent" : "448"},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408", "Parent" : "427", "Child" : ["454", "455", "456", "457"],
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
	{"ID" : "454", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U399", "Parent" : "453"},
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U400", "Parent" : "453"},
	{"ID" : "456", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U401", "Parent" : "453"},
	{"ID" : "457", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U402", "Parent" : "453"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415", "Parent" : "427", "Child" : ["459", "460", "461", "462"],
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
	{"ID" : "459", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U399", "Parent" : "458"},
	{"ID" : "460", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U400", "Parent" : "458"},
	{"ID" : "461", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U401", "Parent" : "458"},
	{"ID" : "462", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U402", "Parent" : "458"},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422", "Parent" : "427", "Child" : ["464", "465", "466", "467"],
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
	{"ID" : "464", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U399", "Parent" : "463"},
	{"ID" : "465", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U400", "Parent" : "463"},
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U401", "Parent" : "463"},
	{"ID" : "467", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U402", "Parent" : "463"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429", "Parent" : "427", "Child" : ["469", "470", "471", "472"],
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
	{"ID" : "469", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U399", "Parent" : "468"},
	{"ID" : "470", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U400", "Parent" : "468"},
	{"ID" : "471", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U401", "Parent" : "468"},
	{"ID" : "472", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U402", "Parent" : "468"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5149_fu_116", "Parent" : "404", "Child" : ["474"],
		"CDFG" : "mp_mul_5149",
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
					{"ID" : "474", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "474", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "474", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8", "Parent" : "473", "Child" : ["475"],
		"CDFG" : "mul_4157",
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
					{"ID" : "475", "SubInstance" : "grp_mul_4157_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "475", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306", "Parent" : "474", "Child" : ["476", "477", "478"],
		"CDFG" : "mul_4157_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "476", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U411", "Parent" : "475"},
	{"ID" : "477", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U412", "Parent" : "475"},
	{"ID" : "478", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "475"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1202_fu_123", "Parent" : "404", "Child" : ["480"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1202",
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
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3301_fu_262.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1202_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "479"},
	{"ID" : "481", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1255_fu_270", "Parent" : "0", "Child" : ["482"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1255",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "zext_ln18_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln370", "Type" : "None", "Direction" : "I"},
			{"Name" : "npts_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_313_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1255_fu_270.flow_control_loop_pipe_sequential_init_U", "Parent" : "481"}]}


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
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1251 {
		zext_ln18_4 {Type I LastRead 0 FirstWrite -1}
		pts_X {Type I LastRead 0 FirstWrite -1}
		pt_new_X {Type O LastRead -1 FirstWrite 1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1253 {
		zext_ln18_4 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type I LastRead 0 FirstWrite -1}
		pt_new_Z {Type O LastRead -1 FirstWrite 1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1252 {
		zext_ln18_4 {Type I LastRead 0 FirstWrite -1}
		pts_X_2 {Type I LastRead 0 FirstWrite -1}
		pt_new_X {Type O LastRead -1 FirstWrite 1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_17_1254 {
		zext_ln18_4 {Type I LastRead 0 FirstWrite -1}
		pts_Z_2 {Type I LastRead 0 FirstWrite -1}
		pt_new_Z {Type O LastRead -1 FirstWrite 1}}
	fpadd503_1515 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1515_Pipeline_VITIS_LOOP_34_1 {
		zext_ln36_22 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln36_21 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_1515_Pipeline_VITIS_LOOP_40_2 {
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1515_Pipeline_VITIS_LOOP_47_3 {
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
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
		zext_ln64_10 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln64_9 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln64_8 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_27_Pipeline_VITIS_LOOP_69_2 {
		zext_ln64_8 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_436 {
		a {Type I LastRead 1 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_51 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_60 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_60_Pipeline_COL {
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
		coeff {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_589_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182 {
		b_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		add_ln205 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln201 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1183 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_298 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset1 {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_298_Pipeline_VITIS_LOOP_299_1 {
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
	mp_mul_5149 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157_Pipeline_COL {
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
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1184 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_331_2 {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_514743 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_245 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_245_Pipeline_COL {
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
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln201 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1192 {
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
	mp_mul_5149 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157_Pipeline_COL {
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
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1193 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_44 {
		c {Type IO LastRead 1 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_52 {
		a {Type I LastRead 1 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_61 {
		a {Type I LastRead 1 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_61_Pipeline_COL {
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
		coeff {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_588_out {Type O LastRead -1 FirstWrite 0}}
	mp_mul_51 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_60 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_60_Pipeline_COL {
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
		coeff {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_589_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179 {
		coeff {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln201 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1180 {
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
	mp_mul_5149 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157_Pipeline_COL {
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
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1181 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fpsub503_2_4 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset2 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2_4_Pipeline_VITIS_LOOP_62_1 {
		zext_ln64_15 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln64_14 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_2_4_Pipeline_VITIS_LOOP_69_2 {
		zext_ln64_14 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1 {
		c {Type IO LastRead 10 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1 {
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
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169 {
		c {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_6 {
		ma {Type I LastRead 6 FirstWrite -1}
		mb {Type I LastRead 10 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 16}}
	mul_4_1 {
		a {Type I LastRead 6 FirstWrite -1}
		b {Type I LastRead 10 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 16}}
	fpmul503_mont_5_1 {
		ma {Type I LastRead 6 FirstWrite -1}
		mc {Type IO LastRead 10 FirstWrite 16}}
	mul_5_1 {
		a {Type I LastRead 6 FirstWrite -1}
		c {Type IO LastRead 10 FirstWrite 16}}
	fp2sqr503_mont {
		c {Type IO LastRead 10 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172 {
		c {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_4 {
		ma {Type I LastRead 6 FirstWrite -1}
		mb {Type I LastRead 10 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 16}}
	mul_6 {
		a {Type I LastRead 6 FirstWrite -1}
		b {Type I LastRead 10 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 16}}
	fpmul503_mont_3 {
		ma {Type I LastRead 6 FirstWrite -1}
		mc {Type IO LastRead 10 FirstWrite 16}}
	mul_7 {
		a {Type I LastRead 6 FirstWrite -1}
		c {Type IO LastRead 10 FirstWrite 16}}
	fpadd503_1528 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset1 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1528_Pipeline_VITIS_LOOP_34_1 {
		zext_ln36_19 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln36_18 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln36_17 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_1528_Pipeline_VITIS_LOOP_40_2 {
		zext_ln36_17 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1528_Pipeline_VITIS_LOOP_47_3 {
		zext_ln36_17 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2_32 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2_32_Pipeline_VITIS_LOOP_62_1 {
		zext_ln64_17 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln64_16 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_2_32_Pipeline_VITIS_LOOP_69_2 {
		zext_ln64_16 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_3301 {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_5146100 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_3101 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_3101_Pipeline_COL {
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
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln201 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1201 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_298 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset1 {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_298_Pipeline_VITIS_LOOP_299_1 {
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
	mp_mul_5149 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157_Pipeline_COL {
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
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1202 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_313_1255 {
		pts_Z_2 {Type IO LastRead 0 FirstWrite 1}
		zext_ln18_4 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type IO LastRead 0 FirstWrite 1}
		pts_X_2 {Type IO LastRead 0 FirstWrite 1}
		pts_X {Type IO LastRead 0 FirstWrite 1}
		pt_new_X {Type I LastRead 1 FirstWrite -1}
		pt_new_Z {Type I LastRead 1 FirstWrite -1}
		zext_ln370 {Type I LastRead 0 FirstWrite -1}
		npts_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26335", "Max" : "26335"}
	, {"Name" : "Interval", "Min" : "26335", "Max" : "26335"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	coeff { ap_memory {  { coeff_address0 mem_address 1 6 }  { coeff_ce0 mem_ce 1 1 }  { coeff_q0 mem_dout 0 64 }  { coeff_address1 MemPortADDR2 1 6 }  { coeff_ce1 MemPortCE2 1 1 }  { coeff_q1 MemPortDOUT2 0 64 } } }
	npts_1 { ap_none {  { npts_1 in_data 0 32 } } }
	pts_Z_2 { ap_memory {  { pts_Z_2_address0 mem_address 1 6 }  { pts_Z_2_ce0 mem_ce 1 1 }  { pts_Z_2_we0 mem_we 1 1 }  { pts_Z_2_d0 mem_din 1 64 }  { pts_Z_2_q0 mem_dout 0 64 }  { pts_Z_2_address1 MemPortADDR2 1 6 }  { pts_Z_2_ce1 MemPortCE2 1 1 }  { pts_Z_2_q1 MemPortDOUT2 0 64 } } }
	pts_Z { ap_memory {  { pts_Z_address0 mem_address 1 6 }  { pts_Z_ce0 mem_ce 1 1 }  { pts_Z_we0 mem_we 1 1 }  { pts_Z_d0 mem_din 1 64 }  { pts_Z_q0 mem_dout 0 64 }  { pts_Z_address1 MemPortADDR2 1 6 }  { pts_Z_ce1 MemPortCE2 1 1 }  { pts_Z_q1 MemPortDOUT2 0 64 } } }
	pts_X_2 { ap_memory {  { pts_X_2_address0 mem_address 1 6 }  { pts_X_2_ce0 mem_ce 1 1 }  { pts_X_2_we0 mem_we 1 1 }  { pts_X_2_d0 mem_din 1 64 }  { pts_X_2_q0 mem_dout 0 64 }  { pts_X_2_address1 MemPortADDR2 1 6 }  { pts_X_2_ce1 MemPortCE2 1 1 }  { pts_X_2_q1 MemPortDOUT2 0 64 } } }
	pts_X { ap_memory {  { pts_X_address0 mem_address 1 6 }  { pts_X_ce0 mem_ce 1 1 }  { pts_X_we0 mem_we 1 1 }  { pts_X_d0 mem_din 1 64 }  { pts_X_q0 mem_dout 0 64 }  { pts_X_address1 MemPortADDR2 1 6 }  { pts_X_ce1 MemPortCE2 1 1 }  { pts_X_q1 MemPortDOUT2 0 64 } } }
}
