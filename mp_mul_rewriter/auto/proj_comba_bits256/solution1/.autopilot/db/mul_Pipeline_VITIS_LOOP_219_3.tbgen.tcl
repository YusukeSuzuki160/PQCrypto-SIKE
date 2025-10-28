set moduleName mul_Pipeline_VITIS_LOOP_219_3
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
set cdfgNum 9
set C_modelName {mul_Pipeline_VITIS_LOOP_219_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ select_ln210 int 2 regular  }
	{ zext_ln214 int 2 regular  }
	{ zext_ln210 int 259 regular  }
	{ zext_ln219 int 1 regular  }
	{ zext_ln210_1 int 2 regular  }
	{ a int 64 regular {bram 8 { 1 1 } 1 1 }  }
	{ b int 64 regular {bram 8 { 1 1 } 1 1 }  }
	{ sum_1_out int 515 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "select_ln210", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln214", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln210", "interface" : "wire", "bitwidth" : 259, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln219", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln210_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "bram", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "bram", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sum_1_out", "interface" : "wire", "bitwidth" : 515, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ select_ln210 sc_in sc_lv 2 signal 0 } 
	{ zext_ln214 sc_in sc_lv 2 signal 1 } 
	{ zext_ln210 sc_in sc_lv 259 signal 2 } 
	{ zext_ln219 sc_in sc_lv 1 signal 3 } 
	{ zext_ln210_1 sc_in sc_lv 2 signal 4 } 
	{ a_Addr_A sc_out sc_lv 32 signal 5 } 
	{ a_EN_A sc_out sc_logic 1 signal 5 } 
	{ a_WEN_A sc_out sc_lv 8 signal 5 } 
	{ a_Din_A sc_out sc_lv 64 signal 5 } 
	{ a_Dout_A sc_in sc_lv 64 signal 5 } 
	{ a_Addr_B sc_out sc_lv 32 signal 5 } 
	{ a_EN_B sc_out sc_logic 1 signal 5 } 
	{ a_WEN_B sc_out sc_lv 8 signal 5 } 
	{ a_Din_B sc_out sc_lv 64 signal 5 } 
	{ a_Dout_B sc_in sc_lv 64 signal 5 } 
	{ b_Addr_A sc_out sc_lv 32 signal 6 } 
	{ b_EN_A sc_out sc_logic 1 signal 6 } 
	{ b_WEN_A sc_out sc_lv 8 signal 6 } 
	{ b_Din_A sc_out sc_lv 64 signal 6 } 
	{ b_Dout_A sc_in sc_lv 64 signal 6 } 
	{ b_Addr_B sc_out sc_lv 32 signal 6 } 
	{ b_EN_B sc_out sc_logic 1 signal 6 } 
	{ b_WEN_B sc_out sc_lv 8 signal 6 } 
	{ b_Din_B sc_out sc_lv 64 signal 6 } 
	{ b_Dout_B sc_in sc_lv 64 signal 6 } 
	{ sum_1_out sc_out sc_lv 515 signal 7 } 
	{ sum_1_out_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "select_ln210", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "select_ln210", "role": "default" }} , 
 	{ "name": "zext_ln214", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln214", "role": "default" }} , 
 	{ "name": "zext_ln210", "direction": "in", "datatype": "sc_lv", "bitwidth":259, "type": "signal", "bundle":{"name": "zext_ln210", "role": "default" }} , 
 	{ "name": "zext_ln219", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "zext_ln219", "role": "default" }} , 
 	{ "name": "zext_ln210_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln210_1", "role": "default" }} , 
 	{ "name": "a_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Addr_A" }} , 
 	{ "name": "a_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "EN_A" }} , 
 	{ "name": "a_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "WEN_A" }} , 
 	{ "name": "a_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Din_A" }} , 
 	{ "name": "a_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Dout_A" }} , 
 	{ "name": "a_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Addr_B" }} , 
 	{ "name": "a_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "EN_B" }} , 
 	{ "name": "a_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "WEN_B" }} , 
 	{ "name": "a_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Din_B" }} , 
 	{ "name": "a_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Dout_B" }} , 
 	{ "name": "b_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "Addr_A" }} , 
 	{ "name": "b_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "EN_A" }} , 
 	{ "name": "b_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b", "role": "WEN_A" }} , 
 	{ "name": "b_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Din_A" }} , 
 	{ "name": "b_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Dout_A" }} , 
 	{ "name": "b_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "Addr_B" }} , 
 	{ "name": "b_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "EN_B" }} , 
 	{ "name": "b_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b", "role": "WEN_B" }} , 
 	{ "name": "b_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Din_B" }} , 
 	{ "name": "b_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Dout_B" }} , 
 	{ "name": "sum_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":515, "type": "signal", "bundle":{"name": "sum_1_out", "role": "default" }} , 
 	{ "name": "sum_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_219_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "select_ln210", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln214", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln210", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln219", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln210_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "sum_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_2_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_219_3 {
		select_ln210 {Type I LastRead 0 FirstWrite -1}
		zext_ln214 {Type I LastRead 0 FirstWrite -1}
		zext_ln210 {Type I LastRead 0 FirstWrite -1}
		zext_ln219 {Type I LastRead 0 FirstWrite -1}
		zext_ln210_1 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 3 FirstWrite -1}
		b {Type I LastRead 3 FirstWrite -1}
		sum_1_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "36"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "36"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	select_ln210 { ap_none {  { select_ln210 in_data 0 2 } } }
	zext_ln214 { ap_none {  { zext_ln214 in_data 0 2 } } }
	zext_ln210 { ap_none {  { zext_ln210 in_data 0 259 } } }
	zext_ln219 { ap_none {  { zext_ln219 in_data 0 1 } } }
	zext_ln210_1 { ap_none {  { zext_ln210_1 in_data 0 2 } } }
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 8 }  { a_Din_A MemPortDIN2 1 64 }  { a_Dout_A MemPortDOUT2 0 64 }  { a_Addr_B MemPortADDR2 1 32 }  { a_EN_B MemPortCE2 1 1 }  { a_WEN_B MemPortWE2 1 8 }  { a_Din_B MemPortDIN2 1 64 }  { a_Dout_B MemPortDOUT2 0 64 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 8 }  { b_Din_A MemPortDIN2 1 64 }  { b_Dout_A MemPortDOUT2 0 64 }  { b_Addr_B MemPortADDR2 1 32 }  { b_EN_B MemPortCE2 1 1 }  { b_WEN_B MemPortWE2 1 8 }  { b_Din_B MemPortDIN2 1 64 }  { b_Dout_B MemPortDOUT2 0 64 } } }
	sum_1_out { ap_vld {  { sum_1_out out_data 1 515 }  { sum_1_out_ap_vld out_vld 1 1 } } }
}
