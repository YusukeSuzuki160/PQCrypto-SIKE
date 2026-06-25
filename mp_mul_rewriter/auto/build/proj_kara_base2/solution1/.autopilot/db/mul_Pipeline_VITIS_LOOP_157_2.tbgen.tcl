set moduleName mul_Pipeline_VITIS_LOOP_157_2
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
set cdfgNum 51
set C_modelName {mul_Pipeline_VITIS_LOOP_157_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 64 regular {bram 8 { 1 3 } 1 1 }  }
	{ b int 64 regular {bram 8 { 1 3 } 1 1 }  }
	{ Bh_3_out int 64 regular {pointer 1}  }
	{ Bh_2_out int 64 regular {pointer 1}  }
	{ Bh_1_out int 64 regular {pointer 1}  }
	{ Bh_out int 64 regular {pointer 1}  }
	{ Ah_3_out int 64 regular {pointer 1}  }
	{ Ah_2_out int 64 regular {pointer 1}  }
	{ Ah_1_out int 64 regular {pointer 1}  }
	{ Ah_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "bram", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "bram", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bh_3_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Bh_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Bh_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Bh_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ah_3_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ah_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ah_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ah_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_Addr_A sc_out sc_lv 32 signal 0 } 
	{ a_EN_A sc_out sc_logic 1 signal 0 } 
	{ a_WEN_A sc_out sc_lv 8 signal 0 } 
	{ a_Din_A sc_out sc_lv 64 signal 0 } 
	{ a_Dout_A sc_in sc_lv 64 signal 0 } 
	{ b_Addr_A sc_out sc_lv 32 signal 1 } 
	{ b_EN_A sc_out sc_logic 1 signal 1 } 
	{ b_WEN_A sc_out sc_lv 8 signal 1 } 
	{ b_Din_A sc_out sc_lv 64 signal 1 } 
	{ b_Dout_A sc_in sc_lv 64 signal 1 } 
	{ Bh_3_out sc_out sc_lv 64 signal 2 } 
	{ Bh_3_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ Bh_2_out sc_out sc_lv 64 signal 3 } 
	{ Bh_2_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ Bh_1_out sc_out sc_lv 64 signal 4 } 
	{ Bh_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ Bh_out sc_out sc_lv 64 signal 5 } 
	{ Bh_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ Ah_3_out sc_out sc_lv 64 signal 6 } 
	{ Ah_3_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ Ah_2_out sc_out sc_lv 64 signal 7 } 
	{ Ah_2_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ Ah_1_out sc_out sc_lv 64 signal 8 } 
	{ Ah_1_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ Ah_out sc_out sc_lv 64 signal 9 } 
	{ Ah_out_ap_vld sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Addr_A" }} , 
 	{ "name": "a_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "EN_A" }} , 
 	{ "name": "a_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "WEN_A" }} , 
 	{ "name": "a_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Din_A" }} , 
 	{ "name": "a_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Dout_A" }} , 
 	{ "name": "b_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "Addr_A" }} , 
 	{ "name": "b_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "EN_A" }} , 
 	{ "name": "b_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b", "role": "WEN_A" }} , 
 	{ "name": "b_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Din_A" }} , 
 	{ "name": "b_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Dout_A" }} , 
 	{ "name": "Bh_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_3_out", "role": "default" }} , 
 	{ "name": "Bh_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bh_3_out", "role": "ap_vld" }} , 
 	{ "name": "Bh_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_2_out", "role": "default" }} , 
 	{ "name": "Bh_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bh_2_out", "role": "ap_vld" }} , 
 	{ "name": "Bh_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_1_out", "role": "default" }} , 
 	{ "name": "Bh_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bh_1_out", "role": "ap_vld" }} , 
 	{ "name": "Bh_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_out", "role": "default" }} , 
 	{ "name": "Bh_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bh_out", "role": "ap_vld" }} , 
 	{ "name": "Ah_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_3_out", "role": "default" }} , 
 	{ "name": "Ah_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ah_3_out", "role": "ap_vld" }} , 
 	{ "name": "Ah_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_2_out", "role": "default" }} , 
 	{ "name": "Ah_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ah_2_out", "role": "ap_vld" }} , 
 	{ "name": "Ah_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_1_out", "role": "default" }} , 
 	{ "name": "Ah_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ah_1_out", "role": "ap_vld" }} , 
 	{ "name": "Ah_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_out", "role": "default" }} , 
 	{ "name": "Ah_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ah_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "Bh_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_157_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh_3_out {Type O LastRead -1 FirstWrite 0}
		Bh_2_out {Type O LastRead -1 FirstWrite 0}
		Bh_1_out {Type O LastRead -1 FirstWrite 0}
		Bh_out {Type O LastRead -1 FirstWrite 0}
		Ah_3_out {Type O LastRead -1 FirstWrite 0}
		Ah_2_out {Type O LastRead -1 FirstWrite 0}
		Ah_1_out {Type O LastRead -1 FirstWrite 0}
		Ah_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 8 }  { a_Din_A MemPortDIN2 1 64 }  { a_Dout_A MemPortDOUT2 0 64 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 8 }  { b_Din_A MemPortDIN2 1 64 }  { b_Dout_A MemPortDOUT2 0 64 } } }
	Bh_3_out { ap_vld {  { Bh_3_out out_data 1 64 }  { Bh_3_out_ap_vld out_vld 1 1 } } }
	Bh_2_out { ap_vld {  { Bh_2_out out_data 1 64 }  { Bh_2_out_ap_vld out_vld 1 1 } } }
	Bh_1_out { ap_vld {  { Bh_1_out out_data 1 64 }  { Bh_1_out_ap_vld out_vld 1 1 } } }
	Bh_out { ap_vld {  { Bh_out out_data 1 64 }  { Bh_out_ap_vld out_vld 1 1 } } }
	Ah_3_out { ap_vld {  { Ah_3_out out_data 1 64 }  { Ah_3_out_ap_vld out_vld 1 1 } } }
	Ah_2_out { ap_vld {  { Ah_2_out out_data 1 64 }  { Ah_2_out_ap_vld out_vld 1 1 } } }
	Ah_1_out { ap_vld {  { Ah_1_out out_data 1 64 }  { Ah_1_out_ap_vld out_vld 1 1 } } }
	Ah_out { ap_vld {  { Ah_out out_data 1 64 }  { Ah_out_ap_vld out_vld 1 1 } } }
}
