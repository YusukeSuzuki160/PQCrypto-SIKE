set moduleName EphemeralSecretAgreement_A_1_Outline_VITIS_LOOP_322_3
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
set C_modelName {EphemeralSecretAgreement_A.1_Outline_VITIS_LOOP_322_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict coeff { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X_1 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z_1 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ npts_1 int 32 regular  }
	{ coeff int 64 regular {array 48 { 1 } 1 1 }  }
	{ pts_X int 64 regular {array 56 { 2 } 1 1 }  }
	{ pts_X_1 int 64 regular {array 56 { 2 } 1 1 }  }
	{ pts_Z int 64 regular {array 56 { 2 } 1 1 }  }
	{ pts_Z_1 int 64 regular {array 56 { 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "npts_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coeff", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pts_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_X_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_Z_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ npts_1 sc_in sc_lv 32 signal 0 } 
	{ coeff_address0 sc_out sc_lv 6 signal 1 } 
	{ coeff_ce0 sc_out sc_logic 1 signal 1 } 
	{ coeff_q0 sc_in sc_lv 64 signal 1 } 
	{ pts_X_address0 sc_out sc_lv 6 signal 2 } 
	{ pts_X_ce0 sc_out sc_logic 1 signal 2 } 
	{ pts_X_we0 sc_out sc_logic 1 signal 2 } 
	{ pts_X_d0 sc_out sc_lv 64 signal 2 } 
	{ pts_X_q0 sc_in sc_lv 64 signal 2 } 
	{ pts_X_1_address0 sc_out sc_lv 6 signal 3 } 
	{ pts_X_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ pts_X_1_we0 sc_out sc_logic 1 signal 3 } 
	{ pts_X_1_d0 sc_out sc_lv 64 signal 3 } 
	{ pts_X_1_q0 sc_in sc_lv 64 signal 3 } 
	{ pts_Z_address0 sc_out sc_lv 6 signal 4 } 
	{ pts_Z_ce0 sc_out sc_logic 1 signal 4 } 
	{ pts_Z_we0 sc_out sc_logic 1 signal 4 } 
	{ pts_Z_d0 sc_out sc_lv 64 signal 4 } 
	{ pts_Z_q0 sc_in sc_lv 64 signal 4 } 
	{ pts_Z_1_address0 sc_out sc_lv 6 signal 5 } 
	{ pts_Z_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ pts_Z_1_we0 sc_out sc_logic 1 signal 5 } 
	{ pts_Z_1_d0 sc_out sc_lv 64 signal 5 } 
	{ pts_Z_1_q0 sc_in sc_lv 64 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "npts_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "npts_1", "role": "default" }} , 
 	{ "name": "coeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coeff", "role": "address0" }} , 
 	{ "name": "coeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff", "role": "ce0" }} , 
 	{ "name": "coeff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeff", "role": "q0" }} , 
 	{ "name": "pts_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X", "role": "address0" }} , 
 	{ "name": "pts_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "ce0" }} , 
 	{ "name": "pts_X_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "we0" }} , 
 	{ "name": "pts_X_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "d0" }} , 
 	{ "name": "pts_X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "q0" }} , 
 	{ "name": "pts_X_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X_1", "role": "address0" }} , 
 	{ "name": "pts_X_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_1", "role": "ce0" }} , 
 	{ "name": "pts_X_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_1", "role": "we0" }} , 
 	{ "name": "pts_X_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_1", "role": "d0" }} , 
 	{ "name": "pts_X_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_1", "role": "q0" }} , 
 	{ "name": "pts_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z", "role": "address0" }} , 
 	{ "name": "pts_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "ce0" }} , 
 	{ "name": "pts_Z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "we0" }} , 
 	{ "name": "pts_Z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "d0" }} , 
 	{ "name": "pts_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "q0" }} , 
 	{ "name": "pts_Z_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z_1", "role": "address0" }} , 
 	{ "name": "pts_Z_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_1", "role": "ce0" }} , 
 	{ "name": "pts_Z_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_1", "role": "we0" }} , 
 	{ "name": "pts_Z_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_1", "role": "d0" }} , 
 	{ "name": "pts_Z_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_1", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "14", "23", "29", "122", "215", "330", "336", "342", "417", "492", "501", "510", "516", "522"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Outline_VITIS_LOOP_322_3",
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
			{"Name" : "npts_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_5910_fu_225", "Port" : "coeff", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "215", "SubInstance" : "grp_fp2mul503_mont_59_fu_260", "Port" : "coeff", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_fpadd503_360_fu_182", "Port" : "a", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "23", "SubInstance" : "grp_fpsub503_5_fu_210", "Port" : "a", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_5910_fu_225", "Port" : "c_0", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "330", "SubInstance" : "grp_fpsub503_4_2111_fu_272", "Port" : "a", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "492", "SubInstance" : "grp_fpadd503_359_fu_315", "Port" : "c", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "522", "SubInstance" : "grp_fp2mul503_mont_231_1_fu_357", "Port" : "c_0", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "pts_X_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_fpadd503_360_fu_182", "Port" : "a", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "14", "SubInstance" : "grp_fpadd503_360_fu_197", "Port" : "a", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "23", "SubInstance" : "grp_fpsub503_5_fu_210", "Port" : "a", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_5910_fu_225", "Port" : "c_1", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "336", "SubInstance" : "grp_fpsub503_4_2111_fu_284", "Port" : "a", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "501", "SubInstance" : "grp_fpadd503_359_fu_326", "Port" : "c", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "522", "SubInstance" : "grp_fp2mul503_mont_231_1_fu_357", "Port" : "c_1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_fpadd503_360_fu_182", "Port" : "b", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "23", "SubInstance" : "grp_fpsub503_5_fu_210", "Port" : "b", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_5910_fu_225", "Port" : "c_0", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "330", "SubInstance" : "grp_fpsub503_4_2111_fu_272", "Port" : "c", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "417", "SubInstance" : "grp_fp2sqr503_mont_7_1_fu_304", "Port" : "c_0", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "510", "SubInstance" : "grp_fpsub503_4_2110_fu_337", "Port" : "a", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "522", "SubInstance" : "grp_fp2mul503_mont_231_1_fu_357", "Port" : "c_0", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "pts_Z_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_fpadd503_360_fu_182", "Port" : "b", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "14", "SubInstance" : "grp_fpadd503_360_fu_197", "Port" : "b", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "23", "SubInstance" : "grp_fpsub503_5_fu_210", "Port" : "b", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_5910_fu_225", "Port" : "c_1", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "336", "SubInstance" : "grp_fpsub503_4_2111_fu_284", "Port" : "c", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "417", "SubInstance" : "grp_fp2sqr503_mont_7_1_fu_304", "Port" : "c_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "516", "SubInstance" : "grp_fpsub503_4_2110_fu_347", "Port" : "a", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "522", "SubInstance" : "grp_fp2mul503_mont_231_1_fu_357", "Port" : "c_1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_fpadd503_360_fu_182", "Port" : "p503x2_1", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "14", "SubInstance" : "grp_fpadd503_360_fu_197", "Port" : "p503x2_1", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "23", "SubInstance" : "grp_fpsub503_5_fu_210", "Port" : "p503x2_1", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "330", "SubInstance" : "grp_fpsub503_4_2111_fu_272", "Port" : "p503x2_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "336", "SubInstance" : "grp_fpsub503_4_2111_fu_284", "Port" : "p503x2_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "342", "SubInstance" : "grp_fp2sqr503_mont_7_2_fu_296", "Port" : "p503x2_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "417", "SubInstance" : "grp_fp2sqr503_mont_7_1_fu_304", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "492", "SubInstance" : "grp_fpadd503_359_fu_315", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "501", "SubInstance" : "grp_fpadd503_359_fu_326", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "510", "SubInstance" : "grp_fpsub503_4_2110_fu_337", "Port" : "p503x2_1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "516", "SubInstance" : "grp_fpsub503_4_2110_fu_347", "Port" : "p503x2_1", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_5910_fu_225", "Port" : "p503_1", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "122", "SubInstance" : "grp_fp2mul503_mont_231_3_fu_248", "Port" : "p503_1", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "215", "SubInstance" : "grp_fp2mul503_mont_59_fu_260", "Port" : "p503_1", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "522", "SubInstance" : "grp_fp2mul503_mont_231_1_fu_357", "Port" : "p503_1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_5910_fu_225", "Port" : "p503p1_1", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "122", "SubInstance" : "grp_fp2mul503_mont_231_3_fu_248", "Port" : "p503p1_1", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "215", "SubInstance" : "grp_fp2mul503_mont_59_fu_260", "Port" : "p503p1_1", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "522", "SubInstance" : "grp_fp2mul503_mont_231_1_fu_357", "Port" : "p503p1_1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_322_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "23", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_182", "Parent" : "0", "Child" : ["6", "8", "11"],
		"CDFG" : "fpadd503_360",
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
					{"ID" : "6", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "8", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "11", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "11", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_182.grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50", "Parent" : "5", "Child" : ["7"],
		"CDFG" : "fpadd503_360_Pipeline_VITIS_LOOP_33_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln35_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln35_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_182.grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_182.grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62", "Parent" : "5", "Child" : ["9", "10"],
		"CDFG" : "fpadd503_360_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "carry_162_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_182.grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62.p503x2_1_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_182.grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_182.grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71", "Parent" : "5", "Child" : ["12", "13"],
		"CDFG" : "fpadd503_360_Pipeline_VITIS_LOOP_46_3",
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_182.grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71.p503x2_1_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_182.grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_197", "Parent" : "0", "Child" : ["15", "17", "20"],
		"CDFG" : "fpadd503_360",
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
					{"ID" : "15", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "17", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "20", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "20", "SubInstance" : "grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_197.grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50", "Parent" : "14", "Child" : ["16"],
		"CDFG" : "fpadd503_360_Pipeline_VITIS_LOOP_33_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln35_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln35_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_197.grp_fpadd503_360_Pipeline_VITIS_LOOP_33_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_197.grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62", "Parent" : "14", "Child" : ["18", "19"],
		"CDFG" : "fpadd503_360_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "carry_162_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_197.grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62.p503x2_1_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_197.grp_fpadd503_360_Pipeline_VITIS_LOOP_39_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_197.grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71", "Parent" : "14", "Child" : ["21", "22"],
		"CDFG" : "fpadd503_360_Pipeline_VITIS_LOOP_46_3",
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_197.grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71.p503x2_1_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_360_fu_197.grp_fpadd503_360_Pipeline_VITIS_LOOP_46_3_fu_71.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_5_fu_210", "Parent" : "0", "Child" : ["24", "26"],
		"CDFG" : "fpsub503_5",
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
					{"ID" : "24", "SubInstance" : "grp_fpsub503_5_Pipeline_VITIS_LOOP_61_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_fpsub503_5_Pipeline_VITIS_LOOP_61_1_fu_50", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_fpsub503_5_Pipeline_VITIS_LOOP_61_1_fu_50", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_fpsub503_5_Pipeline_VITIS_LOOP_68_2_fu_63", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_fpsub503_5_Pipeline_VITIS_LOOP_68_2_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_5_fu_210.grp_fpsub503_5_Pipeline_VITIS_LOOP_61_1_fu_50", "Parent" : "23", "Child" : ["25"],
		"CDFG" : "fpsub503_5_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln63_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln63_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_5_fu_210.grp_fpsub503_5_Pipeline_VITIS_LOOP_61_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_5_fu_210.grp_fpsub503_5_Pipeline_VITIS_LOOP_68_2_fu_63", "Parent" : "23", "Child" : ["27", "28"],
		"CDFG" : "fpsub503_5_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_5_fu_210.grp_fpsub503_5_Pipeline_VITIS_LOOP_68_2_fu_63.p503x2_1_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_5_fu_210.grp_fpsub503_5_Pipeline_VITIS_LOOP_68_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "59", "61", "63", "65", "68", "70", "84", "106", "108"],
		"CDFG" : "fp2mul503_mont_5910",
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
					{"ID" : "37", "SubInstance" : "grp_mp_mul_73_fu_108", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "59", "SubInstance" : "grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1_fu_123", "Port" : "a_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mp_mul_73_fu_108", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "59", "SubInstance" : "grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1_fu_123", "Port" : "a_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mp_mul_73_fu_108", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "61", "SubInstance" : "grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1145_fu_132", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_rdc_mont_135_fu_167", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_rdc_mont_2_fu_194", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_198_1_fu_151", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_rdc_mont_135_fu_167", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "108", "SubInstance" : "grp_rdc_mont_2_fu_194", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.t1_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.t2_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.tt1_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.tt1_1_U", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.tt2_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.tt2_1_U", "Parent" : "29"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.tt3_U", "Parent" : "29"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108", "Parent" : "29", "Child" : ["38"],
		"CDFG" : "mp_mul_73",
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
					{"ID" : "38", "SubInstance" : "grp_mul_84_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_mul_84_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_mul_84_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_mul_84_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30", "Parent" : "37", "Child" : ["39", "40", "41", "43", "46", "49", "51", "54"],
		"CDFG" : "mul_84",
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
					{"ID" : "43", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "54", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "54", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.acc_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.acc_1_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Parent" : "38", "Child" : ["42"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_54_1",
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
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68", "Parent" : "38", "Child" : ["44", "45"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_27_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U1478", "Parent" : "43"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75", "Parent" : "38", "Child" : ["47", "48"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_27_1106",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "B_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U1481", "Parent" : "46"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_77_2_fu_84", "Parent" : "38", "Child" : ["50"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_77_2",
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
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_77_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92", "Parent" : "38", "Child" : ["52", "53"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "B_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92.mul_64ns_64ns_128_1_1_U1487", "Parent" : "51"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "38", "Child" : ["55", "57"],
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
					{"ID" : "55", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "57", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "57", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "54", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "54", "Child" : ["58"],
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
	{"ID" : "58", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_73_fu_108.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1_fu_123", "Parent" : "29", "Child" : ["60"],
		"CDFG" : "fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1145_fu_132", "Parent" : "29", "Child" : ["62"],
		"CDFG" : "fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1145",
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
			{"Name" : "add_ln194", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1145_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_171_1_fu_141", "Parent" : "29", "Child" : ["64"],
		"CDFG" : "fp2mul503_mont_5910_Pipeline_VITIS_LOOP_171_1",
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
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_171_1_fu_141.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_198_1_fu_151", "Parent" : "29", "Child" : ["66", "67"],
		"CDFG" : "fp2mul503_mont_5910_Pipeline_VITIS_LOOP_198_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_198_1_fu_151.p503_1_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_198_1_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1146_fu_159", "Parent" : "29", "Child" : ["69"],
		"CDFG" : "fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1146",
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1146_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167", "Parent" : "29", "Child" : ["71", "73", "76", "79"],
		"CDFG" : "rdc_mont_135",
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
					{"ID" : "71", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_306_1_fu_200", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "73", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "76", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "76", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_rdc_mont_135_Pipeline_VITIS_LOOP_306_1_fu_200", "Parent" : "70", "Child" : ["72"],
		"CDFG" : "rdc_mont_135_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_rdc_mont_135_Pipeline_VITIS_LOOP_306_1_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207", "Parent" : "70", "Child" : ["74", "75"],
		"CDFG" : "rdc_mont_135_Pipeline_VITIS_LOOP_314_3",
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
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207.p503p1_1_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224", "Parent" : "70", "Child" : ["77", "78"],
		"CDFG" : "rdc_mont_135_Pipeline_VITIS_LOOP_340_5",
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
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224.p503p1_1_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_digit_x_digit_fu_901", "Parent" : "70", "Child" : ["80", "81", "82", "83"],
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_digit_x_digit_fu_901.mul_32ns_32ns_64_1_1_U338", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_digit_x_digit_fu_901.mul_32ns_32ns_64_1_1_U339", "Parent" : "79"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_digit_x_digit_fu_901.mul_32ns_32ns_64_1_1_U340", "Parent" : "79"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_135_fu_167.grp_digit_x_digit_fu_901.mul_32ns_32ns_64_1_1_U341", "Parent" : "79"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178", "Parent" : "29", "Child" : ["85"],
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
					{"ID" : "85", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18", "Parent" : "84", "Child" : ["86", "87", "88", "90", "93", "96", "98", "101"],
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
					{"ID" : "90", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "101", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "101", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.acc_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.acc_1_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "85", "Child" : ["89"],
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
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "85", "Child" : ["91", "92"],
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
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "90"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "85", "Child" : ["94", "95"],
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
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "93"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "85", "Child" : ["97"],
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
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "85", "Child" : ["99", "100"],
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
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "98"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "85", "Child" : ["102", "104"],
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
					{"ID" : "102", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "104", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "104", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "101", "Child" : ["103"],
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
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "101", "Child" : ["105"],
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
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_mp_mul_7163_fu_178.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_171_1147_fu_186", "Parent" : "29", "Child" : ["107"],
		"CDFG" : "fp2mul503_mont_5910_Pipeline_VITIS_LOOP_171_1147",
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
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_fp2mul503_mont_5910_Pipeline_VITIS_LOOP_171_1147_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194", "Parent" : "29", "Child" : ["109", "111", "114", "117"],
		"CDFG" : "rdc_mont_2",
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
					{"ID" : "109", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_227", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "111", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "114", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "114", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_227", "Parent" : "108", "Child" : ["110"],
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_227.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234", "Parent" : "108", "Child" : ["112", "113"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_314_3",
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
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234.p503p1_1_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251", "Parent" : "108", "Child" : ["115", "116"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_340_5",
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
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251.p503p1_1_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251.flow_control_loop_pipe_sequential_init_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_digit_x_digit_fu_992", "Parent" : "108", "Child" : ["118", "119", "120", "121"],
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
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U338", "Parent" : "117"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U339", "Parent" : "117"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U340", "Parent" : "117"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5910_fu_225.grp_rdc_mont_2_fu_194.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U341", "Parent" : "117"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248", "Parent" : "0", "Child" : ["123", "124", "125", "126", "127", "128", "129", "130", "152", "174", "176", "178", "180", "183", "185", "199", "201"],
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
					{"ID" : "130", "SubInstance" : "grp_mp_mul_7163_fu_74", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "174", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "185", "SubInstance" : "grp_rdc_mont_138_fu_142", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_mp_mul_7163_fu_86", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "174", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "201", "SubInstance" : "grp_rdc_mont_6_fu_159", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mp_mul_7163_fu_74", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "176", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_mp_mul_7163_fu_86", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "176", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_rdc_mont_138_fu_142", "Port" : "p503p1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "201", "SubInstance" : "grp_rdc_mont_6_fu_159", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.t1_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.t2_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.tt1_U", "Parent" : "122"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.tt1_1_U", "Parent" : "122"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.tt2_U", "Parent" : "122"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.tt2_1_U", "Parent" : "122"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.tt3_U", "Parent" : "122"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74", "Parent" : "122", "Child" : ["131"],
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
					{"ID" : "131", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18", "Parent" : "130", "Child" : ["132", "133", "134", "136", "139", "142", "144", "147"],
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
					{"ID" : "136", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "147", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "147", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.acc_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.acc_1_U", "Parent" : "131"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "131", "Child" : ["135"],
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
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "131", "Child" : ["137", "138"],
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
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "136"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "131", "Child" : ["140", "141"],
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
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "139"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "131", "Child" : ["143"],
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
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "131", "Child" : ["145", "146"],
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
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "144"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "131", "Child" : ["148", "150"],
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
					{"ID" : "148", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "150", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "150", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "147", "Child" : ["149"],
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
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "147", "Child" : ["151"],
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
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86", "Parent" : "122", "Child" : ["153"],
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
					{"ID" : "153", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18", "Parent" : "152", "Child" : ["154", "155", "156", "158", "161", "164", "166", "169"],
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
					{"ID" : "158", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "169", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "169", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.acc_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.acc_1_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "153", "Child" : ["157"],
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
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "153", "Child" : ["159", "160"],
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
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "158"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "158"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "153", "Child" : ["162", "163"],
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
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "161"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "153", "Child" : ["165"],
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
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "153", "Child" : ["167", "168"],
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
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "166"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "166"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "153", "Child" : ["170", "172"],
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
					{"ID" : "170", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "172", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "172", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "169", "Child" : ["171"],
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
	{"ID" : "171", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "169", "Child" : ["173"],
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
	{"ID" : "173", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98", "Parent" : "122", "Child" : ["175"],
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
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107", "Parent" : "122", "Child" : ["177"],
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
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "176"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1_fu_116", "Parent" : "122", "Child" : ["179"],
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
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "178"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126", "Parent" : "122", "Child" : ["181", "182"],
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
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126.p503_1_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "180"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173_fu_134", "Parent" : "122", "Child" : ["184"],
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
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142", "Parent" : "122", "Child" : ["186", "188", "191", "194"],
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
					{"ID" : "186", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "188", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "191", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "191", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Parent" : "185", "Child" : ["187"],
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
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Parent" : "185", "Child" : ["189", "190"],
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
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.p503p1_1_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Parent" : "185", "Child" : ["192", "193"],
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
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.p503p1_1_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "191"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820", "Parent" : "185", "Child" : ["195", "196", "197", "198"],
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
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U338", "Parent" : "194"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U339", "Parent" : "194"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U340", "Parent" : "194"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U341", "Parent" : "194"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174_fu_151", "Parent" : "122", "Child" : ["200"],
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
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159", "Parent" : "122", "Child" : ["202", "204", "207", "210"],
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
					{"ID" : "202", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "204", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "207", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "207", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Parent" : "201", "Child" : ["203"],
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
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213.flow_control_loop_pipe_sequential_init_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Parent" : "201", "Child" : ["205", "206"],
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
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.p503p1_1_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "204"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Parent" : "201", "Child" : ["208", "209"],
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
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.p503p1_1_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.flow_control_loop_pipe_sequential_init_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907", "Parent" : "201", "Child" : ["211", "212", "213", "214"],
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
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U338", "Parent" : "210"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U339", "Parent" : "210"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U340", "Parent" : "210"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_248.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U341", "Parent" : "210"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260", "Parent" : "0", "Child" : ["216", "217", "218", "219", "220", "221", "222", "223", "245", "267", "269", "271", "273", "276", "278", "292", "314", "316"],
		"CDFG" : "fp2mul503_mont_59",
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
					{"ID" : "223", "SubInstance" : "grp_mp_mul_74_fu_78", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "267", "SubInstance" : "grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1_fu_102", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "278", "SubInstance" : "grp_rdc_mont_138_fu_144", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_mp_mul_73_fu_90", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "267", "SubInstance" : "grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1_fu_102", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "316", "SubInstance" : "grp_rdc_mont_6_fu_169", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_mp_mul_74_fu_78", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "245", "SubInstance" : "grp_mp_mul_73_fu_90", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "269", "SubInstance" : "grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148_fu_111", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_rdc_mont_138_fu_144", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "316", "SubInstance" : "grp_rdc_mont_6_fu_169", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.t1_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.t2_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.tt1_U", "Parent" : "215"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.tt1_1_U", "Parent" : "215"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.tt2_U", "Parent" : "215"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.tt2_1_U", "Parent" : "215"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.tt3_U", "Parent" : "215"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78", "Parent" : "215", "Child" : ["224"],
		"CDFG" : "mp_mul_74",
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
					{"ID" : "224", "SubInstance" : "grp_mul_85_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "grp_mul_85_fu_20", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "grp_mul_85_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "224", "SubInstance" : "grp_mul_85_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20", "Parent" : "223", "Child" : ["225", "226", "227", "229", "232", "235", "237", "240"],
		"CDFG" : "mul_85",
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
					{"ID" : "229", "SubInstance" : "grp_mul_85_Pipeline_VITIS_LOOP_27_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "grp_mul_85_Pipeline_VITIS_LOOP_27_1105_fu_65", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mul_85_Pipeline_VITIS_LOOP_54_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "240", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mul_85_Pipeline_VITIS_LOOP_54_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "240", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.acc_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.acc_1_U", "Parent" : "224"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_54_1_fu_50", "Parent" : "224", "Child" : ["228"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_54_1",
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
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_54_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1_fu_58", "Parent" : "224", "Child" : ["230", "231"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_27_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "A_1_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U1586", "Parent" : "229"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1105_fu_65", "Parent" : "224", "Child" : ["233", "234"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_27_1105",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "B_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1105_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U1589", "Parent" : "232"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1105_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_77_2_fu_72", "Parent" : "224", "Child" : ["236"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_77_2",
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
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_77_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80", "Parent" : "224", "Child" : ["238", "239"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80.mul_64ns_64ns_128_1_1_U1594", "Parent" : "237"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "224", "Child" : ["241", "243"],
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
					{"ID" : "241", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "243", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "243", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "240", "Child" : ["242"],
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
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "240", "Child" : ["244"],
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
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "243"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90", "Parent" : "215", "Child" : ["246"],
		"CDFG" : "mp_mul_73",
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
					{"ID" : "246", "SubInstance" : "grp_mul_84_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_mul_84_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_mul_84_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "246", "SubInstance" : "grp_mul_84_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30", "Parent" : "245", "Child" : ["247", "248", "249", "251", "254", "257", "259", "262"],
		"CDFG" : "mul_84",
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
					{"ID" : "251", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "249", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "262", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "249", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "262", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.acc_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.acc_1_U", "Parent" : "246"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Parent" : "246", "Child" : ["250"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_54_1",
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
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68", "Parent" : "246", "Child" : ["252", "253"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_27_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U1478", "Parent" : "251"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "251"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75", "Parent" : "246", "Child" : ["255", "256"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_27_1106",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "B_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U1481", "Parent" : "254"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_77_2_fu_84", "Parent" : "246", "Child" : ["258"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_77_2",
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
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_77_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92", "Parent" : "246", "Child" : ["260", "261"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "B_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92.mul_64ns_64ns_128_1_1_U1487", "Parent" : "259"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "259"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "246", "Child" : ["263", "265"],
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
					{"ID" : "263", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "265", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "265", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "262", "Child" : ["264"],
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
	{"ID" : "264", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "262", "Child" : ["266"],
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
	{"ID" : "266", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1_fu_102", "Parent" : "215", "Child" : ["268"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148_fu_111", "Parent" : "215", "Child" : ["270"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148_fu_111.flow_control_loop_pipe_sequential_init_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1_fu_118", "Parent" : "215", "Child" : ["272"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1",
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
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1_fu_128", "Parent" : "215", "Child" : ["274", "275"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1_fu_128.p503_1_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "273"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1149_fu_136", "Parent" : "215", "Child" : ["277"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1149",
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
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1149_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144", "Parent" : "215", "Child" : ["279", "281", "284", "287"],
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
					{"ID" : "279", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "281", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "284", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "284", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Parent" : "278", "Child" : ["280"],
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
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Parent" : "278", "Child" : ["282", "283"],
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
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.p503p1_1_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "281"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Parent" : "278", "Child" : ["285", "286"],
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
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.p503p1_1_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "284"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820", "Parent" : "278", "Child" : ["288", "289", "290", "291"],
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
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U338", "Parent" : "287"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U339", "Parent" : "287"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U340", "Parent" : "287"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U341", "Parent" : "287"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153", "Parent" : "215", "Child" : ["293"],
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
					{"ID" : "293", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18", "Parent" : "292", "Child" : ["294", "295", "296", "298", "301", "304", "306", "309"],
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
					{"ID" : "298", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "309", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "309", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_1_U", "Parent" : "293"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "293", "Child" : ["297"],
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
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "293", "Child" : ["299", "300"],
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
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "298"},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "293", "Child" : ["302", "303"],
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
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "301"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "293", "Child" : ["305"],
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
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "293", "Child" : ["307", "308"],
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
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "306"},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "293", "Child" : ["310", "312"],
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
					{"ID" : "310", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "312", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "310", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "312", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "309", "Child" : ["311"],
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
	{"ID" : "311", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "309", "Child" : ["313"],
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
	{"ID" : "313", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1150_fu_161", "Parent" : "215", "Child" : ["315"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1150",
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
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1150_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "314"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169", "Parent" : "215", "Child" : ["317", "319", "322", "325"],
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
					{"ID" : "317", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "319", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "322", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "322", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Parent" : "316", "Child" : ["318"],
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
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213.flow_control_loop_pipe_sequential_init_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Parent" : "316", "Child" : ["320", "321"],
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
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.p503p1_1_U", "Parent" : "319"},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "319"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Parent" : "316", "Child" : ["323", "324"],
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
	{"ID" : "323", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.p503p1_1_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.flow_control_loop_pipe_sequential_init_U", "Parent" : "322"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907", "Parent" : "316", "Child" : ["326", "327", "328", "329"],
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
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U338", "Parent" : "325"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U339", "Parent" : "325"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U340", "Parent" : "325"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_260.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U341", "Parent" : "325"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_272", "Parent" : "0", "Child" : ["331", "333"],
		"CDFG" : "fpsub503_4_2111",
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
					{"ID" : "331", "SubInstance" : "grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1_fu_48", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1_fu_48", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "333", "SubInstance" : "grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_272.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1_fu_48", "Parent" : "330", "Child" : ["332"],
		"CDFG" : "fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "zext_ln63_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln63_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_272.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_272.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59", "Parent" : "330", "Child" : ["334", "335"],
		"CDFG" : "fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2",
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
			{"Name" : "zext_ln63_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_272.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59.p503x2_1_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_272.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59.flow_control_loop_pipe_sequential_init_U", "Parent" : "333"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_284", "Parent" : "0", "Child" : ["337", "339"],
		"CDFG" : "fpsub503_4_2111",
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
					{"ID" : "337", "SubInstance" : "grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1_fu_48", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "337", "SubInstance" : "grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1_fu_48", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "339", "SubInstance" : "grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_284.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1_fu_48", "Parent" : "336", "Child" : ["338"],
		"CDFG" : "fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "zext_ln63_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln63_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_284.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "337"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_284.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59", "Parent" : "336", "Child" : ["340", "341"],
		"CDFG" : "fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2",
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
			{"Name" : "zext_ln63_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_284.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59.p503x2_1_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2111_fu_284.grp_fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2_fu_59.flow_control_loop_pipe_sequential_init_U", "Parent" : "339"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296", "Parent" : "0", "Child" : ["343", "344", "345", "346", "348", "350", "353", "355", "386"],
		"CDFG" : "fp2sqr503_mont_7_2",
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
					{"ID" : "346", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "348", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "353", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "355", "SubInstance" : "grp_fpmul503_mont_7_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "348", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "386", "SubInstance" : "grp_fpmul503_mont_2_4_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "350", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.t1_U", "Parent" : "342"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.t2_U", "Parent" : "342"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.t3_U", "Parent" : "342"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1_fu_46", "Parent" : "342", "Child" : ["347"],
		"CDFG" : "fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "342", "Child" : ["349"],
		"CDFG" : "fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "348"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "342", "Child" : ["351", "352"],
		"CDFG" : "fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "350"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "350"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125_fu_74", "Parent" : "342", "Child" : ["354"],
		"CDFG" : "fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "353"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81", "Parent" : "342", "Child" : ["356"],
		"CDFG" : "fpmul503_mont_7",
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
					{"ID" : "356", "SubInstance" : "grp_mul_7_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_mul_7_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_mul_7_1_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18", "Parent" : "355", "Child" : ["357"],
		"CDFG" : "mul_7_1",
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
					{"ID" : "357", "SubInstance" : "grp_mul_7_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_mul_7_fu_16", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_mul_7_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16", "Parent" : "356", "Child" : ["358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385"],
		"CDFG" : "mul_7",
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
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U864", "Parent" : "357"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U865", "Parent" : "357"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U866", "Parent" : "357"},
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U867", "Parent" : "357"},
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U868", "Parent" : "357"},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U869", "Parent" : "357"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U870", "Parent" : "357"},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U871", "Parent" : "357"},
	{"ID" : "366", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U872", "Parent" : "357"},
	{"ID" : "367", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_56ns_119_1_1_U873", "Parent" : "357"},
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_56ns_119_1_1_U874", "Parent" : "357"},
	{"ID" : "369", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_62ns_125_1_1_U875", "Parent" : "357"},
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_62ns_125_1_1_U876", "Parent" : "357"},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_62ns_125_1_1_U877", "Parent" : "357"},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_62ns_125_1_1_U878", "Parent" : "357"},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_127_1_1_U879", "Parent" : "357"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_127_1_1_U880", "Parent" : "357"},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_65ns_128_1_1_U881", "Parent" : "357"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_65ns_128_1_1_U882", "Parent" : "357"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U883", "Parent" : "357"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U884", "Parent" : "357"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U885", "Parent" : "357"},
	{"ID" : "380", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_62ns_64_1_1_U886", "Parent" : "357"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U887", "Parent" : "357"},
	{"ID" : "382", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_62ns_64_1_1_U888", "Parent" : "357"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U889", "Parent" : "357"},
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64s_64_1_1_U890", "Parent" : "357"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64s_64_1_1_U891", "Parent" : "357"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89", "Parent" : "342", "Child" : ["387"],
		"CDFG" : "fpmul503_mont_2_4",
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
					{"ID" : "387", "SubInstance" : "grp_mul_2_5_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "387", "SubInstance" : "grp_mul_2_5_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16", "Parent" : "386", "Child" : ["388"],
		"CDFG" : "mul_2_5_1",
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
					{"ID" : "388", "SubInstance" : "grp_mul_2_5_fu_14", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "388", "SubInstance" : "grp_mul_2_5_fu_14", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14", "Parent" : "387", "Child" : ["389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416"],
		"CDFG" : "mul_2_5",
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
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U901", "Parent" : "388"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U902", "Parent" : "388"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U903", "Parent" : "388"},
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U904", "Parent" : "388"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U905", "Parent" : "388"},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U906", "Parent" : "388"},
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U907", "Parent" : "388"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U908", "Parent" : "388"},
	{"ID" : "397", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U909", "Parent" : "388"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_56ns_119_1_1_U910", "Parent" : "388"},
	{"ID" : "399", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_56ns_119_1_1_U911", "Parent" : "388"},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_62ns_125_1_1_U912", "Parent" : "388"},
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_62ns_125_1_1_U913", "Parent" : "388"},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_62ns_125_1_1_U914", "Parent" : "388"},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_62ns_125_1_1_U915", "Parent" : "388"},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_127_1_1_U916", "Parent" : "388"},
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_127_1_1_U917", "Parent" : "388"},
	{"ID" : "406", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_65ns_128_1_1_U918", "Parent" : "388"},
	{"ID" : "407", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_65ns_128_1_1_U919", "Parent" : "388"},
	{"ID" : "408", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U920", "Parent" : "388"},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U921", "Parent" : "388"},
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U922", "Parent" : "388"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_62ns_64_1_1_U923", "Parent" : "388"},
	{"ID" : "412", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U924", "Parent" : "388"},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_62ns_64_1_1_U925", "Parent" : "388"},
	{"ID" : "414", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U926", "Parent" : "388"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64s_64_1_1_U927", "Parent" : "388"},
	{"ID" : "416", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_296.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64s_64_1_1_U928", "Parent" : "388"},
	{"ID" : "417", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304", "Parent" : "0", "Child" : ["418", "419", "420", "421", "423", "425", "428", "430", "461"],
		"CDFG" : "fp2sqr503_mont_7_1",
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
					{"ID" : "421", "SubInstance" : "grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "423", "SubInstance" : "grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_61_1_fu_71", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "428", "SubInstance" : "grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1126_fu_90", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "430", "SubInstance" : "grp_fpmul503_mont_2_fu_98", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "421", "SubInstance" : "grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "423", "SubInstance" : "grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_61_1_fu_71", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "461", "SubInstance" : "grp_fpmul503_mont_2_3_fu_107", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "425", "SubInstance" : "grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_68_2_fu_82", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.t1_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.t2_U", "Parent" : "417"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.t3_U", "Parent" : "417"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1_fu_60", "Parent" : "417", "Child" : ["422"],
		"CDFG" : "fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln392_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_61_1_fu_71", "Parent" : "417", "Child" : ["424"],
		"CDFG" : "fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln392_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_61_1_fu_71.flow_control_loop_pipe_sequential_init_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_68_2_fu_82", "Parent" : "417", "Child" : ["426", "427"],
		"CDFG" : "fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_68_2_fu_82.p503x2_1_U", "Parent" : "425"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_68_2_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "425"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1126_fu_90", "Parent" : "417", "Child" : ["429"],
		"CDFG" : "fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1126",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln392_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1126_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "428"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98", "Parent" : "417", "Child" : ["431"],
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
					{"ID" : "431", "SubInstance" : "grp_mul_6_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_mul_6_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "431", "SubInstance" : "grp_mul_6_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28", "Parent" : "430", "Child" : ["432"],
		"CDFG" : "mul_6_1",
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
					{"ID" : "432", "SubInstance" : "grp_mul_2_1_1_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_mul_2_1_1_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_mul_2_1_1_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "432", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26", "Parent" : "431", "Child" : ["433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460"],
		"CDFG" : "mul_2_1_1_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "433", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_128_1_1_U3119", "Parent" : "432"},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_128_1_1_U3120", "Parent" : "432"},
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_128_1_1_U3121", "Parent" : "432"},
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_128_1_1_U3122", "Parent" : "432"},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_128_1_1_U3123", "Parent" : "432"},
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_128_1_1_U3124", "Parent" : "432"},
	{"ID" : "439", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_128_1_1_U3125", "Parent" : "432"},
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_128_1_1_U3126", "Parent" : "432"},
	{"ID" : "441", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_128_1_1_U3127", "Parent" : "432"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_56ns_119_1_1_U3128", "Parent" : "432"},
	{"ID" : "443", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_56ns_119_1_1_U3129", "Parent" : "432"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_62ns_125_1_1_U3130", "Parent" : "432"},
	{"ID" : "445", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_62ns_125_1_1_U3131", "Parent" : "432"},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_62ns_125_1_1_U3132", "Parent" : "432"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_62ns_125_1_1_U3133", "Parent" : "432"},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_127_1_1_U3134", "Parent" : "432"},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_64ns_127_1_1_U3135", "Parent" : "432"},
	{"ID" : "450", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_65ns_128_1_1_U3136", "Parent" : "432"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64ns_65ns_128_1_1_U3137", "Parent" : "432"},
	{"ID" : "452", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64s_64ns_64_1_1_U3138", "Parent" : "432"},
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64s_64ns_64_1_1_U3139", "Parent" : "432"},
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64s_64ns_64_1_1_U3140", "Parent" : "432"},
	{"ID" : "455", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64s_62ns_64_1_1_U3141", "Parent" : "432"},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64s_64ns_64_1_1_U3142", "Parent" : "432"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64s_62ns_64_1_1_U3143", "Parent" : "432"},
	{"ID" : "458", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64s_64ns_64_1_1_U3144", "Parent" : "432"},
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64s_64s_64_1_1_U3145", "Parent" : "432"},
	{"ID" : "460", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_fu_98.grp_mul_6_1_fu_28.grp_mul_2_1_1_1_fu_26.mul_64s_64s_64_1_1_U3146", "Parent" : "432"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107", "Parent" : "417", "Child" : ["462"],
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
					{"ID" : "462", "SubInstance" : "grp_mul_2_4_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "462", "SubInstance" : "grp_mul_2_4_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26", "Parent" : "461", "Child" : ["463"],
		"CDFG" : "mul_2_4_1",
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
					{"ID" : "463", "SubInstance" : "grp_mul_2_4_fu_24", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "463", "SubInstance" : "grp_mul_2_4_fu_24", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "463", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24", "Parent" : "462", "Child" : ["464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491"],
		"CDFG" : "mul_2_4",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "464", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_128_1_1_U3159", "Parent" : "463"},
	{"ID" : "465", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_128_1_1_U3160", "Parent" : "463"},
	{"ID" : "466", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_128_1_1_U3161", "Parent" : "463"},
	{"ID" : "467", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_128_1_1_U3162", "Parent" : "463"},
	{"ID" : "468", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_128_1_1_U3163", "Parent" : "463"},
	{"ID" : "469", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_128_1_1_U3164", "Parent" : "463"},
	{"ID" : "470", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_128_1_1_U3165", "Parent" : "463"},
	{"ID" : "471", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_128_1_1_U3166", "Parent" : "463"},
	{"ID" : "472", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_128_1_1_U3167", "Parent" : "463"},
	{"ID" : "473", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_56ns_119_1_1_U3168", "Parent" : "463"},
	{"ID" : "474", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_56ns_119_1_1_U3169", "Parent" : "463"},
	{"ID" : "475", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_62ns_125_1_1_U3170", "Parent" : "463"},
	{"ID" : "476", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_62ns_125_1_1_U3171", "Parent" : "463"},
	{"ID" : "477", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_62ns_125_1_1_U3172", "Parent" : "463"},
	{"ID" : "478", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_62ns_125_1_1_U3173", "Parent" : "463"},
	{"ID" : "479", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_127_1_1_U3174", "Parent" : "463"},
	{"ID" : "480", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_64ns_127_1_1_U3175", "Parent" : "463"},
	{"ID" : "481", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_65ns_128_1_1_U3176", "Parent" : "463"},
	{"ID" : "482", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64ns_65ns_128_1_1_U3177", "Parent" : "463"},
	{"ID" : "483", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64s_64ns_64_1_1_U3178", "Parent" : "463"},
	{"ID" : "484", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64s_64ns_64_1_1_U3179", "Parent" : "463"},
	{"ID" : "485", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64s_64ns_64_1_1_U3180", "Parent" : "463"},
	{"ID" : "486", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64s_62ns_64_1_1_U3181", "Parent" : "463"},
	{"ID" : "487", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64s_64ns_64_1_1_U3182", "Parent" : "463"},
	{"ID" : "488", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64s_62ns_64_1_1_U3183", "Parent" : "463"},
	{"ID" : "489", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64s_64ns_64_1_1_U3184", "Parent" : "463"},
	{"ID" : "490", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64s_64s_64_1_1_U3185", "Parent" : "463"},
	{"ID" : "491", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_1_fu_304.grp_fpmul503_mont_2_3_fu_107.grp_mul_2_4_1_fu_26.grp_mul_2_4_fu_24.mul_64s_64s_64_1_1_U3186", "Parent" : "463"},
	{"ID" : "492", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_315", "Parent" : "0", "Child" : ["493", "495", "498"],
		"CDFG" : "fpadd503_359",
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
					{"ID" : "493", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "493", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "493", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "495", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "498", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "495", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "498", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_315.grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42", "Parent" : "492", "Child" : ["494"],
		"CDFG" : "fpadd503_359_Pipeline_VITIS_LOOP_33_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln35_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_315.grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "493"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_315.grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53", "Parent" : "492", "Child" : ["496", "497"],
		"CDFG" : "fpadd503_359_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "zext_ln35_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_165_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_315.grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53.p503x2_1_U", "Parent" : "495"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_315.grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53.flow_control_loop_pipe_sequential_init_U", "Parent" : "495"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_315.grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63", "Parent" : "492", "Child" : ["499", "500"],
		"CDFG" : "fpadd503_359_Pipeline_VITIS_LOOP_46_3",
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
			{"Name" : "zext_ln35_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_315.grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63.p503x2_1_U", "Parent" : "498"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_315.grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "498"},
	{"ID" : "501", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_326", "Parent" : "0", "Child" : ["502", "504", "507"],
		"CDFG" : "fpadd503_359",
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
					{"ID" : "502", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "502", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "502", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "504", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "507", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "507", "SubInstance" : "grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_326.grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42", "Parent" : "501", "Child" : ["503"],
		"CDFG" : "fpadd503_359_Pipeline_VITIS_LOOP_33_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln35_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_326.grp_fpadd503_359_Pipeline_VITIS_LOOP_33_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "502"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_326.grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53", "Parent" : "501", "Child" : ["505", "506"],
		"CDFG" : "fpadd503_359_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "zext_ln35_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_165_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_326.grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53.p503x2_1_U", "Parent" : "504"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_326.grp_fpadd503_359_Pipeline_VITIS_LOOP_39_2_fu_53.flow_control_loop_pipe_sequential_init_U", "Parent" : "504"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_326.grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63", "Parent" : "501", "Child" : ["508", "509"],
		"CDFG" : "fpadd503_359_Pipeline_VITIS_LOOP_46_3",
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
			{"Name" : "zext_ln35_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_326.grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63.p503x2_1_U", "Parent" : "507"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_359_fu_326.grp_fpadd503_359_Pipeline_VITIS_LOOP_46_3_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "507"},
	{"ID" : "510", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_337", "Parent" : "0", "Child" : ["511", "513"],
		"CDFG" : "fpsub503_4_2110",
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
					{"ID" : "511", "SubInstance" : "grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1_fu_40", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "511", "SubInstance" : "grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1_fu_40", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "513", "SubInstance" : "grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "513", "SubInstance" : "grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_337.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1_fu_40", "Parent" : "510", "Child" : ["512"],
		"CDFG" : "fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "zext_ln63_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_337.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1_fu_40.flow_control_loop_pipe_sequential_init_U", "Parent" : "511"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_337.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50", "Parent" : "510", "Child" : ["514", "515"],
		"CDFG" : "fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_337.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50.p503x2_1_U", "Parent" : "513"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_337.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "513"},
	{"ID" : "516", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_347", "Parent" : "0", "Child" : ["517", "519"],
		"CDFG" : "fpsub503_4_2110",
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
					{"ID" : "517", "SubInstance" : "grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1_fu_40", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "517", "SubInstance" : "grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1_fu_40", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "519", "SubInstance" : "grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "519", "SubInstance" : "grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_347.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1_fu_40", "Parent" : "516", "Child" : ["518"],
		"CDFG" : "fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "zext_ln63_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_347.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1_fu_40.flow_control_loop_pipe_sequential_init_U", "Parent" : "517"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_347.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50", "Parent" : "516", "Child" : ["520", "521"],
		"CDFG" : "fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_347.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50.p503x2_1_U", "Parent" : "519"},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2110_fu_347.grp_fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "519"},
	{"ID" : "522", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357", "Parent" : "0", "Child" : ["523", "524", "525", "526", "527", "528", "529", "530", "552", "574", "576", "578", "580", "583", "585", "599", "621", "623"],
		"CDFG" : "fp2mul503_mont_231_1",
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
					{"ID" : "530", "SubInstance" : "grp_mp_mul_4_fu_98", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "574", "SubInstance" : "grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1_fu_126", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "585", "SubInstance" : "grp_rdc_mont_135_fu_172", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "552", "SubInstance" : "grp_mp_mul_4_fu_112", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "574", "SubInstance" : "grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1_fu_126", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "623", "SubInstance" : "grp_rdc_mont_2_fu_198", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "530", "SubInstance" : "grp_mp_mul_4_fu_98", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "576", "SubInstance" : "grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1178_fu_137", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "552", "SubInstance" : "grp_mp_mul_4_fu_112", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "576", "SubInstance" : "grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1178_fu_137", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_198_1_fu_156", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "585", "SubInstance" : "grp_rdc_mont_135_fu_172", "Port" : "p503p1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "623", "SubInstance" : "grp_rdc_mont_2_fu_198", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.t1_U", "Parent" : "522"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.t2_U", "Parent" : "522"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.tt1_U", "Parent" : "522"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.tt1_1_U", "Parent" : "522"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.tt2_U", "Parent" : "522"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.tt2_1_U", "Parent" : "522"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.tt3_U", "Parent" : "522"},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98", "Parent" : "522", "Child" : ["531"],
		"CDFG" : "mp_mul_4",
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
					{"ID" : "531", "SubInstance" : "grp_mul_6168_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "531", "SubInstance" : "grp_mul_6168_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "531", "SubInstance" : "grp_mul_6168_fu_28", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "531", "SubInstance" : "grp_mul_6168_fu_28", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28", "Parent" : "530", "Child" : ["532", "533", "534", "536", "539", "542", "544", "547"],
		"CDFG" : "mul_6168",
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
					{"ID" : "536", "SubInstance" : "grp_mul_6168_Pipeline_VITIS_LOOP_27_1_fu_70", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "539", "SubInstance" : "grp_mul_6168_Pipeline_VITIS_LOOP_27_1115_fu_78", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "534", "SubInstance" : "grp_mul_6168_Pipeline_VITIS_LOOP_54_1_fu_62", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "547", "SubInstance" : "grp_convert_blocks_to_digits_fu_101", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "534", "SubInstance" : "grp_mul_6168_Pipeline_VITIS_LOOP_54_1_fu_62", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "547", "SubInstance" : "grp_convert_blocks_to_digits_fu_101", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "532", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.acc_U", "Parent" : "531"},
	{"ID" : "533", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.acc_1_U", "Parent" : "531"},
	{"ID" : "534", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_54_1_fu_62", "Parent" : "531", "Child" : ["535"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_54_1",
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
	{"ID" : "535", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_54_1_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "534"},
	{"ID" : "536", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1_fu_70", "Parent" : "531", "Child" : ["537", "538"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_27_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "537", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1_fu_70.partset_512ns_512ns_64ns_32ns_512_1_1_U3224", "Parent" : "536"},
	{"ID" : "538", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "536"},
	{"ID" : "539", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1115_fu_78", "Parent" : "531", "Child" : ["540", "541"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_27_1115",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "B_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "540", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1115_fu_78.partset_512ns_512ns_64ns_32ns_512_1_1_U3228", "Parent" : "539"},
	{"ID" : "541", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1115_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "539"},
	{"ID" : "542", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_77_2_fu_85", "Parent" : "531", "Child" : ["543"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_77_2",
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
	{"ID" : "543", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_77_2_fu_85.flow_control_loop_pipe_sequential_init_U", "Parent" : "542"},
	{"ID" : "544", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_93", "Parent" : "531", "Child" : ["545", "546"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "B_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "545", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_93.mul_64ns_64ns_128_1_1_U3233", "Parent" : "544"},
	{"ID" : "546", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "544"},
	{"ID" : "547", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101", "Parent" : "531", "Child" : ["548", "550"],
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
					{"ID" : "548", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "550", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "548", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "550", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "548", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "547", "Child" : ["549"],
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
	{"ID" : "549", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "548"},
	{"ID" : "550", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "547", "Child" : ["551"],
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
	{"ID" : "551", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_98.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "550"},
	{"ID" : "552", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112", "Parent" : "522", "Child" : ["553"],
		"CDFG" : "mp_mul_4",
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
					{"ID" : "553", "SubInstance" : "grp_mul_6168_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "553", "SubInstance" : "grp_mul_6168_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "553", "SubInstance" : "grp_mul_6168_fu_28", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "553", "SubInstance" : "grp_mul_6168_fu_28", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28", "Parent" : "552", "Child" : ["554", "555", "556", "558", "561", "564", "566", "569"],
		"CDFG" : "mul_6168",
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
					{"ID" : "558", "SubInstance" : "grp_mul_6168_Pipeline_VITIS_LOOP_27_1_fu_70", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "561", "SubInstance" : "grp_mul_6168_Pipeline_VITIS_LOOP_27_1115_fu_78", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "556", "SubInstance" : "grp_mul_6168_Pipeline_VITIS_LOOP_54_1_fu_62", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "569", "SubInstance" : "grp_convert_blocks_to_digits_fu_101", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "556", "SubInstance" : "grp_mul_6168_Pipeline_VITIS_LOOP_54_1_fu_62", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "569", "SubInstance" : "grp_convert_blocks_to_digits_fu_101", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "554", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.acc_U", "Parent" : "553"},
	{"ID" : "555", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.acc_1_U", "Parent" : "553"},
	{"ID" : "556", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_54_1_fu_62", "Parent" : "553", "Child" : ["557"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_54_1",
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
	{"ID" : "557", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_54_1_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "556"},
	{"ID" : "558", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1_fu_70", "Parent" : "553", "Child" : ["559", "560"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_27_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "559", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1_fu_70.partset_512ns_512ns_64ns_32ns_512_1_1_U3224", "Parent" : "558"},
	{"ID" : "560", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "558"},
	{"ID" : "561", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1115_fu_78", "Parent" : "553", "Child" : ["562", "563"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_27_1115",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "B_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "562", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1115_fu_78.partset_512ns_512ns_64ns_32ns_512_1_1_U3228", "Parent" : "561"},
	{"ID" : "563", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_27_1115_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "561"},
	{"ID" : "564", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_77_2_fu_85", "Parent" : "553", "Child" : ["565"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_77_2",
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
	{"ID" : "565", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_77_2_fu_85.flow_control_loop_pipe_sequential_init_U", "Parent" : "564"},
	{"ID" : "566", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_93", "Parent" : "553", "Child" : ["567", "568"],
		"CDFG" : "mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "B_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "567", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_93.mul_64ns_64ns_128_1_1_U3233", "Parent" : "566"},
	{"ID" : "568", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "566"},
	{"ID" : "569", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101", "Parent" : "553", "Child" : ["570", "572"],
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
					{"ID" : "570", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "572", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "570", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "572", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "570", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "569", "Child" : ["571"],
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
	{"ID" : "571", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "570"},
	{"ID" : "572", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "569", "Child" : ["573"],
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
	{"ID" : "573", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_4_fu_112.grp_mul_6168_fu_28.grp_convert_blocks_to_digits_fu_101.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "572"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1_fu_126", "Parent" : "522", "Child" : ["575"],
		"CDFG" : "fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln392_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln392_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "575", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "574"},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1178_fu_137", "Parent" : "522", "Child" : ["577"],
		"CDFG" : "fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1178",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1178_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "576"},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_171_1_fu_146", "Parent" : "522", "Child" : ["579"],
		"CDFG" : "fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_171_1",
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
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_171_1_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "578"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_198_1_fu_156", "Parent" : "522", "Child" : ["581", "582"],
		"CDFG" : "fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_198_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_198_1_fu_156.p503_1_U", "Parent" : "580"},
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_198_1_fu_156.flow_control_loop_pipe_sequential_init_U", "Parent" : "580"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1179_fu_164", "Parent" : "522", "Child" : ["584"],
		"CDFG" : "fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1179",
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
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1179_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "583"},
	{"ID" : "585", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172", "Parent" : "522", "Child" : ["586", "588", "591", "594"],
		"CDFG" : "rdc_mont_135",
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
					{"ID" : "586", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_306_1_fu_200", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "588", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "591", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "588", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "591", "SubInstance" : "grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_rdc_mont_135_Pipeline_VITIS_LOOP_306_1_fu_200", "Parent" : "585", "Child" : ["587"],
		"CDFG" : "rdc_mont_135_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "587", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_rdc_mont_135_Pipeline_VITIS_LOOP_306_1_fu_200.flow_control_loop_pipe_sequential_init_U", "Parent" : "586"},
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207", "Parent" : "585", "Child" : ["589", "590"],
		"CDFG" : "rdc_mont_135_Pipeline_VITIS_LOOP_314_3",
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
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "589", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207.p503p1_1_U", "Parent" : "588"},
	{"ID" : "590", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_rdc_mont_135_Pipeline_VITIS_LOOP_314_3_fu_207.flow_control_loop_pipe_sequential_init_U", "Parent" : "588"},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224", "Parent" : "585", "Child" : ["592", "593"],
		"CDFG" : "rdc_mont_135_Pipeline_VITIS_LOOP_340_5",
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
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "592", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224.p503p1_1_U", "Parent" : "591"},
	{"ID" : "593", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_rdc_mont_135_Pipeline_VITIS_LOOP_340_5_fu_224.flow_control_loop_pipe_sequential_init_U", "Parent" : "591"},
	{"ID" : "594", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_digit_x_digit_fu_901", "Parent" : "585", "Child" : ["595", "596", "597", "598"],
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
	{"ID" : "595", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_digit_x_digit_fu_901.mul_32ns_32ns_64_1_1_U338", "Parent" : "594"},
	{"ID" : "596", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_digit_x_digit_fu_901.mul_32ns_32ns_64_1_1_U339", "Parent" : "594"},
	{"ID" : "597", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_digit_x_digit_fu_901.mul_32ns_32ns_64_1_1_U340", "Parent" : "594"},
	{"ID" : "598", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_135_fu_172.grp_digit_x_digit_fu_901.mul_32ns_32ns_64_1_1_U341", "Parent" : "594"},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182", "Parent" : "522", "Child" : ["600"],
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
					{"ID" : "600", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "600", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "600", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "600", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "600", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18", "Parent" : "599", "Child" : ["601", "602", "603", "605", "608", "611", "613", "616"],
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
					{"ID" : "605", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "608", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "603", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "616", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "603", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "616", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "601", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.acc_U", "Parent" : "600"},
	{"ID" : "602", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.acc_1_U", "Parent" : "600"},
	{"ID" : "603", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "600", "Child" : ["604"],
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
	{"ID" : "604", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "603"},
	{"ID" : "605", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "600", "Child" : ["606", "607"],
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
	{"ID" : "606", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "605"},
	{"ID" : "607", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "605"},
	{"ID" : "608", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "600", "Child" : ["609", "610"],
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
	{"ID" : "609", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "608"},
	{"ID" : "610", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "608"},
	{"ID" : "611", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "600", "Child" : ["612"],
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
	{"ID" : "612", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "611"},
	{"ID" : "613", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "600", "Child" : ["614", "615"],
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
	{"ID" : "614", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "613"},
	{"ID" : "615", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "613"},
	{"ID" : "616", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "600", "Child" : ["617", "619"],
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
					{"ID" : "617", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "619", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "619", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "617", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "616", "Child" : ["618"],
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
	{"ID" : "618", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "617"},
	{"ID" : "619", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "616", "Child" : ["620"],
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
	{"ID" : "620", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_mp_mul_7163_fu_182.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "619"},
	{"ID" : "621", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_171_1180_fu_190", "Parent" : "522", "Child" : ["622"],
		"CDFG" : "fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_171_1180",
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
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_171_1180_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "621"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198", "Parent" : "522", "Child" : ["624", "626", "629", "632"],
		"CDFG" : "rdc_mont_2",
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
					{"ID" : "624", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_227", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "626", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "629", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "626", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "629", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_227", "Parent" : "623", "Child" : ["625"],
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "625", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_227.flow_control_loop_pipe_sequential_init_U", "Parent" : "624"},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234", "Parent" : "623", "Child" : ["627", "628"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_314_3",
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
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "627", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234.p503p1_1_U", "Parent" : "626"},
	{"ID" : "628", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_rdc_mont_2_Pipeline_VITIS_LOOP_314_3_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "626"},
	{"ID" : "629", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251", "Parent" : "623", "Child" : ["630", "631"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_340_5",
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
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "630", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251.p503p1_1_U", "Parent" : "629"},
	{"ID" : "631", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_rdc_mont_2_Pipeline_VITIS_LOOP_340_5_fu_251.flow_control_loop_pipe_sequential_init_U", "Parent" : "629"},
	{"ID" : "632", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_digit_x_digit_fu_992", "Parent" : "623", "Child" : ["633", "634", "635", "636"],
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
	{"ID" : "633", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U338", "Parent" : "632"},
	{"ID" : "634", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U339", "Parent" : "632"},
	{"ID" : "635", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U340", "Parent" : "632"},
	{"ID" : "636", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_1_fu_357.grp_rdc_mont_2_fu_198.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U341", "Parent" : "632"}]}


set ArgLastReadFirstWriteLatency {
	EphemeralSecretAgreement_A_1_Outline_VITIS_LOOP_322_3 {
		npts_1 {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		pts_X {Type IO LastRead 0 FirstWrite -1}
		pts_X_1 {Type IO LastRead 0 FirstWrite -1}
		pts_Z {Type IO LastRead 0 FirstWrite -1}
		pts_Z_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_360 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_360_Pipeline_VITIS_LOOP_33_1 {
		zext_ln35_12 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln35_11 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_360_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_162_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_360_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_360 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_360_Pipeline_VITIS_LOOP_33_1 {
		zext_ln35_12 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln35_11 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_360_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_162_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_360_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_5 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_5_Pipeline_VITIS_LOOP_61_1 {
		zext_ln63_2 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln63_1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_5_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_5910 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_0_offset {Type I LastRead 8 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		c_1_offset {Type I LastRead 12 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_73 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_84 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_27_1106 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		B_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_2_reload {Type I LastRead 0 FirstWrite -1}
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
	fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1145 {
		b_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		add_ln194 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_5910_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_5910_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_5910_Pipeline_VITIS_LOOP_389_1146 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_135 {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_135_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_135_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_86_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_135_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_90_out {Type O LastRead -1 FirstWrite 2}
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
	fp2mul503_mont_5910_Pipeline_VITIS_LOOP_171_1147 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_2 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_59_out {Type O LastRead -1 FirstWrite 2}
		u_27_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_63_out {Type O LastRead -1 FirstWrite 2}
		u_31_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
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
	fp2mul503_mont_59 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_74 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_85 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_27_1105 {
		coeff {Type I LastRead 0 FirstWrite -1}
		B_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_1_reload {Type I LastRead 0 FirstWrite -1}
		B_1_reload {Type I LastRead 0 FirstWrite -1}
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
	mp_mul_73 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_84 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_27_1106 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		B_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_2_reload {Type I LastRead 0 FirstWrite -1}
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
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148 {
		coeff {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1149 {
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
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1150 {
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
	fpsub503_4_2111 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1 {
		zext_ln63_7 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln63_6 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2 {
		zext_ln63_6 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2111 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2111_Pipeline_VITIS_LOOP_61_1 {
		zext_ln63_7 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln63_6 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_2111_Pipeline_VITIS_LOOP_68_2 {
		zext_ln63_6 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_2 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_7 {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_7_1 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_7 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont_2_4 {
		ma {Type I LastRead 10 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 20}}
	mul_2_5_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	mul_2_5 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	fp2sqr503_mont_7_1 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1 {
		zext_ln392_3 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_61_1 {
		zext_ln392_3 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_1_Pipeline_VITIS_LOOP_389_1126 {
		zext_ln392_3 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_2 {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	mul_6_1 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}
		c_offset {Type I LastRead 0 FirstWrite -1}}
	mul_2_1_1_1 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}
		c_offset {Type I LastRead 20 FirstWrite -1}}
	fpmul503_mont_2_3 {
		ma {Type I LastRead 10 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 20}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	mul_2_4_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}
		c_offset {Type I LastRead 0 FirstWrite -1}}
	mul_2_4 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}
		c_offset {Type I LastRead 0 FirstWrite -1}}
	fpadd503_359 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_359_Pipeline_VITIS_LOOP_33_1 {
		zext_ln35_13 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_359_Pipeline_VITIS_LOOP_39_2 {
		zext_ln35_13 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_165_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_359_Pipeline_VITIS_LOOP_46_3 {
		zext_ln35_13 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_359 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_359_Pipeline_VITIS_LOOP_33_1 {
		zext_ln35_13 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_359_Pipeline_VITIS_LOOP_39_2 {
		zext_ln35_13 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_165_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_359_Pipeline_VITIS_LOOP_46_3 {
		zext_ln35_13 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2110 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1 {
		zext_ln63_8 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2110 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2110_Pipeline_VITIS_LOOP_61_1 {
		zext_ln63_8 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_2110_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_231_1 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_4 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6168 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_27_1 {
		zext_ln31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_27_1115 {
		b {Type I LastRead 0 FirstWrite -1}
		B_11_out {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_11_reload {Type I LastRead 0 FirstWrite -1}
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
	mp_mul_4 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6168 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_27_1 {
		zext_ln31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_27_1115 {
		b {Type I LastRead 0 FirstWrite -1}
		B_11_out {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6168_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_11_reload {Type I LastRead 0 FirstWrite -1}
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
	fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1 {
		zext_ln392_51 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type I LastRead 0 FirstWrite -1}
		zext_ln392_50 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1178 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_389_1179 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_135 {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_135_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_135_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_86_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_135_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_90_out {Type O LastRead -1 FirstWrite 2}
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
	fp2mul503_mont_231_1_Pipeline_VITIS_LOOP_171_1180 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_2 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_59_out {Type O LastRead -1 FirstWrite 2}
		u_27_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_63_out {Type O LastRead -1 FirstWrite 2}
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
	npts_1 { ap_none {  { npts_1 in_data 0 32 } } }
	coeff { ap_memory {  { coeff_address0 mem_address 1 6 }  { coeff_ce0 mem_ce 1 1 }  { coeff_q0 mem_dout 0 64 } } }
	pts_X { ap_memory {  { pts_X_address0 mem_address 1 6 }  { pts_X_ce0 mem_ce 1 1 }  { pts_X_we0 mem_we 1 1 }  { pts_X_d0 mem_din 1 64 }  { pts_X_q0 mem_dout 0 64 } } }
	pts_X_1 { ap_memory {  { pts_X_1_address0 mem_address 1 6 }  { pts_X_1_ce0 mem_ce 1 1 }  { pts_X_1_we0 mem_we 1 1 }  { pts_X_1_d0 mem_din 1 64 }  { pts_X_1_q0 mem_dout 0 64 } } }
	pts_Z { ap_memory {  { pts_Z_address0 mem_address 1 6 }  { pts_Z_ce0 mem_ce 1 1 }  { pts_Z_we0 mem_we 1 1 }  { pts_Z_d0 mem_din 1 64 }  { pts_Z_q0 mem_dout 0 64 } } }
	pts_Z_1 { ap_memory {  { pts_Z_1_address0 mem_address 1 6 }  { pts_Z_1_ce0 mem_ce 1 1 }  { pts_Z_1_we0 mem_we 1 1 }  { pts_Z_1_d0 mem_din 1 64 }  { pts_Z_1_q0 mem_dout 0 64 } } }
}
