set moduleName rdc_mont_14
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
set C_modelName {rdc_mont.14}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ma_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict ma_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc_0 { MEM_WIDTH 64 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict mc_1 { MEM_WIDTH 64 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ ma_0 int 64 regular {array 8 { 1 } 1 1 }  }
	{ ma_1 int 64 regular {array 8 { 1 } 1 1 }  }
	{ mc_0 int 64 regular {array 4 { 0 } 0 1 }  }
	{ mc_1 int 64 regular {array 4 { 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ma_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mc_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mc_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ma_0_address0 sc_out sc_lv 3 signal 0 } 
	{ ma_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ ma_0_q0 sc_in sc_lv 64 signal 0 } 
	{ ma_1_address0 sc_out sc_lv 3 signal 1 } 
	{ ma_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ ma_1_q0 sc_in sc_lv 64 signal 1 } 
	{ mc_0_address0 sc_out sc_lv 2 signal 2 } 
	{ mc_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ mc_0_we0 sc_out sc_logic 1 signal 2 } 
	{ mc_0_d0 sc_out sc_lv 64 signal 2 } 
	{ mc_1_address0 sc_out sc_lv 2 signal 3 } 
	{ mc_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ mc_1_we0 sc_out sc_logic 1 signal 3 } 
	{ mc_1_d0 sc_out sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ma_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ma_0", "role": "address0" }} , 
 	{ "name": "ma_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ma_0", "role": "ce0" }} , 
 	{ "name": "ma_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_0", "role": "q0" }} , 
 	{ "name": "ma_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ma_1", "role": "address0" }} , 
 	{ "name": "ma_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ma_1", "role": "ce0" }} , 
 	{ "name": "ma_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_1", "role": "q0" }} , 
 	{ "name": "mc_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mc_0", "role": "address0" }} , 
 	{ "name": "mc_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_0", "role": "ce0" }} , 
 	{ "name": "mc_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_0", "role": "we0" }} , 
 	{ "name": "mc_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_0", "role": "d0" }} , 
 	{ "name": "mc_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mc_1", "role": "address0" }} , 
 	{ "name": "mc_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_1", "role": "ce0" }} , 
 	{ "name": "mc_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_1", "role": "we0" }} , 
 	{ "name": "mc_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "21", "26", "31", "36", "41"],
		"CDFG" : "rdc_mont_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "350", "EstimateLatencyMax" : "350",
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
			{"Name" : "mc_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rdc_mont_14_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rdc_mont_14_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_14_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "rdc_mont_14_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mc_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_14_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_294", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_301", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_308", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_314", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_320", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_327", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_334", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_340", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_347", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_356", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_is_digit_lessthan_ct_fu_363", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_477_is_digit_lessthan_ct_fu_369", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_478_is_digit_lessthan_ct_fu_376", "Parent" : "0",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_383", "Parent" : "0", "Child" : ["17", "18", "19", "20"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_383.mul_32ns_32ns_64_1_1_U266", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_383.mul_32ns_32ns_64_1_1_U267", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_383.mul_32ns_32ns_64_1_1_U268", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_383.mul_32ns_32ns_64_1_1_U269", "Parent" : "16"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_390", "Parent" : "0", "Child" : ["22", "23", "24", "25"],
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
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_390.mul_32ns_32ns_64_1_1_U266", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_390.mul_32ns_32ns_64_1_1_U267", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_390.mul_32ns_32ns_64_1_1_U268", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_390.mul_32ns_32ns_64_1_1_U269", "Parent" : "21"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_397", "Parent" : "0", "Child" : ["27", "28", "29", "30"],
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_397.mul_32ns_32ns_64_1_1_U266", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_397.mul_32ns_32ns_64_1_1_U267", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_397.mul_32ns_32ns_64_1_1_U268", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_397.mul_32ns_32ns_64_1_1_U269", "Parent" : "26"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_404", "Parent" : "0", "Child" : ["32", "33", "34", "35"],
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
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_404.mul_32ns_32ns_64_1_1_U266", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_404.mul_32ns_32ns_64_1_1_U267", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_404.mul_32ns_32ns_64_1_1_U268", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_404.mul_32ns_32ns_64_1_1_U269", "Parent" : "31"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_411", "Parent" : "0", "Child" : ["37", "38", "39", "40"],
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
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_411.mul_32ns_32ns_64_1_1_U266", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_411.mul_32ns_32ns_64_1_1_U267", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_411.mul_32ns_32ns_64_1_1_U268", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_411.mul_32ns_32ns_64_1_1_U269", "Parent" : "36"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_418", "Parent" : "0", "Child" : ["42", "43", "44", "45"],
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
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_418.mul_32ns_32ns_64_1_1_U266", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_418.mul_32ns_32ns_64_1_1_U267", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_418.mul_32ns_32ns_64_1_1_U268", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digit_x_digit_fu_418.mul_32ns_32ns_64_1_1_U269", "Parent" : "41"}]}


set ArgLastReadFirstWriteLatency {
	rdc_mont_14 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc_0 {Type O LastRead -1 FirstWrite 0}
		mc_1 {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_14_Pipeline_VITIS_LOOP_306_1 {
		mc_1 {Type O LastRead -1 FirstWrite 0}
		mc_0 {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
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
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "350", "Max" : "350"}
	, {"Name" : "Interval", "Min" : "350", "Max" : "350"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ma_0 { ap_memory {  { ma_0_address0 mem_address 1 3 }  { ma_0_ce0 mem_ce 1 1 }  { ma_0_q0 mem_dout 0 64 } } }
	ma_1 { ap_memory {  { ma_1_address0 mem_address 1 3 }  { ma_1_ce0 mem_ce 1 1 }  { ma_1_q0 mem_dout 0 64 } } }
	mc_0 { ap_memory {  { mc_0_address0 mem_address 1 2 }  { mc_0_ce0 mem_ce 1 1 }  { mc_0_we0 mem_we 1 1 }  { mc_0_d0 mem_din 1 64 } } }
	mc_1 { ap_memory {  { mc_1_address0 mem_address 1 2 }  { mc_1_ce0 mem_ce 1 1 }  { mc_1_we0 mem_we 1 1 }  { mc_1_d0 mem_din 1 64 } } }
}
