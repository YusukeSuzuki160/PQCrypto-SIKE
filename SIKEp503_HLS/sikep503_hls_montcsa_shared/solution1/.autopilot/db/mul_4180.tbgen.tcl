set moduleName mul_4180
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
set C_modelName {mul.4180}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ a int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ a_offset int 1 regular  }
	{ b int 64 regular {array 48 { 1 3 } 1 1 }  }
	{ b_offset1 int 1 regular  }
	{ c int 64 regular {array 16 { 0 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "a_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b_offset1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_address0 sc_out sc_lv 4 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_q0 sc_in sc_lv 64 signal 0 } 
	{ a_offset sc_in sc_lv 1 signal 1 } 
	{ b_address0 sc_out sc_lv 6 signal 2 } 
	{ b_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_q0 sc_in sc_lv 64 signal 2 } 
	{ b_offset1 sc_in sc_lv 1 signal 3 } 
	{ c_address0 sc_out sc_lv 4 signal 4 } 
	{ c_ce0 sc_out sc_logic 1 signal 4 } 
	{ c_we0 sc_out sc_logic 1 signal 4 } 
	{ c_d0 sc_out sc_lv 64 signal 4 } 
	{ c_address1 sc_out sc_lv 4 signal 4 } 
	{ c_ce1 sc_out sc_logic 1 signal 4 } 
	{ c_we1 sc_out sc_logic 1 signal 4 } 
	{ c_d1 sc_out sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_offset", "role": "default" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "b_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_offset1", "role": "default" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d0" }} , 
 	{ "name": "c_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address1" }} , 
 	{ "name": "c_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce1" }} , 
 	{ "name": "c_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we1" }} , 
 	{ "name": "c_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul_4180",
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
					{"ID" : "1", "SubInstance" : "grp_mul_4180_Pipeline_COL_fu_330", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_4180_Pipeline_COL_fu_330", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "mul_4180_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "tmp_4676", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "carry_591_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_4180_Pipeline_COL_fu_330.mul_64ns_64ns_128_1_1_U2404", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_4180_Pipeline_COL_fu_330.sparsemux_31_4_64_1_1_U2405", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_4180_Pipeline_COL_fu_330.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	mul_4180 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4180_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		tmp_4676 {Type I LastRead 0 FirstWrite -1}
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
		carry_591_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "128", "Max" : "128"}
	, {"Name" : "Interval", "Min" : "128", "Max" : "128"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 4 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 64 } } }
	a_offset { ap_none {  { a_offset in_data 0 1 } } }
	b { ap_memory {  { b_address0 mem_address 1 6 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 64 } } }
	b_offset1 { ap_none {  { b_offset1 in_data 0 1 } } }
	c { ap_memory {  { c_address0 mem_address 1 4 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 64 }  { c_address1 MemPortADDR2 1 4 }  { c_ce1 MemPortCE2 1 1 }  { c_we1 MemPortWE2 1 1 }  { c_d1 MemPortDIN2 1 64 } } }
}
