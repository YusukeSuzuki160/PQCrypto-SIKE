set moduleName fpmul503_mont_13
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
set C_modelName {fpmul503_mont.13}
set C_modelType { int 512 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict mb { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ma_read int 64 regular  }
	{ ma_read_45 int 64 regular  }
	{ ma_read_46 int 64 regular  }
	{ ma_read_47 int 64 regular  }
	{ ma_read_48 int 64 regular  }
	{ ma_read_49 int 64 regular  }
	{ ma_read_50 int 64 regular  }
	{ ma_read_51 int 64 regular  }
	{ mb int 64 regular {array 8 { 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ma_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_45", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_46", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_47", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_48", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_49", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_50", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_51", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mb", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ma_read sc_in sc_lv 64 signal 0 } 
	{ ma_read_45 sc_in sc_lv 64 signal 1 } 
	{ ma_read_46 sc_in sc_lv 64 signal 2 } 
	{ ma_read_47 sc_in sc_lv 64 signal 3 } 
	{ ma_read_48 sc_in sc_lv 64 signal 4 } 
	{ ma_read_49 sc_in sc_lv 64 signal 5 } 
	{ ma_read_50 sc_in sc_lv 64 signal 6 } 
	{ ma_read_51 sc_in sc_lv 64 signal 7 } 
	{ mb_address0 sc_out sc_lv 3 signal 8 } 
	{ mb_ce0 sc_out sc_logic 1 signal 8 } 
	{ mb_q0 sc_in sc_lv 64 signal 8 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
	{ ap_return_2 sc_out sc_lv 64 signal -1 } 
	{ ap_return_3 sc_out sc_lv 64 signal -1 } 
	{ ap_return_4 sc_out sc_lv 64 signal -1 } 
	{ ap_return_5 sc_out sc_lv 64 signal -1 } 
	{ ap_return_6 sc_out sc_lv 64 signal -1 } 
	{ ap_return_7 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ma_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read", "role": "default" }} , 
 	{ "name": "ma_read_45", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_45", "role": "default" }} , 
 	{ "name": "ma_read_46", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_46", "role": "default" }} , 
 	{ "name": "ma_read_47", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_47", "role": "default" }} , 
 	{ "name": "ma_read_48", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_48", "role": "default" }} , 
 	{ "name": "ma_read_49", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_49", "role": "default" }} , 
 	{ "name": "ma_read_50", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_50", "role": "default" }} , 
 	{ "name": "ma_read_51", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_51", "role": "default" }} , 
 	{ "name": "mb_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mb", "role": "address0" }} , 
 	{ "name": "mb_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mb", "role": "ce0" }} , 
 	{ "name": "mb_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mb", "role": "q0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fpmul503_mont_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_12_fu_78", "Port" : "b"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "mul_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_11_fu_78", "Port" : "b"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "mul_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_128_1_1_U1545", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_128_1_1_U1546", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_128_1_1_U1547", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_128_1_1_U1548", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_128_1_1_U1549", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_128_1_1_U1550", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_128_1_1_U1551", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_128_1_1_U1552", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_128_1_1_U1553", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_56ns_119_1_1_U1554", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_56ns_119_1_1_U1555", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_62ns_125_1_1_U1556", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_62ns_125_1_1_U1557", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_62ns_125_1_1_U1558", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_127_1_1_U1559", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_64ns_127_1_1_U1560", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_65ns_128_1_1_U1561", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_65ns_128_1_1_U1562", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64ns_65ns_128_1_1_U1563", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64s_62ns_64_1_1_U1564", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64s_62ns_64_1_1_U1565", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64s_64ns_64_1_1_U1566", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64s_64ns_64_1_1_U1567", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64s_56ns_64_1_1_U1568", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64s_64s_64_1_1_U1569", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_78.grp_mul_11_fu_78.mul_64s_64s_64_1_1_U1570", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	fpmul503_mont_13 {
		ma_read {Type I LastRead 0 FirstWrite -1}
		ma_read_45 {Type I LastRead 0 FirstWrite -1}
		ma_read_46 {Type I LastRead 0 FirstWrite -1}
		ma_read_47 {Type I LastRead 0 FirstWrite -1}
		ma_read_48 {Type I LastRead 0 FirstWrite -1}
		ma_read_49 {Type I LastRead 0 FirstWrite -1}
		ma_read_50 {Type I LastRead 0 FirstWrite -1}
		ma_read_51 {Type I LastRead 0 FirstWrite -1}
		mb {Type I LastRead 7 FirstWrite -1}}
	mul_12 {
		a_read {Type I LastRead 0 FirstWrite -1}
		a_read_50 {Type I LastRead 0 FirstWrite -1}
		a_read_51 {Type I LastRead 0 FirstWrite -1}
		a_read_52 {Type I LastRead 0 FirstWrite -1}
		a_read_53 {Type I LastRead 0 FirstWrite -1}
		a_read_54 {Type I LastRead 0 FirstWrite -1}
		a_read_55 {Type I LastRead 0 FirstWrite -1}
		a_read_56 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 7 FirstWrite -1}}
	mul_11 {
		a_read {Type I LastRead 1 FirstWrite -1}
		a_read_22 {Type I LastRead 1 FirstWrite -1}
		a_read_23 {Type I LastRead 1 FirstWrite -1}
		a_read_24 {Type I LastRead 1 FirstWrite -1}
		a_read_25 {Type I LastRead 1 FirstWrite -1}
		a_read_26 {Type I LastRead 1 FirstWrite -1}
		a_read_27 {Type I LastRead 1 FirstWrite -1}
		a_read_28 {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ma_read { ap_none {  { ma_read in_data 0 64 } } }
	ma_read_45 { ap_none {  { ma_read_45 in_data 0 64 } } }
	ma_read_46 { ap_none {  { ma_read_46 in_data 0 64 } } }
	ma_read_47 { ap_none {  { ma_read_47 in_data 0 64 } } }
	ma_read_48 { ap_none {  { ma_read_48 in_data 0 64 } } }
	ma_read_49 { ap_none {  { ma_read_49 in_data 0 64 } } }
	ma_read_50 { ap_none {  { ma_read_50 in_data 0 64 } } }
	ma_read_51 { ap_none {  { ma_read_51 in_data 0 64 } } }
	mb { ap_memory {  { mb_address0 mem_address 1 3 }  { mb_ce0 mem_ce 1 1 }  { mb_q0 mem_dout 0 64 } } }
}
