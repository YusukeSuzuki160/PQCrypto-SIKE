set moduleName redc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 655
set C_modelName {redc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ x_0_val int 64 regular  }
	{ x_1_val int 64 regular  }
	{ x_2_val int 64 regular  }
	{ x_3_val int 64 regular  }
	{ x_4_val int 64 regular  }
	{ x_5_val int 64 regular  }
	{ x_6_val int 64 regular  }
	{ x_7_val int 64 regular  }
	{ x_8_val int 64 regular  }
	{ x_9_val int 64 regular  }
	{ x_10_val int 64 regular  }
	{ x_11_val int 64 regular  }
	{ x_12_val int 64 regular  }
	{ x_13_val int 64 regular  }
	{ x_14_val int 64 regular  }
	{ x_15_val int 64 regular  }
	{ c int 64 regular {array 8 { 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "x_0_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_1_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_2_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_3_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_4_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_5_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_6_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_7_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_8_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_9_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_10_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_11_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_12_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_13_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_14_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_15_val", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ x_0_val sc_in sc_lv 64 signal 0 } 
	{ x_1_val sc_in sc_lv 64 signal 1 } 
	{ x_2_val sc_in sc_lv 64 signal 2 } 
	{ x_3_val sc_in sc_lv 64 signal 3 } 
	{ x_4_val sc_in sc_lv 64 signal 4 } 
	{ x_5_val sc_in sc_lv 64 signal 5 } 
	{ x_6_val sc_in sc_lv 64 signal 6 } 
	{ x_7_val sc_in sc_lv 64 signal 7 } 
	{ x_8_val sc_in sc_lv 64 signal 8 } 
	{ x_9_val sc_in sc_lv 64 signal 9 } 
	{ x_10_val sc_in sc_lv 64 signal 10 } 
	{ x_11_val sc_in sc_lv 64 signal 11 } 
	{ x_12_val sc_in sc_lv 64 signal 12 } 
	{ x_13_val sc_in sc_lv 64 signal 13 } 
	{ x_14_val sc_in sc_lv 64 signal 14 } 
	{ x_15_val sc_in sc_lv 64 signal 15 } 
	{ c_address0 sc_out sc_lv 3 signal 16 } 
	{ c_ce0 sc_out sc_logic 1 signal 16 } 
	{ c_we0 sc_out sc_logic 1 signal 16 } 
	{ c_d0 sc_out sc_lv 64 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "x_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_0_val", "role": "default" }} , 
 	{ "name": "x_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_1_val", "role": "default" }} , 
 	{ "name": "x_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_2_val", "role": "default" }} , 
 	{ "name": "x_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_3_val", "role": "default" }} , 
 	{ "name": "x_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_4_val", "role": "default" }} , 
 	{ "name": "x_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_5_val", "role": "default" }} , 
 	{ "name": "x_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_6_val", "role": "default" }} , 
 	{ "name": "x_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_7_val", "role": "default" }} , 
 	{ "name": "x_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_8_val", "role": "default" }} , 
 	{ "name": "x_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_9_val", "role": "default" }} , 
 	{ "name": "x_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_10_val", "role": "default" }} , 
 	{ "name": "x_11_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_11_val", "role": "default" }} , 
 	{ "name": "x_12_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_12_val", "role": "default" }} , 
 	{ "name": "x_13_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_13_val", "role": "default" }} , 
 	{ "name": "x_14_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_14_val", "role": "default" }} , 
 	{ "name": "x_15_val", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_15_val", "role": "default" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "redc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "24", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_56ns_119_1_1_U1452", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_62ns_125_1_1_U1453", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_62ns_125_1_1_U1454", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_127_1_1_U1455", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_65ns_128_1_1_U1456", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_65ns_128_1_1_U1457", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	redc {
		x_0_val {Type I LastRead 0 FirstWrite -1}
		x_1_val {Type I LastRead 0 FirstWrite -1}
		x_2_val {Type I LastRead 1 FirstWrite -1}
		x_3_val {Type I LastRead 1 FirstWrite -1}
		x_4_val {Type I LastRead 2 FirstWrite -1}
		x_5_val {Type I LastRead 2 FirstWrite -1}
		x_6_val {Type I LastRead 3 FirstWrite -1}
		x_7_val {Type I LastRead 3 FirstWrite -1}
		x_8_val {Type I LastRead 4 FirstWrite -1}
		x_9_val {Type I LastRead 6 FirstWrite -1}
		x_10_val {Type I LastRead 7 FirstWrite -1}
		x_11_val {Type I LastRead 7 FirstWrite -1}
		x_12_val {Type I LastRead 7 FirstWrite -1}
		x_13_val {Type I LastRead 7 FirstWrite -1}
		x_14_val {Type I LastRead 7 FirstWrite -1}
		x_15_val {Type I LastRead 7 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24", "Max" : "24"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_0_val { ap_none {  { x_0_val in_data 0 64 } } }
	x_1_val { ap_none {  { x_1_val in_data 0 64 } } }
	x_2_val { ap_none {  { x_2_val in_data 0 64 } } }
	x_3_val { ap_none {  { x_3_val in_data 0 64 } } }
	x_4_val { ap_none {  { x_4_val in_data 0 64 } } }
	x_5_val { ap_none {  { x_5_val in_data 0 64 } } }
	x_6_val { ap_none {  { x_6_val in_data 0 64 } } }
	x_7_val { ap_none {  { x_7_val in_data 0 64 } } }
	x_8_val { ap_none {  { x_8_val in_data 0 64 } } }
	x_9_val { ap_none {  { x_9_val in_data 0 64 } } }
	x_10_val { ap_none {  { x_10_val in_data 0 64 } } }
	x_11_val { ap_none {  { x_11_val in_data 0 64 } } }
	x_12_val { ap_none {  { x_12_val in_data 0 64 } } }
	x_13_val { ap_none {  { x_13_val in_data 0 64 } } }
	x_14_val { ap_none {  { x_14_val in_data 0 64 } } }
	x_15_val { ap_none {  { x_15_val in_data 0 64 } } }
	c { ap_memory {  { c_address0 mem_address 1 3 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 64 } } }
}
