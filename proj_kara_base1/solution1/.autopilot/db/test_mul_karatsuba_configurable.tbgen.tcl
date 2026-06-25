set moduleName test_mul_karatsuba_configurable
set isTopModule 1
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
set cdfgNum 110
set C_modelName {test_mul_karatsuba_configurable}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 64 regular {bram 8 { 1 3 } 1 1 }  }
	{ b int 64 regular {bram 8 { 1 3 } 1 1 }  }
	{ c int 64 regular {bram 16 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "bram", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "bram", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "bram", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ a_Addr_A sc_out sc_lv 32 signal 0 } 
	{ a_EN_A sc_out sc_logic 1 signal 0 } 
	{ a_WEN_A sc_out sc_lv 8 signal 0 } 
	{ a_Din_A sc_out sc_lv 64 signal 0 } 
	{ a_Dout_A sc_in sc_lv 64 signal 0 } 
	{ a_Clk_A sc_out sc_logic 1 signal 0 } 
	{ a_Rst_A sc_out sc_logic 1 signal 0 } 
	{ b_Addr_A sc_out sc_lv 32 signal 1 } 
	{ b_EN_A sc_out sc_logic 1 signal 1 } 
	{ b_WEN_A sc_out sc_lv 8 signal 1 } 
	{ b_Din_A sc_out sc_lv 64 signal 1 } 
	{ b_Dout_A sc_in sc_lv 64 signal 1 } 
	{ b_Clk_A sc_out sc_logic 1 signal 1 } 
	{ b_Rst_A sc_out sc_logic 1 signal 1 } 
	{ c_Addr_A sc_out sc_lv 32 signal 2 } 
	{ c_EN_A sc_out sc_logic 1 signal 2 } 
	{ c_WEN_A sc_out sc_lv 8 signal 2 } 
	{ c_Din_A sc_out sc_lv 64 signal 2 } 
	{ c_Dout_A sc_in sc_lv 64 signal 2 } 
	{ c_Clk_A sc_out sc_logic 1 signal 2 } 
	{ c_Rst_A sc_out sc_logic 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"test_mul_karatsuba_configurable","role":"start","value":"0","valid_bit":"0"},{"name":"test_mul_karatsuba_configurable","role":"continue","value":"0","valid_bit":"4"},{"name":"test_mul_karatsuba_configurable","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"test_mul_karatsuba_configurable","role":"start","value":"0","valid_bit":"0"},{"name":"test_mul_karatsuba_configurable","role":"done","value":"0","valid_bit":"1"},{"name":"test_mul_karatsuba_configurable","role":"idle","value":"0","valid_bit":"2"},{"name":"test_mul_karatsuba_configurable","role":"ready","value":"0","valid_bit":"3"},{"name":"test_mul_karatsuba_configurable","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "a_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Addr_A" }} , 
 	{ "name": "a_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "EN_A" }} , 
 	{ "name": "a_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "WEN_A" }} , 
 	{ "name": "a_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Din_A" }} , 
 	{ "name": "a_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Dout_A" }} , 
 	{ "name": "a_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "Clk_A" }} , 
 	{ "name": "a_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "Rst_A" }} , 
 	{ "name": "b_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "Addr_A" }} , 
 	{ "name": "b_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "EN_A" }} , 
 	{ "name": "b_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b", "role": "WEN_A" }} , 
 	{ "name": "b_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Din_A" }} , 
 	{ "name": "b_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Dout_A" }} , 
 	{ "name": "b_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "Clk_A" }} , 
 	{ "name": "b_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "Rst_A" }} , 
 	{ "name": "c_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "Addr_A" }} , 
 	{ "name": "c_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "EN_A" }} , 
 	{ "name": "c_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c", "role": "WEN_A" }} , 
 	{ "name": "c_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "Din_A" }} , 
 	{ "name": "c_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "Dout_A" }} , 
 	{ "name": "c_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "Clk_A" }} , 
 	{ "name": "c_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "Rst_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "291"],
		"CDFG" : "test_mul_karatsuba_configurable",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "11", "13", "15", "17", "20", "23", "25", "28", "31", "33", "35", "37", "39", "41", "45", "49", "52", "54", "57", "59", "62", "64", "66", "68", "71", "74", "76", "79", "82", "84", "86", "88", "90", "94", "97", "100", "103", "105", "108", "110", "113", "115", "118", "120", "122", "124", "127", "130", "132", "134", "136", "138", "140", "142", "144", "147", "150", "153", "155", "158", "161", "164", "166", "169", "171", "174", "177", "179", "181", "184", "188", "191", "194", "197", "199", "202", "205", "207", "210", "213", "217", "220", "223", "225", "228", "231", "234", "236", "239", "242", "246", "249", "251", "253", "255", "259", "261", "263", "266", "269", "272", "274", "277", "279", "282", "283", "284", "285", "286", "287", "288", "289", "290"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "193", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_1494", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "11", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_1510", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_1494", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "11", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_1510", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "279", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_113_397_fu_2505", "Port" : "c", "Inst_start_state" : "54", "Inst_end_state" : "55"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.z1_1_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.z1_2_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.z1_3_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.z0_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.z2_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.z1_17_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_1494", "Parent" : "2", "Child" : ["10"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_1",
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
			{"Name" : "Al_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_1494.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_1510", "Parent" : "2", "Child" : ["12"],
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
			{"Name" : "Ah_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_1510.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_11_fu_1526", "Parent" : "2", "Child" : ["14"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Al_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_11_fu_1526.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_22_fu_1542", "Parent" : "2", "Child" : ["16"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_22",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Al_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_22_fu_1542.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_1558", "Parent" : "2", "Child" : ["18", "19"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_1558.partselect_64ns_128ns_32ns_64_1_1_U41", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_1558.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_23_fu_1565", "Parent" : "2", "Child" : ["21", "22"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_23",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_23_fu_1565.partselect_64ns_128ns_32ns_64_1_1_U46", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_23_fu_1565.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_1572", "Parent" : "2", "Child" : ["24"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sbl_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_1572.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_25_fu_1580", "Parent" : "2", "Child" : ["26", "27"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_25",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_25_fu_1580.partselect_64ns_128ns_32ns_64_1_1_U82", "Parent" : "25"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_25_fu_1580.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_26_fu_1587", "Parent" : "2", "Child" : ["29", "30"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_26_fu_1587.partselect_64ns_128ns_32ns_64_1_1_U86", "Parent" : "28"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_26_fu_1587.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_17_fu_1594", "Parent" : "2", "Child" : ["32"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sbl_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_17_fu_1594.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_1602", "Parent" : "2", "Child" : ["34"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Al_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1155509_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_1602.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_112_fu_1613", "Parent" : "2", "Child" : ["36"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_112",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Bl_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1418511_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_28_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_112_fu_1613.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_126_fu_1624", "Parent" : "2", "Child" : ["38"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_126",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Ah_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_126_fu_1624.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_227_fu_1640", "Parent" : "2", "Child" : ["40"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_227",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Ah_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_227_fu_1640.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_157_fu_1656", "Parent" : "2", "Child" : ["42", "43", "44"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_157",
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
			{"Name" : "Al_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_157_fu_1656.sparsemux_9_2_64_1_1_U386", "Parent" : "41"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_157_fu_1656.sparsemux_9_2_64_1_1_U387", "Parent" : "41"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_157_fu_1656.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_158_fu_1673", "Parent" : "2", "Child" : ["46", "47", "48"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_158",
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
			{"Name" : "Bl_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_158_fu_1673.sparsemux_9_2_64_1_1_U401", "Parent" : "45"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_158_fu_1673.sparsemux_9_2_64_1_1_U402", "Parent" : "45"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_158_fu_1673.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_1690", "Parent" : "2", "Child" : ["50", "51"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_1690.partselect_64ns_128ns_32ns_64_1_1_U54", "Parent" : "49"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_1690.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_1700", "Parent" : "2", "Child" : ["53"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_1700.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_28_fu_1710", "Parent" : "2", "Child" : ["55", "56"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_28",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_28_fu_1710.partselect_64ns_128ns_32ns_64_1_1_U94", "Parent" : "54"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_28_fu_1710.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_19_fu_1720", "Parent" : "2", "Child" : ["58"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z0_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W2_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_19_fu_1720.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_1730", "Parent" : "2", "Child" : ["60", "61"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_213",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_1730.partselect_64ns_128ns_32ns_64_1_1_U134", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_1730.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_114_fu_1737", "Parent" : "2", "Child" : ["63"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_114",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Bh_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_114_fu_1737.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_116_fu_1745", "Parent" : "2", "Child" : ["65"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_116",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln56_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload52", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_34_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_116_fu_1745.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_117_fu_1754", "Parent" : "2", "Child" : ["67"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_117",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln56_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload55", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_117_fu_1754.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1763", "Parent" : "2", "Child" : ["69", "70"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_228",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1763.partselect_64ns_128ns_32ns_64_1_1_U227", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1763.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_229_fu_1770", "Parent" : "2", "Child" : ["72", "73"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_229",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_23_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_229_fu_1770.partselect_64ns_128ns_32ns_64_1_1_U231", "Parent" : "71"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_229_fu_1770.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_130_fu_1777", "Parent" : "2", "Child" : ["75"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_130",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_130_fu_1777.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_235_fu_1785", "Parent" : "2", "Child" : ["77", "78"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_235",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_235_fu_1785.partselect_64ns_128ns_32ns_64_1_1_U265", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_235_fu_1785.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_236_fu_1792", "Parent" : "2", "Child" : ["80", "81"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_236",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_236_fu_1792.partselect_64ns_128ns_32ns_64_1_1_U269", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_236_fu_1792.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_137_fu_1799", "Parent" : "2", "Child" : ["83"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_137",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_137_fu_1799.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_142_fu_1807", "Parent" : "2", "Child" : ["85"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_142",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Al_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1253513_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_32_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_142_fu_1807.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_143_fu_1818", "Parent" : "2", "Child" : ["87"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_143",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Bl_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1440515_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_32_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_143_fu_1818.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_159_fu_1829", "Parent" : "2", "Child" : ["89"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_159_fu_1829.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_260_fu_1845", "Parent" : "2", "Child" : ["91", "92", "93"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_260",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "or_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_260_fu_1845.sparsemux_7_2_64_1_1_U428", "Parent" : "90"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_260_fu_1845.sparsemux_7_2_64_1_1_U429", "Parent" : "90"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_260_fu_1845.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1864", "Parent" : "2", "Child" : ["95", "96"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1864.sparsemux_9_2_64_1_1_U67", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1864.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_210_fu_1874", "Parent" : "2", "Child" : ["98", "99"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_210",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_210_fu_1874.sparsemux_9_2_64_1_1_U107", "Parent" : "97"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_210_fu_1874.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_215_fu_1884", "Parent" : "2", "Child" : ["101", "102"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_215",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln81_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_215_fu_1884.partselect_64ns_128ns_32ns_64_1_1_U142", "Parent" : "100"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_215_fu_1884.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_118_fu_1892", "Parent" : "2", "Child" : ["104"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_118",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_118_fu_1892.flow_control_loop_pipe_sequential_init_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_231_fu_1900", "Parent" : "2", "Child" : ["106", "107"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_231",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_34_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_231_fu_1900.partselect_64ns_128ns_32ns_64_1_1_U239", "Parent" : "105"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_231_fu_1900.flow_control_loop_pipe_sequential_init_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_132_fu_1910", "Parent" : "2", "Child" : ["109"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_132",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z0_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_132_fu_1910.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_238_fu_1920", "Parent" : "2", "Child" : ["111", "112"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_238",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_43_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_238_fu_1920.partselect_64ns_128ns_32ns_64_1_1_U277", "Parent" : "110"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_238_fu_1920.flow_control_loop_pipe_sequential_init_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_139_fu_1930", "Parent" : "2", "Child" : ["114"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_139",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z0_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_139_fu_1930.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_244_fu_1940", "Parent" : "2", "Child" : ["116", "117"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_244",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_39_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_244_fu_1940.partselect_64ns_128ns_32ns_64_1_1_U317", "Parent" : "115"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_244_fu_1940.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_145_fu_1947", "Parent" : "2", "Child" : ["119"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_145",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Ah_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_145_fu_1947.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_147_fu_1955", "Parent" : "2", "Child" : ["121"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_147",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln56_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload99", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_37_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_147_fu_1955.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_148_fu_1964", "Parent" : "2", "Child" : ["123"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_148",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln56_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload102", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_148_fu_1964.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_261_fu_1973", "Parent" : "2", "Child" : ["125", "126"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_261",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_43_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_261_fu_1973.partselect_64ns_128ns_32ns_64_1_1_U446", "Parent" : "124"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_261_fu_1973.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_262_fu_1980", "Parent" : "2", "Child" : ["128", "129"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_262",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_45_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_262_fu_1980.partselect_64ns_128ns_32ns_64_1_1_U450", "Parent" : "127"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_262_fu_1980.flow_control_loop_pipe_sequential_init_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_163_fu_1987", "Parent" : "2", "Child" : ["131"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_163_fu_1987.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_168_fu_1995", "Parent" : "2", "Child" : ["133"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_168",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_168_fu_1995.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_170_fu_2003", "Parent" : "2", "Child" : ["135"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Ah_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_170_fu_2003.flow_control_loop_pipe_sequential_init_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_172_fu_2011", "Parent" : "2", "Child" : ["137"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_172",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln56_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_19_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_172_fu_2011.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_173_fu_2020", "Parent" : "2", "Child" : ["139"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_173",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln56_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_173_fu_2020.flow_control_loop_pipe_sequential_init_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_179_fu_2029", "Parent" : "2", "Child" : ["141"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_179",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "or_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2394526_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1392523_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_0390521_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_39_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_179_fu_2029.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_180_fu_2042", "Parent" : "2", "Child" : ["143"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_180",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "or_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2472534_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1470531_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_0468529_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_36_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_180_fu_2042.flow_control_loop_pipe_sequential_init_U", "Parent" : "142"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_2055", "Parent" : "2", "Child" : ["145", "146"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_3",
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
			{"Name" : "Pacc", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_2055.partselect_64ns_1056s_32ns_64_1_1_U75", "Parent" : "144"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_2055.flow_control_loop_pipe_sequential_init_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_311_fu_2064", "Parent" : "2", "Child" : ["148", "149"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_311",
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
			{"Name" : "Pacc_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_311_fu_2064.partselect_64ns_1056s_32ns_64_1_1_U114", "Parent" : "147"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_311_fu_2064.flow_control_loop_pipe_sequential_init_U", "Parent" : "147"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_219_fu_2073", "Parent" : "2", "Child" : ["151", "152"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_219",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_219_fu_2073.partselect_64ns_128ns_32ns_64_1_1_U161", "Parent" : "150"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_219_fu_2073.flow_control_loop_pipe_sequential_init_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_120_fu_2083", "Parent" : "2", "Child" : ["154"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z0_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_120_fu_2083.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_233_fu_2093", "Parent" : "2", "Child" : ["156", "157"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_233",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_233_fu_2093.sparsemux_9_2_64_1_1_U252", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_233_fu_2093.flow_control_loop_pipe_sequential_init_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_240_fu_2103", "Parent" : "2", "Child" : ["159", "160"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_240",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_240_fu_2103.sparsemux_9_2_64_1_1_U290", "Parent" : "158"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_240_fu_2103.flow_control_loop_pipe_sequential_init_U", "Parent" : "158"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_246_fu_2113", "Parent" : "2", "Child" : ["162", "163"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_246",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln81_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_40_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_246_fu_2113.partselect_64ns_128ns_32ns_64_1_1_U325", "Parent" : "161"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_246_fu_2113.flow_control_loop_pipe_sequential_init_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_149_fu_2121", "Parent" : "2", "Child" : ["165"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_149",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_23_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_149_fu_2121.flow_control_loop_pipe_sequential_init_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_264_fu_2129", "Parent" : "2", "Child" : ["167", "168"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_264",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_61_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_264_fu_2129.partselect_64ns_128ns_32ns_64_1_1_U458", "Parent" : "166"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_264_fu_2129.flow_control_loop_pipe_sequential_init_U", "Parent" : "166"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_165_fu_2139", "Parent" : "2", "Child" : ["170"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_165",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z0_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_165_fu_2139.flow_control_loop_pipe_sequential_init_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_269_fu_2149", "Parent" : "2", "Child" : ["172", "173"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_269",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_56_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_269_fu_2149.partselect_64ns_128ns_32ns_64_1_1_U488", "Parent" : "171"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_269_fu_2149.flow_control_loop_pipe_sequential_init_U", "Parent" : "171"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_271_fu_2156", "Parent" : "2", "Child" : ["175", "176"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_271",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_49_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_271_fu_2156.partselect_64ns_128ns_32ns_64_1_1_U496", "Parent" : "174"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_271_fu_2156.flow_control_loop_pipe_sequential_init_U", "Parent" : "174"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_174_fu_2164", "Parent" : "2", "Child" : ["178"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_174",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_174_fu_2164.flow_control_loop_pipe_sequential_init_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_181_fu_2172", "Parent" : "2", "Child" : ["180"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_181",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Al_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_36_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_181_fu_2172.flow_control_loop_pipe_sequential_init_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_221_fu_2180", "Parent" : "2", "Child" : ["182", "183"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_221",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln103_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_221_fu_2180.sparsemux_9_2_64_1_1_U174", "Parent" : "181"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_221_fu_2180.flow_control_loop_pipe_sequential_init_U", "Parent" : "181"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_123_fu_2190", "Parent" : "2", "Child" : ["185", "186", "187"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_123",
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
			{"Name" : "z0_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_123_fu_2190.sparsemux_9_2_64_1_1_U185", "Parent" : "184"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_123_fu_2190.sparsemux_9_2_64_1_1_U186", "Parent" : "184"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_123_fu_2190.flow_control_loop_pipe_sequential_init_U", "Parent" : "184"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_334_fu_2204", "Parent" : "2", "Child" : ["189", "190"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_334",
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
			{"Name" : "Pacc_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_26_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_334_fu_2204.partselect_64ns_1056s_32ns_64_1_1_U259", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_334_fu_2204.flow_control_loop_pipe_sequential_init_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_341_fu_2213", "Parent" : "2", "Child" : ["192", "193"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_341",
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
			{"Name" : "Pacc_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_341_fu_2213.partselect_64ns_1056s_32ns_64_1_1_U297", "Parent" : "191"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_341_fu_2213.flow_control_loop_pipe_sequential_init_U", "Parent" : "191"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_250_fu_2222", "Parent" : "2", "Child" : ["195", "196"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_250",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_52_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_250_fu_2222.partselect_64ns_128ns_32ns_64_1_1_U344", "Parent" : "194"},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_250_fu_2222.flow_control_loop_pipe_sequential_init_U", "Parent" : "194"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_151_fu_2232", "Parent" : "2", "Child" : ["198"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_151",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z0_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_151_fu_2232.flow_control_loop_pipe_sequential_init_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_266_fu_2242", "Parent" : "2", "Child" : ["200", "201"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_266",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_61_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_60_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_59_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_58_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_266_fu_2242.sparsemux_9_2_64_1_1_U471", "Parent" : "199"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_266_fu_2242.flow_control_loop_pipe_sequential_init_U", "Parent" : "199"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_275_fu_2252", "Parent" : "2", "Child" : ["203", "204"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_275",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_70_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_275_fu_2252.partselect_64ns_128ns_32ns_64_1_1_U515", "Parent" : "202"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_275_fu_2252.flow_control_loop_pipe_sequential_init_U", "Parent" : "202"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_176_fu_2262", "Parent" : "2", "Child" : ["206"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_176",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z0_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_176_fu_2262.flow_control_loop_pipe_sequential_init_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_322_fu_2272", "Parent" : "2", "Child" : ["208", "209"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_322",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_322_fu_2272.partselect_64ns_1056s_32ns_64_1_1_U181", "Parent" : "207"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_322_fu_2272.flow_control_loop_pipe_sequential_init_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_252_fu_2279", "Parent" : "2", "Child" : ["211", "212"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_252",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln103_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_52_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_51_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_252_fu_2279.sparsemux_9_2_64_1_1_U357", "Parent" : "210"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_252_fu_2279.flow_control_loop_pipe_sequential_init_U", "Parent" : "210"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_154_fu_2289", "Parent" : "2", "Child" : ["214", "215", "216"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_154",
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
			{"Name" : "z0_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_154_fu_2289.sparsemux_9_2_64_1_1_U368", "Parent" : "213"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_154_fu_2289.sparsemux_9_2_64_1_1_U369", "Parent" : "213"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_154_fu_2289.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_367_fu_2303", "Parent" : "2", "Child" : ["218", "219"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_367",
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
			{"Name" : "Pacc_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_47_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_367_fu_2303.partselect_64ns_1056s_32ns_64_1_1_U478", "Parent" : "217"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_367_fu_2303.flow_control_loop_pipe_sequential_init_U", "Parent" : "217"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_277_fu_2312", "Parent" : "2", "Child" : ["221", "222"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_277",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln103_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_277_fu_2312.sparsemux_9_2_64_1_1_U528", "Parent" : "220"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_277_fu_2312.flow_control_loop_pipe_sequential_init_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_224_fu_2322", "Parent" : "2", "Child" : ["224"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_224",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln113_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_224_fu_2322.flow_control_loop_pipe_sequential_init_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_353_fu_2329", "Parent" : "2", "Child" : ["226", "227"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_353",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_353_fu_2329.partselect_64ns_1056s_32ns_64_1_1_U364", "Parent" : "225"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_353_fu_2329.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_378_fu_2336", "Parent" : "2", "Child" : ["229", "230"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_378",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "or_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_57_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_378_fu_2336.partselect_64ns_1056ns_32ns_64_1_1_U535", "Parent" : "228"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_378_fu_2336.flow_control_loop_pipe_sequential_init_U", "Parent" : "228"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_325_fu_2346", "Parent" : "2", "Child" : ["232", "233"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_325",
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
			{"Name" : "Pacc_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_325_fu_2346.partselect_64ns_1056s_32ns_64_1_1_U200", "Parent" : "231"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_325_fu_2346.flow_control_loop_pipe_sequential_init_U", "Parent" : "231"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_255_fu_2352", "Parent" : "2", "Child" : ["235"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_255",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln113_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_255_fu_2352.flow_control_loop_pipe_sequential_init_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_356_fu_2359", "Parent" : "2", "Child" : ["237", "238"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_356",
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
			{"Name" : "Pacc_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_356_fu_2359.partselect_64ns_1056s_32ns_64_1_1_U383", "Parent" : "236"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_356_fu_2359.flow_control_loop_pipe_sequential_init_U", "Parent" : "236"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_282_fu_2365", "Parent" : "2", "Child" : ["240", "241"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_282",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul16_i_i475_i_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_60_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_282_fu_2365.partselect_64ns_128ns_32ns_64_1_1_U565", "Parent" : "239"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_282_fu_2365.flow_control_loop_pipe_sequential_init_U", "Parent" : "239"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_183_fu_2373", "Parent" : "2", "Child" : ["243", "244", "245"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_183",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "icmp_ln74", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_38_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_183_fu_2373.partset_64ns_64ns_64ns_32ns_64_1_1_U570", "Parent" : "242"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_183_fu_2373.partset_64ns_64ns_64ns_32ns_64_1_1_U571", "Parent" : "242"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_183_fu_2373.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_284_fu_2382", "Parent" : "2", "Child" : ["247", "248"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_284",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_63_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_284_fu_2382.partselect_64ns_128ns_32ns_64_1_1_U578", "Parent" : "246"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_284_fu_2382.flow_control_loop_pipe_sequential_init_U", "Parent" : "246"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_185_fu_2390", "Parent" : "2", "Child" : ["250"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_185",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "umax19", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_185_fu_2390.flow_control_loop_pipe_sequential_init_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_186_fu_2401", "Parent" : "2", "Child" : ["252"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_186",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "umax19", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_186_fu_2401.flow_control_loop_pipe_sequential_init_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_189_fu_2412", "Parent" : "2", "Child" : ["254"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_189",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul16_i_i475_i_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_189_fu_2412.flow_control_loop_pipe_sequential_init_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_192_fu_2427", "Parent" : "2", "Child" : ["256", "257", "258"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_192",
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
			{"Name" : "z0_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_48_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_55_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_54_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_192_fu_2427.sparsemux_9_2_64_1_1_U626", "Parent" : "255"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_192_fu_2427.sparsemux_9_2_64_1_1_U627", "Parent" : "255"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_192_fu_2427.flow_control_loop_pipe_sequential_init_U", "Parent" : "255"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_195_fu_2441", "Parent" : "2", "Child" : ["260"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_195",
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
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_24_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_195_fu_2441.flow_control_loop_pipe_sequential_init_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_187_fu_2449", "Parent" : "2", "Child" : ["262"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_187",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_40_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_187_fu_2449.flow_control_loop_pipe_sequential_init_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_288_fu_2457", "Parent" : "2", "Child" : ["264", "265"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_288",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_79_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_288_fu_2457.partselect_64ns_128ns_32ns_64_1_1_U601", "Parent" : "263"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_288_fu_2457.flow_control_loop_pipe_sequential_init_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_290_fu_2467", "Parent" : "2", "Child" : ["267", "268"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_290",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln103_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_290_fu_2467.sparsemux_9_2_64_1_1_U615", "Parent" : "266"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_290_fu_2467.flow_control_loop_pipe_sequential_init_U", "Parent" : "266"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_391_fu_2477", "Parent" : "2", "Child" : ["270", "271"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_391",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln113_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_391_fu_2477.partselect_64ns_1056ns_32ns_64_1_1_U622", "Parent" : "269"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_391_fu_2477.flow_control_loop_pipe_sequential_init_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_293_fu_2484", "Parent" : "2", "Child" : ["273"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_293",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln113_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_293_fu_2484.flow_control_loop_pipe_sequential_init_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_394_fu_2491", "Parent" : "2", "Child" : ["275", "276"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_394",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln113_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_17", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_394_fu_2491.partselect_64ns_1056ns_32ns_64_1_1_U641", "Parent" : "274"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_394_fu_2491.flow_control_loop_pipe_sequential_init_U", "Parent" : "274"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_296_fu_2498", "Parent" : "2", "Child" : ["278"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_296",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln113_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_24_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_296_fu_2498.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_397_fu_2505", "Parent" : "2", "Child" : ["280", "281"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_397",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Pacc_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_397_fu_2505.partselect_64ns_1056s_32ns_64_1_1_U652", "Parent" : "279"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_397_fu_2505.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.mul_64ns_64ns_128_1_1_U654", "Parent" : "2"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.mul_64ns_64ns_128_1_1_U655", "Parent" : "2"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.mul_64ns_64ns_128_1_1_U656", "Parent" : "2"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.mul_64ns_64ns_128_1_1_U657", "Parent" : "2"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.mul_64ns_64ns_128_1_1_U658", "Parent" : "2"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.mul_64ns_64ns_128_1_1_U659", "Parent" : "2"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.mul_64ns_64ns_128_1_1_U660", "Parent" : "2"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.sparsemux_7_3_64_1_1_U661", "Parent" : "2"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_18.sparsemux_7_3_64_1_1_U662", "Parent" : "2"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_mul_karatsuba_configurable {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		Al_3_out {Type O LastRead -1 FirstWrite 0}
		Al_2_out {Type O LastRead -1 FirstWrite 0}
		Al_1_out {Type O LastRead -1 FirstWrite 0}
		Al_out {Type O LastRead -1 FirstWrite 0}
		Bl_3_out {Type O LastRead -1 FirstWrite 0}
		Bl_2_out {Type O LastRead -1 FirstWrite 0}
		Bl_1_out {Type O LastRead -1 FirstWrite 0}
		Bl_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		Ah_3_out {Type O LastRead -1 FirstWrite 0}
		Ah_2_out {Type O LastRead -1 FirstWrite 0}
		Ah_1_out {Type O LastRead -1 FirstWrite 0}
		Ah_out {Type O LastRead -1 FirstWrite 0}
		Bh_3_out {Type O LastRead -1 FirstWrite 0}
		Bh_2_out {Type O LastRead -1 FirstWrite 0}
		Bh_1_out {Type O LastRead -1 FirstWrite 0}
		Bh_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_11 {
		Al_2_reload {Type I LastRead 0 FirstWrite -1}
		Al_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_2_reload {Type I LastRead 0 FirstWrite -1}
		Bl_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_10_out {Type O LastRead -1 FirstWrite 0}
		Bl_9_out {Type O LastRead -1 FirstWrite 0}
		Al_10_out {Type O LastRead -1 FirstWrite 0}
		Al_9_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_22 {
		Al_reload {Type I LastRead 0 FirstWrite -1}
		Al_1_reload {Type I LastRead 0 FirstWrite -1}
		Bl_reload {Type I LastRead 0 FirstWrite -1}
		Bl_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_11_out {Type O LastRead -1 FirstWrite 0}
		Bh_10_out {Type O LastRead -1 FirstWrite 0}
		Ah_11_out {Type O LastRead -1 FirstWrite 0}
		Ah_10_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_2 {
		P {Type I LastRead 0 FirstWrite -1}
		z0_2_out {Type O LastRead -1 FirstWrite 0}
		z0_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_23 {
		P_1 {Type I LastRead 0 FirstWrite -1}
		z2_2_out {Type O LastRead -1 FirstWrite 0}
		z2_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_1 {
		Sbl_26 {Type I LastRead 0 FirstWrite -1}
		Sal_32 {Type I LastRead 0 FirstWrite -1}
		B_out {Type O LastRead -1 FirstWrite 0}
		A_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_25 {
		P_3 {Type I LastRead 0 FirstWrite -1}
		z0_15_out {Type O LastRead -1 FirstWrite 0}
		z0_14_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_26 {
		P_4 {Type I LastRead 0 FirstWrite -1}
		z2_6_out {Type O LastRead -1 FirstWrite 0}
		z2_5_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_17 {
		Sbl_27 {Type I LastRead 0 FirstWrite -1}
		Sal_33 {Type I LastRead 0 FirstWrite -1}
		B_5_out {Type O LastRead -1 FirstWrite 0}
		A_6_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_1 {
		Al_10_reload {Type I LastRead 0 FirstWrite -1}
		Al_9_reload {Type I LastRead 0 FirstWrite -1}
		Ah_11_reload {Type I LastRead 0 FirstWrite -1}
		Ah_10_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1155509_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		carry_31_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_112 {
		Bl_10_reload {Type I LastRead 0 FirstWrite -1}
		Bl_9_reload {Type I LastRead 0 FirstWrite -1}
		Bh_11_reload {Type I LastRead 0 FirstWrite -1}
		Bh_10_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1418511_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		Sbl_28_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_126 {
		Ah_2_reload {Type I LastRead 0 FirstWrite -1}
		Ah_3_reload {Type I LastRead 0 FirstWrite -1}
		Bh_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_17_out {Type O LastRead -1 FirstWrite 0}
		Bl_16_out {Type O LastRead -1 FirstWrite 0}
		Al_17_out {Type O LastRead -1 FirstWrite 0}
		Al_16_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_8_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_227 {
		Ah_reload {Type I LastRead 0 FirstWrite -1}
		Ah_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_reload {Type I LastRead 0 FirstWrite -1}
		Bh_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_18_out {Type O LastRead -1 FirstWrite 0}
		Bh_17_out {Type O LastRead -1 FirstWrite 0}
		Ah_18_out {Type O LastRead -1 FirstWrite 0}
		Ah_17_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_157 {
		Al_3_reload {Type I LastRead 0 FirstWrite -1}
		Al_2_reload {Type I LastRead 0 FirstWrite -1}
		Al_1_reload {Type I LastRead 0 FirstWrite -1}
		Al_reload {Type I LastRead 0 FirstWrite -1}
		Ah_3_reload {Type I LastRead 0 FirstWrite -1}
		Ah_2_reload {Type I LastRead 0 FirstWrite -1}
		Ah_1_reload {Type I LastRead 0 FirstWrite -1}
		Ah_reload {Type I LastRead 0 FirstWrite -1}
		Sal_13_out {Type O LastRead -1 FirstWrite 0}
		Sal_12_out {Type O LastRead -1 FirstWrite 0}
		Sal_11_out {Type O LastRead -1 FirstWrite 0}
		Sal_10_out {Type O LastRead -1 FirstWrite 0}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_158 {
		Bl_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_2_reload {Type I LastRead 0 FirstWrite -1}
		Bl_1_reload {Type I LastRead 0 FirstWrite -1}
		Bl_reload {Type I LastRead 0 FirstWrite -1}
		Bh_3_reload {Type I LastRead 0 FirstWrite -1}
		Bh_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_7_out {Type O LastRead -1 FirstWrite 0}
		Sbl_6_out {Type O LastRead -1 FirstWrite 0}
		Sbl_5_out {Type O LastRead -1 FirstWrite 0}
		Sbl_out {Type O LastRead -1 FirstWrite 0}
		carry_33_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_24 {
		shl_ln1 {Type I LastRead 0 FirstWrite -1}
		P_2 {Type I LastRead 0 FirstWrite -1}
		z1_4_out {Type O LastRead -1 FirstWrite 0}
		z1_5_out {Type O LastRead -1 FirstWrite 0}
		z1_6_out {Type O LastRead -1 FirstWrite 0}
		z1_7_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_1 {
		z0_2_reload {Type I LastRead 0 FirstWrite -1}
		z0_1_reload {Type I LastRead 0 FirstWrite -1}
		z2_2_reload {Type I LastRead 0 FirstWrite -1}
		z2_1_reload {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 1}
		W2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_28 {
		shl_ln81_1 {Type I LastRead 0 FirstWrite -1}
		P_5 {Type I LastRead 0 FirstWrite -1}
		z1_13_out {Type O LastRead -1 FirstWrite 0}
		z1_14_out {Type O LastRead -1 FirstWrite 0}
		z1_15_out {Type O LastRead -1 FirstWrite 0}
		z1_16_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_19 {
		z0_15_reload {Type I LastRead 0 FirstWrite -1}
		z0_14_reload {Type I LastRead 0 FirstWrite -1}
		z2_6_reload {Type I LastRead 0 FirstWrite -1}
		z2_5_reload {Type I LastRead 0 FirstWrite -1}
		W0_2_out {Type O LastRead -1 FirstWrite 1}
		W2_2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_213 {
		P_6 {Type I LastRead 0 FirstWrite -1}
		z0_19_out {Type O LastRead -1 FirstWrite 0}
		z0_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_114 {
		Bh_33 {Type I LastRead 0 FirstWrite -1}
		Ah_33 {Type I LastRead 0 FirstWrite -1}
		B_8_out {Type O LastRead -1 FirstWrite 0}
		A_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_116 {
		add_ln56_2_cast {Type I LastRead 0 FirstWrite -1}
		p_reload52 {Type I LastRead 0 FirstWrite -1}
		Ah_34_cast {Type I LastRead 0 FirstWrite -1}
		Sal_out {Type O LastRead -1 FirstWrite 0}
		carry_3_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_117 {
		add_ln56_2_cast {Type I LastRead 0 FirstWrite -1}
		p_reload55 {Type I LastRead 0 FirstWrite -1}
		zext_ln56 {Type I LastRead 0 FirstWrite -1}
		Sbl_29_out {Type O LastRead -1 FirstWrite 0}
		carry_5_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_228 {
		P_9 {Type I LastRead 0 FirstWrite -1}
		z0_23_out {Type O LastRead -1 FirstWrite 0}
		z0_22_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_229 {
		P_10 {Type I LastRead 0 FirstWrite -1}
		z2_24_out {Type O LastRead -1 FirstWrite 0}
		z2_23_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_130 {
		Sal_34 {Type I LastRead 0 FirstWrite -1}
		Sbl_30 {Type I LastRead 0 FirstWrite -1}
		A_15_out {Type O LastRead -1 FirstWrite 0}
		B_14_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_235 {
		P_12 {Type I LastRead 0 FirstWrite -1}
		z0_36_out {Type O LastRead -1 FirstWrite 0}
		z0_35_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_236 {
		P_13 {Type I LastRead 0 FirstWrite -1}
		z2_28_out {Type O LastRead -1 FirstWrite 0}
		z2_27_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_137 {
		Sal_35 {Type I LastRead 0 FirstWrite -1}
		Sbl_31 {Type I LastRead 0 FirstWrite -1}
		A_19_out {Type O LastRead -1 FirstWrite 0}
		B_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_142 {
		Al_17_reload {Type I LastRead 0 FirstWrite -1}
		Al_16_reload {Type I LastRead 0 FirstWrite -1}
		Ah_18_reload {Type I LastRead 0 FirstWrite -1}
		Ah_17_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1253513_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		carry_32_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_143 {
		Bl_17_reload {Type I LastRead 0 FirstWrite -1}
		Bl_16_reload {Type I LastRead 0 FirstWrite -1}
		Bh_18_reload {Type I LastRead 0 FirstWrite -1}
		Bh_17_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1440515_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		Sbl_32_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_159 {
		Sal_12_reload {Type I LastRead 0 FirstWrite -1}
		Sal_13_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_6_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_7_reload {Type I LastRead 0 FirstWrite -1}
		Al_24_out {Type O LastRead -1 FirstWrite 0}
		Al_23_out {Type O LastRead -1 FirstWrite 0}
		Bl_24_out {Type O LastRead -1 FirstWrite 0}
		Bl_23_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_260 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Sal_11_reload {Type I LastRead 0 FirstWrite -1}
		Sal_10_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65_4 {Type I LastRead 0 FirstWrite -1}
		Sbl_5_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65_5 {Type I LastRead 0 FirstWrite -1}
		Ah_25_out {Type O LastRead -1 FirstWrite 0}
		Ah_24_out {Type O LastRead -1 FirstWrite 0}
		Bh_25_out {Type O LastRead -1 FirstWrite 0}
		Bh_24_out {Type O LastRead -1 FirstWrite 0}
		Bh_38_out {Type O LastRead -1 FirstWrite 0}
		Ah_38_out {Type O LastRead -1 FirstWrite 0}
		B_32_out {Type O LastRead -1 FirstWrite 0}
		A_31_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_2 {
		shl_ln1 {Type I LastRead 0 FirstWrite -1}
		z1_7_reload {Type I LastRead 0 FirstWrite -1}
		z1_6_reload {Type I LastRead 0 FirstWrite -1}
		z1_5_reload {Type I LastRead 0 FirstWrite -1}
		z1_4_reload {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_210 {
		shl_ln81_1 {Type I LastRead 0 FirstWrite -1}
		z1_16_reload {Type I LastRead 0 FirstWrite -1}
		z1_15_reload {Type I LastRead 0 FirstWrite -1}
		z1_14_reload {Type I LastRead 0 FirstWrite -1}
		z1_13_reload {Type I LastRead 0 FirstWrite -1}
		W1v_2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_215 {
		add_ln81_7 {Type I LastRead 0 FirstWrite -1}
		P_7 {Type I LastRead 0 FirstWrite -1}
		z2_19_out {Type O LastRead -1 FirstWrite 0}
		z2_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_118 {
		Sal_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_29_reload {Type I LastRead 0 FirstWrite -1}
		A_11_out {Type O LastRead -1 FirstWrite 0}
		B_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_231 {
		shl_ln81_3 {Type I LastRead 0 FirstWrite -1}
		P_11 {Type I LastRead 0 FirstWrite -1}
		z1_31_out {Type O LastRead -1 FirstWrite 0}
		z1_32_out {Type O LastRead -1 FirstWrite 0}
		z1_33_out {Type O LastRead -1 FirstWrite 0}
		z1_34_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_132 {
		z0_23_reload {Type I LastRead 0 FirstWrite -1}
		z0_22_reload {Type I LastRead 0 FirstWrite -1}
		z2_24_reload {Type I LastRead 0 FirstWrite -1}
		z2_23_reload {Type I LastRead 0 FirstWrite -1}
		W2_8_out {Type O LastRead -1 FirstWrite 1}
		W0_8_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_238 {
		shl_ln81_4 {Type I LastRead 0 FirstWrite -1}
		P_14 {Type I LastRead 0 FirstWrite -1}
		z1_40_out {Type O LastRead -1 FirstWrite 0}
		z1_41_out {Type O LastRead -1 FirstWrite 0}
		z1_42_out {Type O LastRead -1 FirstWrite 0}
		z1_43_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_139 {
		z0_36_reload {Type I LastRead 0 FirstWrite -1}
		z0_35_reload {Type I LastRead 0 FirstWrite -1}
		z2_28_reload {Type I LastRead 0 FirstWrite -1}
		z2_27_reload {Type I LastRead 0 FirstWrite -1}
		W2_10_out {Type O LastRead -1 FirstWrite 1}
		W0_10_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_244 {
		P_15 {Type I LastRead 0 FirstWrite -1}
		z0_40_out {Type O LastRead -1 FirstWrite 0}
		z0_39_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_145 {
		Ah_36 {Type I LastRead 0 FirstWrite -1}
		Bh_36 {Type I LastRead 0 FirstWrite -1}
		A_22_out {Type O LastRead -1 FirstWrite 0}
		B_21_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_147 {
		add_ln56_7_cast {Type I LastRead 0 FirstWrite -1}
		p_reload99 {Type I LastRead 0 FirstWrite -1}
		Ah_37_cast {Type I LastRead 0 FirstWrite -1}
		Sal_36_out {Type O LastRead -1 FirstWrite 0}
		carry_11_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_148 {
		add_ln56_7_cast {Type I LastRead 0 FirstWrite -1}
		p_reload102 {Type I LastRead 0 FirstWrite -1}
		zext_ln56_1 {Type I LastRead 0 FirstWrite -1}
		Sbl_33_out {Type O LastRead -1 FirstWrite 0}
		carry_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_261 {
		P_18 {Type I LastRead 0 FirstWrite -1}
		z0_44_out {Type O LastRead -1 FirstWrite 0}
		z0_43_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_262 {
		P_19 {Type I LastRead 0 FirstWrite -1}
		z2_46_out {Type O LastRead -1 FirstWrite 0}
		z2_45_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_163 {
		Sal_37 {Type I LastRead 0 FirstWrite -1}
		Sbl_34 {Type I LastRead 0 FirstWrite -1}
		A_28_out {Type O LastRead -1 FirstWrite 0}
		B_27_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_168 {
		A_31_reload {Type I LastRead 0 FirstWrite -1}
		B_32_reload {Type I LastRead 0 FirstWrite -1}
		A_30_out {Type O LastRead -1 FirstWrite 0}
		B_29_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_170 {
		Ah_38_reload {Type I LastRead 0 FirstWrite -1}
		Bh_38_reload {Type I LastRead 0 FirstWrite -1}
		A_32_out {Type O LastRead -1 FirstWrite 0}
		B_31_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_172 {
		sub_ln56_cast {Type I LastRead 0 FirstWrite -1}
		A_31_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln56_2 {Type I LastRead 0 FirstWrite -1}
		Sal_38_out {Type O LastRead -1 FirstWrite 0}
		carry_19_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_173 {
		sub_ln56_cast {Type I LastRead 0 FirstWrite -1}
		B_32_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln56_3 {Type I LastRead 0 FirstWrite -1}
		Sbl_35_out {Type O LastRead -1 FirstWrite 0}
		carry_21_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_179 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Al_23_reload {Type I LastRead 0 FirstWrite -1}
		Al_24_reload {Type I LastRead 0 FirstWrite -1}
		Ah_24_reload {Type I LastRead 0 FirstWrite -1}
		Ah_25_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2394526_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1392523_out {Type O LastRead -1 FirstWrite 0}
		mux_case_0390521_out {Type O LastRead -1 FirstWrite 0}
		Sal_39_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_180 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Bl_23_reload {Type I LastRead 0 FirstWrite -1}
		Bl_24_reload {Type I LastRead 0 FirstWrite -1}
		Bh_24_reload {Type I LastRead 0 FirstWrite -1}
		Bh_25_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2472534_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1470531_out {Type O LastRead -1 FirstWrite 0}
		mux_case_0468529_out {Type O LastRead -1 FirstWrite 0}
		Sbl_36_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_3 {
		Pacc {Type I LastRead 0 FirstWrite -1}
		z0_8_out {Type O LastRead -1 FirstWrite 0}
		z0_7_out {Type O LastRead -1 FirstWrite 0}
		z0_6_out {Type O LastRead -1 FirstWrite 0}
		z0_5_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_311 {
		Pacc_1 {Type I LastRead 0 FirstWrite -1}
		z2_12_out {Type O LastRead -1 FirstWrite 0}
		z2_11_out {Type O LastRead -1 FirstWrite 0}
		z2_10_out {Type O LastRead -1 FirstWrite 0}
		z2_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_219 {
		shl_ln81_2 {Type I LastRead 0 FirstWrite -1}
		P_8 {Type I LastRead 0 FirstWrite -1}
		z1_24_out {Type O LastRead -1 FirstWrite 0}
		z1_23_out {Type O LastRead -1 FirstWrite 0}
		z1_22_out {Type O LastRead -1 FirstWrite 0}
		z1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_120 {
		z0_19_reload {Type I LastRead 0 FirstWrite -1}
		z0_18_reload {Type I LastRead 0 FirstWrite -1}
		z2_19_reload {Type I LastRead 0 FirstWrite -1}
		z2_18_reload {Type I LastRead 0 FirstWrite -1}
		W2_4_out {Type O LastRead -1 FirstWrite 1}
		W0_4_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_233 {
		shl_ln81_3 {Type I LastRead 0 FirstWrite -1}
		z1_34_reload {Type I LastRead 0 FirstWrite -1}
		z1_33_reload {Type I LastRead 0 FirstWrite -1}
		z1_32_reload {Type I LastRead 0 FirstWrite -1}
		z1_31_reload {Type I LastRead 0 FirstWrite -1}
		W1v_8_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_240 {
		shl_ln81_4 {Type I LastRead 0 FirstWrite -1}
		z1_43_reload {Type I LastRead 0 FirstWrite -1}
		z1_42_reload {Type I LastRead 0 FirstWrite -1}
		z1_41_reload {Type I LastRead 0 FirstWrite -1}
		z1_40_reload {Type I LastRead 0 FirstWrite -1}
		W1v_10_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_246 {
		add_ln81_17 {Type I LastRead 0 FirstWrite -1}
		P_16 {Type I LastRead 0 FirstWrite -1}
		z2_41_out {Type O LastRead -1 FirstWrite 0}
		z2_40_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_149 {
		Sal_36_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_33_reload {Type I LastRead 0 FirstWrite -1}
		A_24_out {Type O LastRead -1 FirstWrite 0}
		B_23_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_264 {
		shl_ln81_6 {Type I LastRead 0 FirstWrite -1}
		P_20 {Type I LastRead 0 FirstWrite -1}
		z1_58_out {Type O LastRead -1 FirstWrite 0}
		z1_59_out {Type O LastRead -1 FirstWrite 0}
		z1_60_out {Type O LastRead -1 FirstWrite 0}
		z1_61_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_165 {
		z0_44_reload {Type I LastRead 0 FirstWrite -1}
		z0_43_reload {Type I LastRead 0 FirstWrite -1}
		z2_46_reload {Type I LastRead 0 FirstWrite -1}
		z2_45_reload {Type I LastRead 0 FirstWrite -1}
		W2_16_out {Type O LastRead -1 FirstWrite 1}
		W0_16_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_269 {
		P_21 {Type I LastRead 0 FirstWrite -1}
		z0_57_out {Type O LastRead -1 FirstWrite 0}
		z0_56_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_271 {
		shl_ln81_7 {Type I LastRead 0 FirstWrite -1}
		P_22 {Type I LastRead 0 FirstWrite -1}
		z2_50_out {Type O LastRead -1 FirstWrite 0}
		z2_49_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_174 {
		Sal_38_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_35_reload {Type I LastRead 0 FirstWrite -1}
		A_34_out {Type O LastRead -1 FirstWrite 0}
		B_33_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_181 {
		Al_37 {Type I LastRead 0 FirstWrite -1}
		Bl_37 {Type I LastRead 0 FirstWrite -1}
		A_36_out {Type O LastRead -1 FirstWrite 0}
		B_36_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_221 {
		shl_ln103_cast {Type I LastRead 0 FirstWrite -1}
		z1_reload {Type I LastRead 0 FirstWrite -1}
		z1_22_reload {Type I LastRead 0 FirstWrite -1}
		z1_23_reload {Type I LastRead 0 FirstWrite -1}
		z1_24_reload {Type I LastRead 0 FirstWrite -1}
		W1v_4_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_97_123 {
		z0_5_reload {Type I LastRead 0 FirstWrite -1}
		z0_6_reload {Type I LastRead 0 FirstWrite -1}
		z0_7_reload {Type I LastRead 0 FirstWrite -1}
		z0_8_reload {Type I LastRead 0 FirstWrite -1}
		z2_9_reload {Type I LastRead 0 FirstWrite -1}
		z2_10_reload {Type I LastRead 0 FirstWrite -1}
		z2_11_reload {Type I LastRead 0 FirstWrite -1}
		z2_12_reload {Type I LastRead 0 FirstWrite -1}
		W2_6_out {Type O LastRead -1 FirstWrite 1}
		W0_6_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_113_334 {
		Pacc_4 {Type I LastRead 0 FirstWrite -1}
		z0_29_out {Type O LastRead -1 FirstWrite 0}
		z0_28_out {Type O LastRead -1 FirstWrite 0}
		z0_27_out {Type O LastRead -1 FirstWrite 0}
		z0_26_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_341 {
		Pacc_5 {Type I LastRead 0 FirstWrite -1}
		z2_34_out {Type O LastRead -1 FirstWrite 0}
		z2_33_out {Type O LastRead -1 FirstWrite 0}
		z2_32_out {Type O LastRead -1 FirstWrite 0}
		z2_31_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_250 {
		shl_ln81_5 {Type I LastRead 0 FirstWrite -1}
		P_17 {Type I LastRead 0 FirstWrite -1}
		z1_49_out {Type O LastRead -1 FirstWrite 0}
		z1_50_out {Type O LastRead -1 FirstWrite 0}
		z1_51_out {Type O LastRead -1 FirstWrite 0}
		z1_52_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_151 {
		z0_40_reload {Type I LastRead 0 FirstWrite -1}
		z0_39_reload {Type I LastRead 0 FirstWrite -1}
		z2_41_reload {Type I LastRead 0 FirstWrite -1}
		z2_40_reload {Type I LastRead 0 FirstWrite -1}
		W2_12_out {Type O LastRead -1 FirstWrite 1}
		W0_12_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_266 {
		shl_ln81_6 {Type I LastRead 0 FirstWrite -1}
		z1_61_reload {Type I LastRead 0 FirstWrite -1}
		z1_60_reload {Type I LastRead 0 FirstWrite -1}
		z1_59_reload {Type I LastRead 0 FirstWrite -1}
		z1_58_reload {Type I LastRead 0 FirstWrite -1}
		W1v_16_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_275 {
		shl_ln81_8 {Type I LastRead 0 FirstWrite -1}
		P_23 {Type I LastRead 0 FirstWrite -1}
		z1_67_out {Type O LastRead -1 FirstWrite 0}
		z1_68_out {Type O LastRead -1 FirstWrite 0}
		z1_69_out {Type O LastRead -1 FirstWrite 0}
		z1_70_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_176 {
		z0_57_reload {Type I LastRead 0 FirstWrite -1}
		z0_56_reload {Type I LastRead 0 FirstWrite -1}
		z2_50_reload {Type I LastRead 0 FirstWrite -1}
		z2_49_reload {Type I LastRead 0 FirstWrite -1}
		W2_18_out {Type O LastRead -1 FirstWrite 1}
		W0_18_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_113_322 {
		shl_ln81_9 {Type I LastRead 0 FirstWrite -1}
		Pacc_2 {Type I LastRead 0 FirstWrite -1}
		z1_1 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_252 {
		shl_ln103_1_cast {Type I LastRead 0 FirstWrite -1}
		z1_52_reload {Type I LastRead 0 FirstWrite -1}
		z1_51_reload {Type I LastRead 0 FirstWrite -1}
		z1_50_reload {Type I LastRead 0 FirstWrite -1}
		z1_49_reload {Type I LastRead 0 FirstWrite -1}
		W1v_12_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_97_154 {
		z0_26_reload {Type I LastRead 0 FirstWrite -1}
		z0_27_reload {Type I LastRead 0 FirstWrite -1}
		z0_28_reload {Type I LastRead 0 FirstWrite -1}
		z0_29_reload {Type I LastRead 0 FirstWrite -1}
		z2_31_reload {Type I LastRead 0 FirstWrite -1}
		z2_32_reload {Type I LastRead 0 FirstWrite -1}
		z2_33_reload {Type I LastRead 0 FirstWrite -1}
		z2_34_reload {Type I LastRead 0 FirstWrite -1}
		W2_14_out {Type O LastRead -1 FirstWrite 1}
		W0_14_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_113_367 {
		Pacc_8 {Type I LastRead 0 FirstWrite -1}
		z0_50_out {Type O LastRead -1 FirstWrite 0}
		z0_49_out {Type O LastRead -1 FirstWrite 0}
		z0_48_out {Type O LastRead -1 FirstWrite 0}
		z0_47_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_277 {
		shl_ln103_2_cast {Type I LastRead 0 FirstWrite -1}
		z1_70_reload {Type I LastRead 0 FirstWrite -1}
		z1_69_reload {Type I LastRead 0 FirstWrite -1}
		z1_68_reload {Type I LastRead 0 FirstWrite -1}
		z1_67_reload {Type I LastRead 0 FirstWrite -1}
		W1v_18_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_224 {
		shl_ln113_cast {Type I LastRead 0 FirstWrite -1}
		z1_1 {Type I LastRead 0 FirstWrite -1}
		W1v_6_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_353 {
		shl_ln81_s {Type I LastRead 0 FirstWrite -1}
		Pacc_6 {Type I LastRead 0 FirstWrite -1}
		z1_2 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_378 {
		or_ln1 {Type I LastRead 0 FirstWrite -1}
		Pacc_9 {Type I LastRead 0 FirstWrite -1}
		z2_54_out {Type O LastRead -1 FirstWrite 0}
		z2_55_out {Type O LastRead -1 FirstWrite 0}
		z2_56_out {Type O LastRead -1 FirstWrite 0}
		z2_57_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_325 {
		Pacc_3 {Type I LastRead 0 FirstWrite -1}
		z0 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_255 {
		shl_ln113_1_cast {Type I LastRead 0 FirstWrite -1}
		z1_2 {Type I LastRead 0 FirstWrite -1}
		W1v_14_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_356 {
		Pacc_7 {Type I LastRead 0 FirstWrite -1}
		z2 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_282 {
		mul16_i_i475_i_i_i {Type I LastRead 0 FirstWrite -1}
		P_24 {Type I LastRead 0 FirstWrite -1}
		z0_61_out {Type O LastRead -1 FirstWrite 0}
		z0_60_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_183 {
		icmp_ln74 {Type I LastRead 0 FirstWrite -1}
		Ah_39 {Type I LastRead 0 FirstWrite -1}
		Bh_39 {Type I LastRead 0 FirstWrite -1}
		A_38_out {Type O LastRead -1 FirstWrite 1}
		B_38_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_284 {
		shl_ln81_10 {Type I LastRead 0 FirstWrite -1}
		P_25 {Type I LastRead 0 FirstWrite -1}
		z2_64_out {Type O LastRead -1 FirstWrite 0}
		z2_63_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_185 {
		umax19 {Type I LastRead 0 FirstWrite -1}
		n_lo_1 {Type I LastRead 0 FirstWrite -1}
		Al_37 {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Ah_39 {Type I LastRead 0 FirstWrite -1}
		Sal_40_out {Type O LastRead -1 FirstWrite 0}
		carry_27_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_186 {
		umax19 {Type I LastRead 0 FirstWrite -1}
		n_lo_1 {Type I LastRead 0 FirstWrite -1}
		Bl_37 {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bh_39 {Type I LastRead 0 FirstWrite -1}
		Sbl_37_out {Type O LastRead -1 FirstWrite 0}
		carry_29_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_189 {
		mul16_i_i475_i_i_i {Type I LastRead 0 FirstWrite -1}
		z0_63 {Type I LastRead 0 FirstWrite -1}
		z0_62 {Type I LastRead 0 FirstWrite -1}
		z2_69 {Type I LastRead 0 FirstWrite -1}
		z2_68 {Type I LastRead 0 FirstWrite -1}
		W2_20_out {Type O LastRead -1 FirstWrite 1}
		W0_20_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_97_192 {
		z0_47_reload {Type I LastRead 0 FirstWrite -1}
		z0_48_reload {Type I LastRead 0 FirstWrite -1}
		z0_49_reload {Type I LastRead 0 FirstWrite -1}
		z0_50_reload {Type I LastRead 0 FirstWrite -1}
		z2_57_reload {Type I LastRead 0 FirstWrite -1}
		z2_56_reload {Type I LastRead 0 FirstWrite -1}
		z2_55_reload {Type I LastRead 0 FirstWrite -1}
		z2_54_reload {Type I LastRead 0 FirstWrite -1}
		W2_22_out {Type O LastRead -1 FirstWrite 1}
		W0_22_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_97_195 {
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_24_out {Type O LastRead -1 FirstWrite 0}
		W0_24_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_187 {
		Sal_40_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_37_reload {Type I LastRead 0 FirstWrite -1}
		A_40_out {Type O LastRead -1 FirstWrite 0}
		B_40_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_288 {
		shl_ln81_11 {Type I LastRead 0 FirstWrite -1}
		P_26 {Type I LastRead 0 FirstWrite -1}
		z1_76_out {Type O LastRead -1 FirstWrite 0}
		z1_77_out {Type O LastRead -1 FirstWrite 0}
		z1_78_out {Type O LastRead -1 FirstWrite 0}
		z1_79_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_290 {
		shl_ln103_3_cast {Type I LastRead 0 FirstWrite -1}
		z1_79_reload {Type I LastRead 0 FirstWrite -1}
		z1_78_reload {Type I LastRead 0 FirstWrite -1}
		z1_77_reload {Type I LastRead 0 FirstWrite -1}
		z1_76_reload {Type I LastRead 0 FirstWrite -1}
		W1v_20_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_391 {
		shl_ln113_2 {Type I LastRead 0 FirstWrite -1}
		Pacc_10 {Type I LastRead 0 FirstWrite -1}
		z1_3 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_293 {
		shl_ln113_2_cast {Type I LastRead 0 FirstWrite -1}
		z1_3 {Type I LastRead 0 FirstWrite -1}
		W1v_22_out {Type O LastRead -1 FirstWrite 2}}
	mul_Pipeline_VITIS_LOOP_113_394 {
		shl_ln113_3 {Type I LastRead 0 FirstWrite -1}
		Pacc_11 {Type I LastRead 0 FirstWrite -1}
		z1_17 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_296 {
		shl_ln113_3 {Type I LastRead 0 FirstWrite -1}
		z1_17 {Type I LastRead 0 FirstWrite -1}
		W1v_24_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_397 {
		Pacc_12 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "195", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "196", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 8 }  { a_Din_A MemPortDIN2 1 64 }  { a_Dout_A MemPortDOUT2 0 64 }  { a_Clk_A mem_clk 1 1 }  { a_Rst_A mem_rst 1 1 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 8 }  { b_Din_A MemPortDIN2 1 64 }  { b_Dout_A MemPortDOUT2 0 64 }  { b_Clk_A mem_clk 1 1 }  { b_Rst_A mem_rst 1 1 } } }
	c { bram {  { c_Addr_A MemPortADDR2 1 32 }  { c_EN_A MemPortCE2 1 1 }  { c_WEN_A MemPortWE2 1 8 }  { c_Din_A MemPortDIN2 1 64 }  { c_Dout_A MemPortDOUT2 0 64 }  { c_Clk_A mem_clk 1 1 }  { c_Rst_A mem_rst 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
