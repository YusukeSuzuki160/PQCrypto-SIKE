set moduleName fpmul503_mont_48
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
set cdfgNum 598
set C_modelName {fpmul503_mont.48}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ma { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict coeff { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ma int 64 regular {array 8 { 1 1 } 1 1 }  }
	{ coeff int 64 regular {array 48 { 1 3 } 1 1 }  }
	{ mc int 64 regular {array 16 { 0 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ma", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "coeff", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mc", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ma_address0 sc_out sc_lv 3 signal 0 } 
	{ ma_ce0 sc_out sc_logic 1 signal 0 } 
	{ ma_q0 sc_in sc_lv 64 signal 0 } 
	{ ma_address1 sc_out sc_lv 3 signal 0 } 
	{ ma_ce1 sc_out sc_logic 1 signal 0 } 
	{ ma_q1 sc_in sc_lv 64 signal 0 } 
	{ coeff_address0 sc_out sc_lv 6 signal 1 } 
	{ coeff_ce0 sc_out sc_logic 1 signal 1 } 
	{ coeff_q0 sc_in sc_lv 64 signal 1 } 
	{ mc_address0 sc_out sc_lv 4 signal 2 } 
	{ mc_ce0 sc_out sc_logic 1 signal 2 } 
	{ mc_we0 sc_out sc_logic 1 signal 2 } 
	{ mc_d0 sc_out sc_lv 64 signal 2 } 
	{ mc_address1 sc_out sc_lv 4 signal 2 } 
	{ mc_ce1 sc_out sc_logic 1 signal 2 } 
	{ mc_we1 sc_out sc_logic 1 signal 2 } 
	{ mc_d1 sc_out sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ma_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ma", "role": "address0" }} , 
 	{ "name": "ma_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ma", "role": "ce0" }} , 
 	{ "name": "ma_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma", "role": "q0" }} , 
 	{ "name": "ma_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ma", "role": "address1" }} , 
 	{ "name": "ma_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ma", "role": "ce1" }} , 
 	{ "name": "ma_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma", "role": "q1" }} , 
 	{ "name": "coeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coeff", "role": "address0" }} , 
 	{ "name": "coeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff", "role": "ce0" }} , 
 	{ "name": "coeff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeff", "role": "q0" }} , 
 	{ "name": "mc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc", "role": "address0" }} , 
 	{ "name": "mc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce0" }} , 
 	{ "name": "mc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "we0" }} , 
 	{ "name": "mc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "d0" }} , 
 	{ "name": "mc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc", "role": "address1" }} , 
 	{ "name": "mc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce1" }} , 
 	{ "name": "mc_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "we1" }} , 
 	{ "name": "mc_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fpmul503_mont_48",
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
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_57_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_57_fu_8", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_57_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "mul_57",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1259", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1260", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1261", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1262", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1263", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1264", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1265", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1266", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1267", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1268", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1269", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1270", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_128_1_1_U1271", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_56ns_119_1_1_U1272", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_62ns_125_1_1_U1273", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_62ns_125_1_1_U1274", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_64ns_127_1_1_U1275", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_65ns_128_1_1_U1276", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64ns_65ns_128_1_1_U1277", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64s_64ns_64_1_1_U1278", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64s_64ns_64_1_1_U1279", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64s_62ns_64_1_1_U1280", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64s_62ns_64_1_1_U1281", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_57_fu_8.mul_64s_64s_64_1_1_U1282", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	fpmul503_mont_48 {
		ma {Type I LastRead 6 FirstWrite -1}
		coeff {Type I LastRead 10 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 16}}
	mul_57 {
		a {Type I LastRead 6 FirstWrite -1}
		coeff {Type I LastRead 10 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "20"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "20"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ma { ap_memory {  { ma_address0 mem_address 1 3 }  { ma_ce0 mem_ce 1 1 }  { ma_q0 mem_dout 0 64 }  { ma_address1 MemPortADDR2 1 3 }  { ma_ce1 MemPortCE2 1 1 }  { ma_q1 MemPortDOUT2 0 64 } } }
	coeff { ap_memory {  { coeff_address0 mem_address 1 6 }  { coeff_ce0 mem_ce 1 1 }  { coeff_q0 mem_dout 0 64 } } }
	mc { ap_memory {  { mc_address0 mem_address 1 4 }  { mc_ce0 mem_ce 1 1 }  { mc_we0 mem_we 1 1 }  { mc_d0 mem_din 1 64 }  { mc_address1 MemPortADDR2 1 4 }  { mc_ce1 MemPortCE2 1 1 }  { mc_we1 MemPortWE2 1 1 }  { mc_d1 MemPortDIN2 1 64 } } }
}
