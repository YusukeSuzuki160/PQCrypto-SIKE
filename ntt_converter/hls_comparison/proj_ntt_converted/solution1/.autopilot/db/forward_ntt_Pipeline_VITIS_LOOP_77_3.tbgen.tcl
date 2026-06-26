set moduleName forward_ntt_Pipeline_VITIS_LOOP_77_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 5
set C_modelName {forward_ntt_Pipeline_VITIS_LOOP_77_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict roots { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict a { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ empty_15 int 8 regular  }
	{ empty int 8 regular  }
	{ roots int 32 regular {bram 256 { 1 3 } 1 1 }  }
	{ a int 32 regular {bram 256 { 2 1 } 1 1 }  }
	{ conv2_i_i5_i_i int 32 regular  }
	{ mod_r int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty_15", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "roots", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "conv2_i_i5_i_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mod_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty_15 sc_in sc_lv 8 signal 0 } 
	{ empty sc_in sc_lv 8 signal 1 } 
	{ roots_Addr_A sc_out sc_lv 32 signal 2 } 
	{ roots_EN_A sc_out sc_logic 1 signal 2 } 
	{ roots_WEN_A sc_out sc_lv 4 signal 2 } 
	{ roots_Din_A sc_out sc_lv 32 signal 2 } 
	{ roots_Dout_A sc_in sc_lv 32 signal 2 } 
	{ a_Addr_A sc_out sc_lv 32 signal 3 } 
	{ a_EN_A sc_out sc_logic 1 signal 3 } 
	{ a_WEN_A sc_out sc_lv 4 signal 3 } 
	{ a_Din_A sc_out sc_lv 32 signal 3 } 
	{ a_Dout_A sc_in sc_lv 32 signal 3 } 
	{ a_Addr_B sc_out sc_lv 32 signal 3 } 
	{ a_EN_B sc_out sc_logic 1 signal 3 } 
	{ a_WEN_B sc_out sc_lv 4 signal 3 } 
	{ a_Din_B sc_out sc_lv 32 signal 3 } 
	{ a_Dout_B sc_in sc_lv 32 signal 3 } 
	{ conv2_i_i5_i_i sc_in sc_lv 32 signal 4 } 
	{ mod_r sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty_15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty_15", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "roots_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "roots", "role": "Addr_A" }} , 
 	{ "name": "roots_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "roots", "role": "EN_A" }} , 
 	{ "name": "roots_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "roots", "role": "WEN_A" }} , 
 	{ "name": "roots_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "roots", "role": "Din_A" }} , 
 	{ "name": "roots_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "roots", "role": "Dout_A" }} , 
 	{ "name": "a_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Addr_A" }} , 
 	{ "name": "a_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "EN_A" }} , 
 	{ "name": "a_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a", "role": "WEN_A" }} , 
 	{ "name": "a_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Din_A" }} , 
 	{ "name": "a_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Dout_A" }} , 
 	{ "name": "a_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Addr_B" }} , 
 	{ "name": "a_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "EN_B" }} , 
 	{ "name": "a_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a", "role": "WEN_B" }} , 
 	{ "name": "a_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Din_B" }} , 
 	{ "name": "a_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Dout_B" }} , 
 	{ "name": "conv2_i_i5_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2_i_i5_i_i", "role": "default" }} , 
 	{ "name": "mod_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mod_r", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "forward_ntt_Pipeline_VITIS_LOOP_77_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "18107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "roots", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "a", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "conv2_i_i5_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "71", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state71", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state71_blk", "QuitState" : "ap_ST_fsm_state71", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state71_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_64_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_64ns_32s_32_68_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	forward_ntt_Pipeline_VITIS_LOOP_77_3 {
		empty_15 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		roots {Type I LastRead 0 FirstWrite -1}
		a {Type IO LastRead 69 FirstWrite 68}
		conv2_i_i5_i_i {Type I LastRead 0 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "18107"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "18107"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	empty_15 { ap_none {  { empty_15 in_data 0 8 } } }
	empty { ap_none {  { empty in_data 0 8 } } }
	roots { bram {  { roots_Addr_A MemPortADDR2 1 32 }  { roots_EN_A MemPortCE2 1 1 }  { roots_WEN_A MemPortWE2 1 4 }  { roots_Din_A MemPortDIN2 1 32 }  { roots_Dout_A MemPortDOUT2 0 32 } } }
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 4 }  { a_Din_A MemPortDIN2 1 32 }  { a_Dout_A MemPortDOUT2 0 32 }  { a_Addr_B MemPortADDR2 1 32 }  { a_EN_B MemPortCE2 1 1 }  { a_WEN_B MemPortWE2 1 4 }  { a_Din_B MemPortDIN2 1 32 }  { a_Dout_B MemPortDOUT2 0 32 } } }
	conv2_i_i5_i_i { ap_none {  { conv2_i_i5_i_i in_data 0 32 } } }
	mod_r { ap_none {  { mod_r in_data 0 32 } } }
}
