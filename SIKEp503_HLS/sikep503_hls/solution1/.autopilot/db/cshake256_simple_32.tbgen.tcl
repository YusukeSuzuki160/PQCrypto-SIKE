set moduleName cshake256_simple_32
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
set C_modelName {cshake256_simple.32}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ephemeralsk { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict in_0 { MEM_WIDTH 8 MEM_SIZE 107 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict in_1 { MEM_WIDTH 8 MEM_SIZE 107 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict in_2 { MEM_WIDTH 8 MEM_SIZE 107 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict in_3 { MEM_WIDTH 8 MEM_SIZE 107 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ephemeralsk int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ in_0 int 8 regular {array 107 { 1 1 } 1 1 }  }
	{ in_1 int 8 regular {array 107 { 1 1 } 1 1 }  }
	{ in_2 int 8 regular {array 107 { 1 1 } 1 1 }  }
	{ in_3 int 8 regular {array 107 { 1 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ephemeralsk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ephemeralsk_address0 sc_out sc_lv 5 signal 0 } 
	{ ephemeralsk_ce0 sc_out sc_logic 1 signal 0 } 
	{ ephemeralsk_we0 sc_out sc_logic 1 signal 0 } 
	{ ephemeralsk_d0 sc_out sc_lv 8 signal 0 } 
	{ in_0_address0 sc_out sc_lv 7 signal 1 } 
	{ in_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_0_q0 sc_in sc_lv 8 signal 1 } 
	{ in_0_address1 sc_out sc_lv 7 signal 1 } 
	{ in_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ in_0_q1 sc_in sc_lv 8 signal 1 } 
	{ in_1_address0 sc_out sc_lv 7 signal 2 } 
	{ in_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_1_q0 sc_in sc_lv 8 signal 2 } 
	{ in_1_address1 sc_out sc_lv 7 signal 2 } 
	{ in_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ in_1_q1 sc_in sc_lv 8 signal 2 } 
	{ in_2_address0 sc_out sc_lv 7 signal 3 } 
	{ in_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_2_q0 sc_in sc_lv 8 signal 3 } 
	{ in_2_address1 sc_out sc_lv 7 signal 3 } 
	{ in_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ in_2_q1 sc_in sc_lv 8 signal 3 } 
	{ in_3_address0 sc_out sc_lv 7 signal 4 } 
	{ in_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_3_q0 sc_in sc_lv 8 signal 4 } 
	{ in_3_address1 sc_out sc_lv 7 signal 4 } 
	{ in_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ in_3_q1 sc_in sc_lv 8 signal 4 } 
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
 	{ "name": "ephemeralsk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "we0" }} , 
 	{ "name": "ephemeralsk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "d0" }} , 
 	{ "name": "in_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_0", "role": "address0" }} , 
 	{ "name": "in_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_0", "role": "ce0" }} , 
 	{ "name": "in_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_0", "role": "q0" }} , 
 	{ "name": "in_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_0", "role": "address1" }} , 
 	{ "name": "in_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_0", "role": "ce1" }} , 
 	{ "name": "in_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_0", "role": "q1" }} , 
 	{ "name": "in_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_1", "role": "address0" }} , 
 	{ "name": "in_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_1", "role": "ce0" }} , 
 	{ "name": "in_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_1", "role": "q0" }} , 
 	{ "name": "in_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_1", "role": "address1" }} , 
 	{ "name": "in_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_1", "role": "ce1" }} , 
 	{ "name": "in_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_1", "role": "q1" }} , 
 	{ "name": "in_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_2", "role": "address0" }} , 
 	{ "name": "in_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_2", "role": "ce0" }} , 
 	{ "name": "in_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_2", "role": "q0" }} , 
 	{ "name": "in_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_2", "role": "address1" }} , 
 	{ "name": "in_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_2", "role": "ce1" }} , 
 	{ "name": "in_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_2", "role": "q1" }} , 
 	{ "name": "in_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_3", "role": "address0" }} , 
 	{ "name": "in_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_3", "role": "ce0" }} , 
 	{ "name": "in_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_3", "role": "q0" }} , 
 	{ "name": "in_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_3", "role": "address1" }} , 
 	{ "name": "in_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_3", "role": "ce1" }} , 
 	{ "name": "in_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_3", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "15", "19", "21"],
		"CDFG" : "cshake256_simple_32",
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
			{"Name" : "ephemeralsk", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_cshake256_simple_32_Pipeline_VITIS_LOOP_570_1_fu_80", "Port" : "ephemeralsk", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "in_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_cshake256_simple_absorb_fu_46", "Port" : "in_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "in_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_cshake256_simple_absorb_fu_46", "Port" : "in_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "in_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_cshake256_simple_absorb_fu_46", "Port" : "in_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "in_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_cshake256_simple_absorb_fu_46", "Port" : "in_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_cshake256_simple_absorb_fu_46", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "15", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_64", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_41_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_42_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_43_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_absorb_fu_46", "Parent" : "0", "Child" : ["7", "9", "13"],
		"CDFG" : "cshake256_simple_absorb",
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
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_529_1_fu_69", "Port" : "s", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_75", "Port" : "s_i", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "13", "SubInstance" : "grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2_fu_83", "Port" : "s", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "cstm", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2_fu_83", "Port" : "in_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "in_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2_fu_83", "Port" : "in_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "in_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2_fu_83", "Port" : "in_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "in_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2_fu_83", "Port" : "in_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_KeccakF1600_StatePermute_fu_75", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_absorb_fu_46.grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_529_1_fu_69", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "cshake256_simple_absorb_Pipeline_VITIS_LOOP_529_1",
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
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_529_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_absorb_fu_46.grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_529_1_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_absorb_fu_46.grp_KeccakF1600_StatePermute_fu_75", "Parent" : "6", "Child" : ["10"],
		"CDFG" : "KeccakF1600_StatePermute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "42", "EstimateLatencyMax" : "42",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1_fu_396", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "14", "Inst_end_state" : "15"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_absorb_fu_46.grp_KeccakF1600_StatePermute_fu_75.grp_KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1_fu_396", "Parent" : "9", "Child" : ["11", "12"],
		"CDFG" : "KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Asu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aba", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abe", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aga", "Type" : "None", "Direction" : "I"},
			{"Name" : "Age", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ago", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aka", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ake", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aki", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ako", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aku", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ama", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ame", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ami", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asa", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ase", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aso", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aba_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abe_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aga_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Age_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ago_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aka_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ake_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aki_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ako_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aku_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ama_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ame_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ami_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asa_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ase_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aso_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_absorb_fu_46.grp_KeccakF1600_StatePermute_fu_75.grp_KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1_fu_396.KeccakF_RoundConstants_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_absorb_fu_46.grp_KeccakF1600_StatePermute_fu_75.grp_KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1_fu_396.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_absorb_fu_46.grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2_fu_83", "Parent" : "6", "Child" : ["14"],
		"CDFG" : "cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2",
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
			{"Name" : "idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_351_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_absorb_fu_46.grp_cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2_fu_83.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_64", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "KeccakF1600_StatePermute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "42", "EstimateLatencyMax" : "42",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1_fu_396", "Port" : "KeccakF_RoundConstants", "Inst_start_state" : "14", "Inst_end_state" : "15"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_64.grp_KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1_fu_396", "Parent" : "15", "Child" : ["17", "18"],
		"CDFG" : "KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Asu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aba", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abe", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aga", "Type" : "None", "Direction" : "I"},
			{"Name" : "Age", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ago", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aka", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ake", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aki", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ako", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aku", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ama", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ame", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ami", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asa", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ase", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aso", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aba_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abe_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aga_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Age_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ago_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aka_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ake_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aki_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ako_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aku_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ama_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ame_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ami_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asa_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ase_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aso_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "KeccakF_RoundConstants", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_64.grp_KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1_fu_396.KeccakF_RoundConstants_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_fu_64.grp_KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1_fu_396.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_32_Pipeline_VITIS_LOOP_377_2_fu_71", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "cshake256_simple_32_Pipeline_VITIS_LOOP_377_2",
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
			{"Name" : "t_135", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "t_134", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "t_133", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_377_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_32_Pipeline_VITIS_LOOP_377_2_fu_71.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_32_Pipeline_VITIS_LOOP_570_1_fu_80", "Parent" : "0", "Child" : ["22", "23"],
		"CDFG" : "cshake256_simple_32_Pipeline_VITIS_LOOP_570_1",
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_133", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_134", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_135", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ephemeralsk", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_570_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_32_Pipeline_VITIS_LOOP_570_1_fu_80.sparsemux_9_2_8_1_1_U81", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cshake256_simple_32_Pipeline_VITIS_LOOP_570_1_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"}]}


