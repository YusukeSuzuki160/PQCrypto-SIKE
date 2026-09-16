set moduleName mul_9
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
set C_modelName {mul.9}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c_0 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict c_1 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict c_2 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict c_3 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict c_4 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict c_5 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict c_6 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict c_7 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ a int 64 regular {array 8 { 1 } 1 1 }  }
	{ b int 64 regular {array 8 { 1 } 1 1 }  }
	{ c_0 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ c_1 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ c_2 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ c_3 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ c_4 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ c_5 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ c_6 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ c_7 int 64 regular {array 15 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_2", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_3", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_4", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_5", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_6", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_7", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_address0 sc_out sc_lv 3 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_q0 sc_in sc_lv 64 signal 0 } 
	{ b_address0 sc_out sc_lv 3 signal 1 } 
	{ b_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_q0 sc_in sc_lv 64 signal 1 } 
	{ c_0_address0 sc_out sc_lv 4 signal 2 } 
	{ c_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ c_0_we0 sc_out sc_logic 1 signal 2 } 
	{ c_0_d0 sc_out sc_lv 64 signal 2 } 
	{ c_1_address0 sc_out sc_lv 4 signal 3 } 
	{ c_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ c_1_we0 sc_out sc_logic 1 signal 3 } 
	{ c_1_d0 sc_out sc_lv 64 signal 3 } 
	{ c_2_address0 sc_out sc_lv 4 signal 4 } 
	{ c_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ c_2_we0 sc_out sc_logic 1 signal 4 } 
	{ c_2_d0 sc_out sc_lv 64 signal 4 } 
	{ c_3_address0 sc_out sc_lv 4 signal 5 } 
	{ c_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ c_3_we0 sc_out sc_logic 1 signal 5 } 
	{ c_3_d0 sc_out sc_lv 64 signal 5 } 
	{ c_4_address0 sc_out sc_lv 4 signal 6 } 
	{ c_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ c_4_we0 sc_out sc_logic 1 signal 6 } 
	{ c_4_d0 sc_out sc_lv 64 signal 6 } 
	{ c_5_address0 sc_out sc_lv 4 signal 7 } 
	{ c_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ c_5_we0 sc_out sc_logic 1 signal 7 } 
	{ c_5_d0 sc_out sc_lv 64 signal 7 } 
	{ c_6_address0 sc_out sc_lv 4 signal 8 } 
	{ c_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ c_6_we0 sc_out sc_logic 1 signal 8 } 
	{ c_6_d0 sc_out sc_lv 64 signal 8 } 
	{ c_7_address0 sc_out sc_lv 4 signal 9 } 
	{ c_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ c_7_we0 sc_out sc_logic 1 signal 9 } 
	{ c_7_d0 sc_out sc_lv 64 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "c_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_0", "role": "address0" }} , 
 	{ "name": "c_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "ce0" }} , 
 	{ "name": "c_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "we0" }} , 
 	{ "name": "c_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_0", "role": "d0" }} , 
 	{ "name": "c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_1", "role": "address0" }} , 
 	{ "name": "c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "ce0" }} , 
 	{ "name": "c_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "we0" }} , 
 	{ "name": "c_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_1", "role": "d0" }} , 
 	{ "name": "c_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_2", "role": "address0" }} , 
 	{ "name": "c_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "ce0" }} , 
 	{ "name": "c_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "we0" }} , 
 	{ "name": "c_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_2", "role": "d0" }} , 
 	{ "name": "c_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_3", "role": "address0" }} , 
 	{ "name": "c_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "ce0" }} , 
 	{ "name": "c_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "we0" }} , 
 	{ "name": "c_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_3", "role": "d0" }} , 
 	{ "name": "c_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_4", "role": "address0" }} , 
 	{ "name": "c_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_4", "role": "ce0" }} , 
 	{ "name": "c_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_4", "role": "we0" }} , 
 	{ "name": "c_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_4", "role": "d0" }} , 
 	{ "name": "c_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_5", "role": "address0" }} , 
 	{ "name": "c_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_5", "role": "ce0" }} , 
 	{ "name": "c_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_5", "role": "we0" }} , 
 	{ "name": "c_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_5", "role": "d0" }} , 
 	{ "name": "c_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_6", "role": "address0" }} , 
 	{ "name": "c_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_6", "role": "ce0" }} , 
 	{ "name": "c_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_6", "role": "we0" }} , 
 	{ "name": "c_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_6", "role": "d0" }} , 
 	{ "name": "c_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_7", "role": "address0" }} , 
 	{ "name": "c_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_7", "role": "ce0" }} , 
 	{ "name": "c_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_7", "role": "we0" }} , 
 	{ "name": "c_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "mul_9",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_7", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1984", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1985", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1986", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1987", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1988", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1989", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1990", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1991", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1992", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_56ns_119_1_1_U1993", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_56ns_119_1_1_U1994", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_62ns_125_1_1_U1995", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_62ns_125_1_1_U1996", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_62ns_125_1_1_U1997", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_62ns_125_1_1_U1998", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_127_1_1_U1999", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_127_1_1_U2000", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_65ns_128_1_1_U2001", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_65ns_128_1_1_U2002", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64ns_64_1_1_U2003", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64ns_64_1_1_U2004", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64ns_64_1_1_U2005", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_62ns_64_1_1_U2006", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64ns_64_1_1_U2007", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_62ns_64_1_1_U2008", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64ns_64_1_1_U2009", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_64_1_1_U2010", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_64_1_1_U2011", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_9 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 20}
		c_1 {Type O LastRead -1 FirstWrite 20}
		c_2 {Type O LastRead -1 FirstWrite 20}
		c_3 {Type O LastRead -1 FirstWrite 20}
		c_4 {Type O LastRead -1 FirstWrite 20}
		c_5 {Type O LastRead -1 FirstWrite 20}
		c_6 {Type O LastRead -1 FirstWrite 20}
		c_7 {Type O LastRead -1 FirstWrite 20}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "20"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "20"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 3 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 64 } } }
	b { ap_memory {  { b_address0 mem_address 1 3 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 64 } } }
	c_0 { ap_memory {  { c_0_address0 mem_address 1 4 }  { c_0_ce0 mem_ce 1 1 }  { c_0_we0 mem_we 1 1 }  { c_0_d0 mem_din 1 64 } } }
	c_1 { ap_memory {  { c_1_address0 mem_address 1 4 }  { c_1_ce0 mem_ce 1 1 }  { c_1_we0 mem_we 1 1 }  { c_1_d0 mem_din 1 64 } } }
	c_2 { ap_memory {  { c_2_address0 mem_address 1 4 }  { c_2_ce0 mem_ce 1 1 }  { c_2_we0 mem_we 1 1 }  { c_2_d0 mem_din 1 64 } } }
	c_3 { ap_memory {  { c_3_address0 mem_address 1 4 }  { c_3_ce0 mem_ce 1 1 }  { c_3_we0 mem_we 1 1 }  { c_3_d0 mem_din 1 64 } } }
	c_4 { ap_memory {  { c_4_address0 mem_address 1 4 }  { c_4_ce0 mem_ce 1 1 }  { c_4_we0 mem_we 1 1 }  { c_4_d0 mem_din 1 64 } } }
	c_5 { ap_memory {  { c_5_address0 mem_address 1 4 }  { c_5_ce0 mem_ce 1 1 }  { c_5_we0 mem_we 1 1 }  { c_5_d0 mem_din 1 64 } } }
	c_6 { ap_memory {  { c_6_address0 mem_address 1 4 }  { c_6_ce0 mem_ce 1 1 }  { c_6_we0 mem_we 1 1 }  { c_6_d0 mem_din 1 64 } } }
	c_7 { ap_memory {  { c_7_address0 mem_address 1 4 }  { c_7_ce0 mem_ce 1 1 }  { c_7_we0 mem_we 1 1 }  { c_7_d0 mem_din 1 64 } } }
}
