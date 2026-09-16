set moduleName mul_19121_Pipeline_COL
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
set cdfgNum 598
set C_modelName {mul.19121_Pipeline_COL}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ acc int 64 regular {pointer 2}  }
	{ zext_ln69_10 int 4 regular  }
	{ b int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ acc_14 int 64 regular {pointer 2}  }
	{ acc_13 int 64 regular {pointer 2}  }
	{ acc_12 int 64 regular {pointer 2}  }
	{ acc_11 int 64 regular {pointer 2}  }
	{ acc_10 int 64 regular {pointer 2}  }
	{ acc_9 int 64 regular {pointer 2}  }
	{ acc_8 int 64 regular {pointer 2}  }
	{ acc_7 int 64 regular {pointer 2}  }
	{ acc_6 int 64 regular {pointer 2}  }
	{ acc_5 int 64 regular {pointer 2}  }
	{ acc_4 int 64 regular {pointer 2}  }
	{ acc_3 int 64 regular {pointer 2}  }
	{ acc_2 int 64 regular {pointer 2}  }
	{ acc_1 int 64 regular {pointer 2}  }
	{ i int 3 regular  }
	{ conv int 64 regular  }
	{ carry_598_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "acc", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln69_10", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "acc_14", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_13", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_12", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_10", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_9", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_8", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_7", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_6", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_5", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_4", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_3", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_2", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "acc_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "i", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "conv", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "carry_598_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ acc_i sc_in sc_lv 64 signal 0 } 
	{ acc_o sc_out sc_lv 64 signal 0 } 
	{ acc_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ zext_ln69_10 sc_in sc_lv 4 signal 1 } 
	{ b_address0 sc_out sc_lv 4 signal 2 } 
	{ b_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_q0 sc_in sc_lv 64 signal 2 } 
	{ acc_14_i sc_in sc_lv 64 signal 3 } 
	{ acc_14_o sc_out sc_lv 64 signal 3 } 
	{ acc_14_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ acc_13_i sc_in sc_lv 64 signal 4 } 
	{ acc_13_o sc_out sc_lv 64 signal 4 } 
	{ acc_13_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ acc_12_i sc_in sc_lv 64 signal 5 } 
	{ acc_12_o sc_out sc_lv 64 signal 5 } 
	{ acc_12_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ acc_11_i sc_in sc_lv 64 signal 6 } 
	{ acc_11_o sc_out sc_lv 64 signal 6 } 
	{ acc_11_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ acc_10_i sc_in sc_lv 64 signal 7 } 
	{ acc_10_o sc_out sc_lv 64 signal 7 } 
	{ acc_10_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ acc_9_i sc_in sc_lv 64 signal 8 } 
	{ acc_9_o sc_out sc_lv 64 signal 8 } 
	{ acc_9_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ acc_8_i sc_in sc_lv 64 signal 9 } 
	{ acc_8_o sc_out sc_lv 64 signal 9 } 
	{ acc_8_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ acc_7_i sc_in sc_lv 64 signal 10 } 
	{ acc_7_o sc_out sc_lv 64 signal 10 } 
	{ acc_7_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ acc_6_i sc_in sc_lv 64 signal 11 } 
	{ acc_6_o sc_out sc_lv 64 signal 11 } 
	{ acc_6_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ acc_5_i sc_in sc_lv 64 signal 12 } 
	{ acc_5_o sc_out sc_lv 64 signal 12 } 
	{ acc_5_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ acc_4_i sc_in sc_lv 64 signal 13 } 
	{ acc_4_o sc_out sc_lv 64 signal 13 } 
	{ acc_4_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ acc_3_i sc_in sc_lv 64 signal 14 } 
	{ acc_3_o sc_out sc_lv 64 signal 14 } 
	{ acc_3_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ acc_2_i sc_in sc_lv 64 signal 15 } 
	{ acc_2_o sc_out sc_lv 64 signal 15 } 
	{ acc_2_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ acc_1_i sc_in sc_lv 64 signal 16 } 
	{ acc_1_o sc_out sc_lv 64 signal 16 } 
	{ acc_1_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ i sc_in sc_lv 3 signal 17 } 
	{ conv sc_in sc_lv 64 signal 18 } 
	{ carry_598_out sc_out sc_lv 64 signal 19 } 
	{ carry_598_out_ap_vld sc_out sc_logic 1 outvld 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "acc_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc", "role": "i" }} , 
 	{ "name": "acc_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc", "role": "o" }} , 
 	{ "name": "acc_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc", "role": "o_ap_vld" }} , 
 	{ "name": "zext_ln69_10", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln69_10", "role": "default" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "acc_14_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_14", "role": "i" }} , 
 	{ "name": "acc_14_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_14", "role": "o" }} , 
 	{ "name": "acc_14_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_14", "role": "o_ap_vld" }} , 
 	{ "name": "acc_13_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_13", "role": "i" }} , 
 	{ "name": "acc_13_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_13", "role": "o" }} , 
 	{ "name": "acc_13_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_13", "role": "o_ap_vld" }} , 
 	{ "name": "acc_12_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_12", "role": "i" }} , 
 	{ "name": "acc_12_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_12", "role": "o" }} , 
 	{ "name": "acc_12_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_12", "role": "o_ap_vld" }} , 
 	{ "name": "acc_11_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_11", "role": "i" }} , 
 	{ "name": "acc_11_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_11", "role": "o" }} , 
 	{ "name": "acc_11_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_11", "role": "o_ap_vld" }} , 
 	{ "name": "acc_10_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_10", "role": "i" }} , 
 	{ "name": "acc_10_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_10", "role": "o" }} , 
 	{ "name": "acc_10_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_10", "role": "o_ap_vld" }} , 
 	{ "name": "acc_9_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_9", "role": "i" }} , 
 	{ "name": "acc_9_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_9", "role": "o" }} , 
 	{ "name": "acc_9_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_9", "role": "o_ap_vld" }} , 
 	{ "name": "acc_8_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_8", "role": "i" }} , 
 	{ "name": "acc_8_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_8", "role": "o" }} , 
 	{ "name": "acc_8_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_8", "role": "o_ap_vld" }} , 
 	{ "name": "acc_7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_7", "role": "i" }} , 
 	{ "name": "acc_7_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_7", "role": "o" }} , 
 	{ "name": "acc_7_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_7", "role": "o_ap_vld" }} , 
 	{ "name": "acc_6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_6", "role": "i" }} , 
 	{ "name": "acc_6_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_6", "role": "o" }} , 
 	{ "name": "acc_6_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_6", "role": "o_ap_vld" }} , 
 	{ "name": "acc_5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_5", "role": "i" }} , 
 	{ "name": "acc_5_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_5", "role": "o" }} , 
 	{ "name": "acc_5_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_5", "role": "o_ap_vld" }} , 
 	{ "name": "acc_4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_4", "role": "i" }} , 
 	{ "name": "acc_4_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_4", "role": "o" }} , 
 	{ "name": "acc_4_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_4", "role": "o_ap_vld" }} , 
 	{ "name": "acc_3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_3", "role": "i" }} , 
 	{ "name": "acc_3_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_3", "role": "o" }} , 
 	{ "name": "acc_3_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_3", "role": "o_ap_vld" }} , 
 	{ "name": "acc_2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_2", "role": "i" }} , 
 	{ "name": "acc_2_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_2", "role": "o" }} , 
 	{ "name": "acc_2_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_2", "role": "o_ap_vld" }} , 
 	{ "name": "acc_1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_1", "role": "i" }} , 
 	{ "name": "acc_1_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "acc_1", "role": "o" }} , 
 	{ "name": "acc_1_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "acc_1", "role": "o_ap_vld" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "conv", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv", "role": "default" }} , 
 	{ "name": "carry_598_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "carry_598_out", "role": "default" }} , 
 	{ "name": "carry_598_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "carry_598_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "mul_19121_Pipeline_COL",
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
			{"Name" : "zext_ln69_10", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "carry_598_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U2369", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_31_4_64_1_1_U2370", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_19121_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		zext_ln69_10 {Type I LastRead 0 FirstWrite -1}
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
		carry_598_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	acc { ap_ovld {  { acc_i in_data 0 64 }  { acc_o out_data 1 64 }  { acc_o_ap_vld out_vld 1 1 } } }
	zext_ln69_10 { ap_none {  { zext_ln69_10 in_data 0 4 } } }
	b { ap_memory {  { b_address0 mem_address 1 4 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 64 } } }
	acc_14 { ap_ovld {  { acc_14_i in_data 0 64 }  { acc_14_o out_data 1 64 }  { acc_14_o_ap_vld out_vld 1 1 } } }
	acc_13 { ap_ovld {  { acc_13_i in_data 0 64 }  { acc_13_o out_data 1 64 }  { acc_13_o_ap_vld out_vld 1 1 } } }
	acc_12 { ap_ovld {  { acc_12_i in_data 0 64 }  { acc_12_o out_data 1 64 }  { acc_12_o_ap_vld out_vld 1 1 } } }
	acc_11 { ap_ovld {  { acc_11_i in_data 0 64 }  { acc_11_o out_data 1 64 }  { acc_11_o_ap_vld out_vld 1 1 } } }
	acc_10 { ap_ovld {  { acc_10_i in_data 0 64 }  { acc_10_o out_data 1 64 }  { acc_10_o_ap_vld out_vld 1 1 } } }
	acc_9 { ap_ovld {  { acc_9_i in_data 0 64 }  { acc_9_o out_data 1 64 }  { acc_9_o_ap_vld out_vld 1 1 } } }
	acc_8 { ap_ovld {  { acc_8_i in_data 0 64 }  { acc_8_o out_data 1 64 }  { acc_8_o_ap_vld out_vld 1 1 } } }
	acc_7 { ap_ovld {  { acc_7_i in_data 0 64 }  { acc_7_o out_data 1 64 }  { acc_7_o_ap_vld out_vld 1 1 } } }
	acc_6 { ap_ovld {  { acc_6_i in_data 0 64 }  { acc_6_o out_data 1 64 }  { acc_6_o_ap_vld out_vld 1 1 } } }
	acc_5 { ap_ovld {  { acc_5_i in_data 0 64 }  { acc_5_o out_data 1 64 }  { acc_5_o_ap_vld out_vld 1 1 } } }
	acc_4 { ap_ovld {  { acc_4_i in_data 0 64 }  { acc_4_o out_data 1 64 }  { acc_4_o_ap_vld out_vld 1 1 } } }
	acc_3 { ap_ovld {  { acc_3_i in_data 0 64 }  { acc_3_o out_data 1 64 }  { acc_3_o_ap_vld out_vld 1 1 } } }
	acc_2 { ap_ovld {  { acc_2_i in_data 0 64 }  { acc_2_o out_data 1 64 }  { acc_2_o_ap_vld out_vld 1 1 } } }
	acc_1 { ap_ovld {  { acc_1_i in_data 0 64 }  { acc_1_o out_data 1 64 }  { acc_1_o_ap_vld out_vld 1 1 } } }
	i { ap_none {  { i in_data 0 3 } } }
	conv { ap_none {  { conv in_data 0 64 } } }
	carry_598_out { ap_vld {  { carry_598_out out_data 1 64 }  { carry_598_out_ap_vld out_vld 1 1 } } }
}