set ArgLastReadFirstWriteLatency {
	cshake256_simple_32 {
		ephemeralsk {Type O LastRead -1 FirstWrite 1}
		in_0 {Type I LastRead 2 FirstWrite -1}
		in_1 {Type I LastRead 2 FirstWrite -1}
		in_2 {Type I LastRead 2 FirstWrite -1}
		in_3 {Type I LastRead 2 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	cshake256_simple_absorb {
		s {Type IO LastRead 13 FirstWrite 0}
		cstm {Type I LastRead 2 FirstWrite -1}
		in_0 {Type I LastRead 2 FirstWrite -1}
		in_1 {Type I LastRead 2 FirstWrite -1}
		in_2 {Type I LastRead 2 FirstWrite -1}
		in_3 {Type I LastRead 2 FirstWrite -1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	cshake256_simple_absorb_Pipeline_VITIS_LOOP_529_1 {
		s {Type O LastRead -1 FirstWrite 0}}
	KeccakF1600_StatePermute {
		s_i {Type IO LastRead 13 FirstWrite 15}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1 {
		Asu {Type I LastRead 0 FirstWrite -1}
		Aba {Type I LastRead 0 FirstWrite -1}
		Abe {Type I LastRead 0 FirstWrite -1}
		Abi {Type I LastRead 0 FirstWrite -1}
		Abo {Type I LastRead 0 FirstWrite -1}
		Abu {Type I LastRead 0 FirstWrite -1}
		Aga {Type I LastRead 0 FirstWrite -1}
		Age {Type I LastRead 0 FirstWrite -1}
		Agi {Type I LastRead 0 FirstWrite -1}
		Ago {Type I LastRead 0 FirstWrite -1}
		Agu {Type I LastRead 0 FirstWrite -1}
		Aka {Type I LastRead 0 FirstWrite -1}
		Ake {Type I LastRead 0 FirstWrite -1}
		Aki {Type I LastRead 0 FirstWrite -1}
		Ako {Type I LastRead 0 FirstWrite -1}
		Aku {Type I LastRead 0 FirstWrite -1}
		Ama {Type I LastRead 0 FirstWrite -1}
		Ame {Type I LastRead 0 FirstWrite -1}
		Ami {Type I LastRead 0 FirstWrite -1}
		Amo {Type I LastRead 0 FirstWrite -1}
		Amu {Type I LastRead 0 FirstWrite -1}
		Asa {Type I LastRead 0 FirstWrite -1}
		Ase {Type I LastRead 0 FirstWrite -1}
		Asi {Type I LastRead 0 FirstWrite -1}
		Aso {Type I LastRead 0 FirstWrite -1}
		Asu_1_out {Type O LastRead -1 FirstWrite 1}
		Aba_1_out {Type O LastRead -1 FirstWrite 1}
		Abe_1_out {Type O LastRead -1 FirstWrite 1}
		Abi_1_out {Type O LastRead -1 FirstWrite 1}
		Abo_1_out {Type O LastRead -1 FirstWrite 1}
		Abu_1_out {Type O LastRead -1 FirstWrite 1}
		Aga_1_out {Type O LastRead -1 FirstWrite 1}
		Age_1_out {Type O LastRead -1 FirstWrite 1}
		Agi_1_out {Type O LastRead -1 FirstWrite 1}
		Ago_1_out {Type O LastRead -1 FirstWrite 1}
		Agu_1_out {Type O LastRead -1 FirstWrite 1}
		Aka_1_out {Type O LastRead -1 FirstWrite 1}
		Ake_1_out {Type O LastRead -1 FirstWrite 1}
		Aki_1_out {Type O LastRead -1 FirstWrite 1}
		Ako_1_out {Type O LastRead -1 FirstWrite 1}
		Aku_1_out {Type O LastRead -1 FirstWrite 1}
		Ama_1_out {Type O LastRead -1 FirstWrite 1}
		Ame_1_out {Type O LastRead -1 FirstWrite 1}
		Ami_1_out {Type O LastRead -1 FirstWrite 1}
		Amo_1_out {Type O LastRead -1 FirstWrite 1}
		Amu_1_out {Type O LastRead -1 FirstWrite 1}
		Asa_1_out {Type O LastRead -1 FirstWrite 1}
		Ase_1_out {Type O LastRead -1 FirstWrite 1}
		Asi_1_out {Type O LastRead -1 FirstWrite 1}
		Aso_1_out {Type O LastRead -1 FirstWrite 1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2 {
		idx {Type I LastRead 0 FirstWrite -1}
		in_0 {Type I LastRead 2 FirstWrite -1}
		in_1 {Type I LastRead 2 FirstWrite -1}
		in_2 {Type I LastRead 2 FirstWrite -1}
		in_3 {Type I LastRead 2 FirstWrite -1}
		s {Type IO LastRead 0 FirstWrite 2}}
	KeccakF1600_StatePermute {
		s_i {Type IO LastRead 13 FirstWrite 15}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePermute_Pipeline_VITIS_LOOP_117_1 {
		Asu {Type I LastRead 0 FirstWrite -1}
		Aba {Type I LastRead 0 FirstWrite -1}
		Abe {Type I LastRead 0 FirstWrite -1}
		Abi {Type I LastRead 0 FirstWrite -1}
		Abo {Type I LastRead 0 FirstWrite -1}
		Abu {Type I LastRead 0 FirstWrite -1}
		Aga {Type I LastRead 0 FirstWrite -1}
		Age {Type I LastRead 0 FirstWrite -1}
		Agi {Type I LastRead 0 FirstWrite -1}
		Ago {Type I LastRead 0 FirstWrite -1}
		Agu {Type I LastRead 0 FirstWrite -1}
		Aka {Type I LastRead 0 FirstWrite -1}
		Ake {Type I LastRead 0 FirstWrite -1}
		Aki {Type I LastRead 0 FirstWrite -1}
		Ako {Type I LastRead 0 FirstWrite -1}
		Aku {Type I LastRead 0 FirstWrite -1}
		Ama {Type I LastRead 0 FirstWrite -1}
		Ame {Type I LastRead 0 FirstWrite -1}
		Ami {Type I LastRead 0 FirstWrite -1}
		Amo {Type I LastRead 0 FirstWrite -1}
		Amu {Type I LastRead 0 FirstWrite -1}
		Asa {Type I LastRead 0 FirstWrite -1}
		Ase {Type I LastRead 0 FirstWrite -1}
		Asi {Type I LastRead 0 FirstWrite -1}
		Aso {Type I LastRead 0 FirstWrite -1}
		Asu_1_out {Type O LastRead -1 FirstWrite 1}
		Aba_1_out {Type O LastRead -1 FirstWrite 1}
		Abe_1_out {Type O LastRead -1 FirstWrite 1}
		Abi_1_out {Type O LastRead -1 FirstWrite 1}
		Abo_1_out {Type O LastRead -1 FirstWrite 1}
		Abu_1_out {Type O LastRead -1 FirstWrite 1}
		Aga_1_out {Type O LastRead -1 FirstWrite 1}
		Age_1_out {Type O LastRead -1 FirstWrite 1}
		Agi_1_out {Type O LastRead -1 FirstWrite 1}
		Ago_1_out {Type O LastRead -1 FirstWrite 1}
		Agu_1_out {Type O LastRead -1 FirstWrite 1}
		Aka_1_out {Type O LastRead -1 FirstWrite 1}
		Ake_1_out {Type O LastRead -1 FirstWrite 1}
		Aki_1_out {Type O LastRead -1 FirstWrite 1}
		Ako_1_out {Type O LastRead -1 FirstWrite 1}
		Aku_1_out {Type O LastRead -1 FirstWrite 1}
		Ama_1_out {Type O LastRead -1 FirstWrite 1}
		Ame_1_out {Type O LastRead -1 FirstWrite 1}
		Ami_1_out {Type O LastRead -1 FirstWrite 1}
		Amo_1_out {Type O LastRead -1 FirstWrite 1}
		Amu_1_out {Type O LastRead -1 FirstWrite 1}
		Asa_1_out {Type O LastRead -1 FirstWrite 1}
		Ase_1_out {Type O LastRead -1 FirstWrite 1}
		Asi_1_out {Type O LastRead -1 FirstWrite 1}
		Aso_1_out {Type O LastRead -1 FirstWrite 1}
		KeccakF_RoundConstants {Type I LastRead -1 FirstWrite -1}}
	cshake256_simple_32_Pipeline_VITIS_LOOP_377_2 {
		t_135 {Type O LastRead -1 FirstWrite 1}
		t_134 {Type O LastRead -1 FirstWrite 1}
		t_133 {Type O LastRead -1 FirstWrite 1}
		t {Type O LastRead -1 FirstWrite 1}
		s {Type I LastRead 0 FirstWrite -1}}
	cshake256_simple_32_Pipeline_VITIS_LOOP_570_1 {
		t {Type I LastRead 0 FirstWrite -1}
		t_133 {Type I LastRead 0 FirstWrite -1}
		t_134 {Type I LastRead 0 FirstWrite -1}
		t_135 {Type I LastRead 0 FirstWrite -1}
		ephemeralsk {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ephemeralsk { ap_memory {  { ephemeralsk_address0 mem_address 1 5 }  { ephemeralsk_ce0 mem_ce 1 1 }  { ephemeralsk_we0 mem_we 1 1 }  { ephemeralsk_d0 mem_din 1 8 } } }
	in_0 { ap_memory {  { in_0_address0 mem_address 1 7 }  { in_0_ce0 mem_ce 1 1 }  { in_0_q0 mem_dout 0 8 }  { in_0_address1 MemPortADDR2 1 7 }  { in_0_ce1 MemPortCE2 1 1 }  { in_0_q1 MemPortDOUT2 0 8 } } }
	in_1 { ap_memory {  { in_1_address0 mem_address 1 7 }  { in_1_ce0 mem_ce 1 1 }  { in_1_q0 mem_dout 0 8 }  { in_1_address1 MemPortADDR2 1 7 }  { in_1_ce1 MemPortCE2 1 1 }  { in_1_q1 MemPortDOUT2 0 8 } } }
	in_2 { ap_memory {  { in_2_address0 mem_address 1 7 }  { in_2_ce0 mem_ce 1 1 }  { in_2_q0 mem_dout 0 8 }  { in_2_address1 MemPortADDR2 1 7 }  { in_2_ce1 MemPortCE2 1 1 }  { in_2_q1 MemPortDOUT2 0 8 } } }
	in_3 { ap_memory {  { in_3_address0 mem_address 1 7 }  { in_3_ce0 mem_ce 1 1 }  { in_3_q0 mem_dout 0 8 }  { in_3_address1 MemPortADDR2 1 7 }  { in_3_ce1 MemPortCE2 1 1 }  { in_3_q1 MemPortDOUT2 0 8 } } }
}
