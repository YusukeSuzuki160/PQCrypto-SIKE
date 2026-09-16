set moduleName fpmul503_mont_13
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
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
set cdfgNum 598
set C_modelName {fpmul503_mont.13}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict mc { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ma_read int 64 regular  }
	{ ma_read_23 int 64 regular  }
	{ ma_read_24 int 64 regular  }
	{ ma_read_25 int 64 regular  }
	{ ma_read_26 int 64 regular  }
	{ ma_read_27 int 64 regular  }
	{ ma_read_28 int 64 regular  }
	{ ma_read_29 int 64 regular  }
	{ mc int 64 regular {array 8 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ma_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_23", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_24", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_25", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_26", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_27", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_28", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_read_29", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mc", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
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
	{ ma_read_23 sc_in sc_lv 64 signal 1 } 
	{ ma_read_24 sc_in sc_lv 64 signal 2 } 
	{ ma_read_25 sc_in sc_lv 64 signal 3 } 
	{ ma_read_26 sc_in sc_lv 64 signal 4 } 
	{ ma_read_27 sc_in sc_lv 64 signal 5 } 
	{ ma_read_28 sc_in sc_lv 64 signal 6 } 
	{ ma_read_29 sc_in sc_lv 64 signal 7 } 
	{ mc_address0 sc_out sc_lv 3 signal 8 } 
	{ mc_ce0 sc_out sc_logic 1 signal 8 } 
	{ mc_we0 sc_out sc_logic 1 signal 8 } 
	{ mc_d0 sc_out sc_lv 64 signal 8 } 
	{ mc_q0 sc_in sc_lv 64 signal 8 } 
	{ mc_address1 sc_out sc_lv 3 signal 8 } 
	{ mc_ce1 sc_out sc_logic 1 signal 8 } 
	{ mc_we1 sc_out sc_logic 1 signal 8 } 
	{ mc_d1 sc_out sc_lv 64 signal 8 } 
	{ mc_q1 sc_in sc_lv 64 signal 8 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ma_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read", "role": "default" }} , 
 	{ "name": "ma_read_23", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_23", "role": "default" }} , 
 	{ "name": "ma_read_24", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_24", "role": "default" }} , 
 	{ "name": "ma_read_25", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_25", "role": "default" }} , 
 	{ "name": "ma_read_26", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_26", "role": "default" }} , 
 	{ "name": "ma_read_27", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_27", "role": "default" }} , 
 	{ "name": "ma_read_28", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_28", "role": "default" }} , 
 	{ "name": "ma_read_29", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_read_29", "role": "default" }} , 
 	{ "name": "mc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc", "role": "address0" }} , 
 	{ "name": "mc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce0" }} , 
 	{ "name": "mc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "we0" }} , 
 	{ "name": "mc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "d0" }} , 
 	{ "name": "mc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "q0" }} , 
 	{ "name": "mc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc", "role": "address1" }} , 
 	{ "name": "mc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce1" }} , 
 	{ "name": "mc_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "we1" }} , 
 	{ "name": "mc_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "d1" }} , 
 	{ "name": "mc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "q1" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fpmul503_mont_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "20",
		"VariableLatency" : "0", "ExactLatency" : "19", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_12_fu_70", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "20"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "mul_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "20",
		"VariableLatency" : "0", "ExactLatency" : "19", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1812", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1813", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1814", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1815", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1816", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1817", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1818", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1819", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1820", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1821", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_128_1_1_U1822", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_56ns_119_1_1_U1823", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_56ns_119_1_1_U1824", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_62ns_125_1_1_U1825", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_62ns_125_1_1_U1826", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_62ns_125_1_1_U1827", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_127_1_1_U1828", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_64ns_127_1_1_U1829", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_65ns_128_1_1_U1830", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64ns_65ns_128_1_1_U1831", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64s_64ns_64_1_1_U1832", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64s_64ns_64_1_1_U1833", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64s_62ns_64_1_1_U1834", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64s_62ns_64_1_1_U1835", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64s_62ns_64_1_1_U1836", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_12_fu_70.mul_64s_64s_64_1_1_U1837", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	fpmul503_mont_13 {
		ma_read {Type I LastRead 0 FirstWrite -1}
		ma_read_23 {Type I LastRead 0 FirstWrite -1}
		ma_read_24 {Type I LastRead 0 FirstWrite -1}
		ma_read_25 {Type I LastRead 0 FirstWrite -1}
		ma_read_26 {Type I LastRead 0 FirstWrite -1}
		ma_read_27 {Type I LastRead 0 FirstWrite -1}
		ma_read_28 {Type I LastRead 0 FirstWrite -1}
		ma_read_29 {Type I LastRead 0 FirstWrite -1}
		mc {Type IO LastRead 4 FirstWrite 16}}
	mul_12 {
		a_read {Type I LastRead 1 FirstWrite -1}
		a_read_8 {Type I LastRead 1 FirstWrite -1}
		a_read_9 {Type I LastRead 1 FirstWrite -1}
		a_read_10 {Type I LastRead 1 FirstWrite -1}
		a_read_11 {Type I LastRead 1 FirstWrite -1}
		a_read_12 {Type I LastRead 1 FirstWrite -1}
		a_read_13 {Type I LastRead 3 FirstWrite -1}
		a_read_14 {Type I LastRead 4 FirstWrite -1}
		c {Type IO LastRead 4 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "20"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ma_read { ap_none {  { ma_read in_data 0 64 } } }
	ma_read_23 { ap_none {  { ma_read_23 in_data 0 64 } } }
	ma_read_24 { ap_none {  { ma_read_24 in_data 0 64 } } }
	ma_read_25 { ap_none {  { ma_read_25 in_data 0 64 } } }
	ma_read_26 { ap_none {  { ma_read_26 in_data 0 64 } } }
	ma_read_27 { ap_none {  { ma_read_27 in_data 0 64 } } }
	ma_read_28 { ap_none {  { ma_read_28 in_data 0 64 } } }
	ma_read_29 { ap_none {  { ma_read_29 in_data 0 64 } } }
	mc { ap_memory {  { mc_address0 mem_address 1 3 }  { mc_ce0 mem_ce 1 1 }  { mc_we0 mem_we 1 1 }  { mc_d0 mem_din 1 64 }  { mc_q0 mem_dout 0 64 }  { mc_address1 MemPortADDR2 1 3 }  { mc_ce1 MemPortCE2 1 1 }  { mc_we1 MemPortWE2 1 1 }  { mc_d1 MemPortDIN2 1 64 }  { mc_q1 MemPortDOUT2 0 64 } } }
}
