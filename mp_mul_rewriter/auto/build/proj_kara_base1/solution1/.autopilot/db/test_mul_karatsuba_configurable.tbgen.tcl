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
set cdfgNum 56
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "320"],
		"CDFG" : "test_mul_karatsuba_configurable",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "822", "EstimateLatencyMax" : "1435",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "9", "318"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "821", "EstimateLatencyMax" : "1434",
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
					{"ID" : "5", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_256_1_fu_363", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_256_16_fu_370", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "318", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_276_1_fu_384", "Port" : "c", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.la_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.lb_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.lc_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_1_Pipeline_VITIS_LOOP_256_1_fu_363", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_256_1",
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
			{"Name" : "a", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "la", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_256_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_1_Pipeline_VITIS_LOOP_256_1_fu_363.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_1_Pipeline_VITIS_LOOP_256_16_fu_370", "Parent" : "1", "Child" : ["8"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_256_16",
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
			{"Name" : "b", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "lb", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_256_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_1_Pipeline_VITIS_LOOP_256_16_fu_370.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377", "Parent" : "1", "Child" : ["10"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "782", "EstimateLatencyMax" : "1395",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mul_sized_8u_s_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mul_sized_8u_s_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mul_sized_8u_s_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8", "Parent" : "9", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "22", "24", "26", "163", "165", "167", "304"],
		"CDFG" : "mul_sized_8u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "781", "EstimateLatencyMax" : "1394",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_karatsuba_combine_fu_167", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Al_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Ah_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Bl_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Bh_U", "Parent" : "10"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.z0_U", "Parent" : "10"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.z2_U", "Parent" : "10"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.z1_U", "Parent" : "10"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Sal_U", "Parent" : "10"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Sbl_U", "Parent" : "10"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106", "Parent" : "10", "Child" : ["21"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_175_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_187_3_fu_118", "Parent" : "10", "Child" : ["23"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_187_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_187_3_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126", "Parent" : "10", "Child" : ["25"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_181_2",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136", "Parent" : "10", "Child" : ["27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "38", "40", "42", "90", "92", "94", "149"],
		"CDFG" : "mul_sized_4u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "441",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "40", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "40", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_karatsuba_combine_fu_171", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Al_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Ah_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Bl_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Bh_U", "Parent" : "26"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.z0_U", "Parent" : "26"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.z2_U", "Parent" : "26"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.z1_U", "Parent" : "26"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Sal_U", "Parent" : "26"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Sbl_U", "Parent" : "26"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108", "Parent" : "26", "Child" : ["37"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_175_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_187_3_fu_120", "Parent" : "26", "Child" : ["39"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_187_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "39", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_187_3_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128", "Parent" : "26", "Child" : ["41"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_181_2",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138", "Parent" : "26", "Child" : ["43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "54", "56", "58", "65", "67", "69", "76"],
		"CDFG" : "mul_sized_2u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "56", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "56", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_karatsuba_combine_fu_178", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Al_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Ah_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Bl_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Bh_U", "Parent" : "42"},
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.z0_U", "Parent" : "42"},
	{"ID" : "48", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.z2_U", "Parent" : "42"},
	{"ID" : "49", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.z1_U", "Parent" : "42"},
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Sal_U", "Parent" : "42"},
	{"ID" : "51", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Sbl_U", "Parent" : "42"},
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Parent" : "42", "Child" : ["53"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_175_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_187_3_fu_124", "Parent" : "42", "Child" : ["55"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_187_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_187_3_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Parent" : "42", "Child" : ["57"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_181_2",
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
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143", "Parent" : "42", "Child" : ["59", "61", "64"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "58", "Child" : ["60"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "60", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "58", "Child" : ["62", "63"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "61"},
	{"ID" : "63", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.mul_64ns_64ns_128_1_1_U43", "Parent" : "58"},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_1_fu_152", "Parent" : "42", "Child" : ["66"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_91_1",
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
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_1_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_15_fu_161", "Parent" : "42", "Child" : ["68"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_91_15",
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
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_15_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170", "Parent" : "42", "Child" : ["70", "72", "75"],
		"CDFG" : "mul_sized_1u_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64", "Parent" : "69", "Child" : ["71"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Parent" : "69", "Child" : ["73", "74"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.partselect_64ns_128ns_32ns_64_1_1_U63", "Parent" : "72"},
	{"ID" : "74", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.mul_64ns_64ns_128_1_1_U67", "Parent" : "69"},
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178", "Parent" : "42", "Child" : ["77", "79", "81", "83", "87"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "77", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "76", "Child" : ["78"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
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
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Parent" : "76", "Child" : ["80"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_19",
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
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "80", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Parent" : "76", "Child" : ["82"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "76", "Child" : ["84", "85", "86"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U81", "Parent" : "83"},
	{"ID" : "85", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U82", "Parent" : "83"},
	{"ID" : "86", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "76", "Child" : ["88", "89"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U88", "Parent" : "87"},
	{"ID" : "89", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_1_fu_147", "Parent" : "26", "Child" : ["91"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_91_1",
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
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_1_fu_147.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_13_fu_155", "Parent" : "26", "Child" : ["93"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_91_13",
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
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_13_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163", "Parent" : "26", "Child" : ["95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "106", "108", "110", "117", "124", "126", "128", "135"],
		"CDFG" : "mul_sized_2u_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "98",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "106", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "106", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_karatsuba_combine_3_fu_191", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Al_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Ah_U", "Parent" : "94"},
	{"ID" : "97", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Bl_U", "Parent" : "94"},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Bh_U", "Parent" : "94"},
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.z0_U", "Parent" : "94"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.z2_U", "Parent" : "94"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.z1_U", "Parent" : "94"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Sal_U", "Parent" : "94"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Sbl_U", "Parent" : "94"},
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Parent" : "94", "Child" : ["105"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1",
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
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "105", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Parent" : "94", "Child" : ["107"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "107", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3_fu_139", "Parent" : "94", "Child" : ["109"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "109", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3_fu_139.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145", "Parent" : "94", "Child" : ["111", "113", "116"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "110", "Child" : ["112"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "112", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "110", "Child" : ["114", "115"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "114", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "113"},
	{"ID" : "115", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "116", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.mul_64ns_64ns_128_1_1_U43", "Parent" : "110"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153", "Parent" : "94", "Child" : ["118", "120", "123"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "118", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "117", "Child" : ["119"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "117", "Child" : ["121", "122"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "120"},
	{"ID" : "122", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.mul_64ns_64ns_128_1_1_U43", "Parent" : "117"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1_fu_161", "Parent" : "94", "Child" : ["125"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "125", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14_fu_172", "Parent" : "94", "Child" : ["127"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "127", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183", "Parent" : "94", "Child" : ["129", "131", "134"],
		"CDFG" : "mul_sized_1u_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "129", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64", "Parent" : "128", "Child" : ["130"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "130", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Parent" : "128", "Child" : ["132", "133"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "132", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.partselect_64ns_128ns_32ns_64_1_1_U63", "Parent" : "131"},
	{"ID" : "133", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "134", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.mul_64ns_64ns_128_1_1_U67", "Parent" : "128"},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191", "Parent" : "94", "Child" : ["136", "138", "140", "142", "146"],
		"CDFG" : "karatsuba_combine_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "136", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "135", "Child" : ["137"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1",
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
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "137", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Parent" : "135", "Child" : ["139"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17",
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
			{"Name" : "nz_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "139", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Parent" : "135", "Child" : ["141"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18",
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
			{"Name" : "nz_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "141", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "135", "Child" : ["143", "144", "145"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "143", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U153", "Parent" : "142"},
	{"ID" : "144", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U154", "Parent" : "142"},
	{"ID" : "145", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "142"},
	{"ID" : "146", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "135", "Child" : ["147", "148"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "147", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U158", "Parent" : "146"},
	{"ID" : "148", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "146"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171", "Parent" : "26", "Child" : ["150", "152", "154", "156", "160"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "150", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "149", "Child" : ["151"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
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
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "151", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Parent" : "149", "Child" : ["153"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_19",
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
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "153", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Parent" : "149", "Child" : ["155"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "155", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "149", "Child" : ["157", "158", "159"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "157", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U81", "Parent" : "156"},
	{"ID" : "158", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U82", "Parent" : "156"},
	{"ID" : "159", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "156"},
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "149", "Child" : ["161", "162"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "161", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U88", "Parent" : "160"},
	{"ID" : "162", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "160"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_1_fu_143", "Parent" : "10", "Child" : ["164"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_91_1",
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
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_1_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_11_fu_151", "Parent" : "10", "Child" : ["166"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_91_11",
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
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_11_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159", "Parent" : "10", "Child" : ["168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "179", "181", "183", "231", "233", "235", "290"],
		"CDFG" : "mul_sized_4u_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "242", "EstimateLatencyMax" : "427",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "181", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "181", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "grp_karatsuba_combine_3_fu_178", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Al_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Ah_U", "Parent" : "167"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Bl_U", "Parent" : "167"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Bh_U", "Parent" : "167"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.z0_U", "Parent" : "167"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.z2_U", "Parent" : "167"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.z1_U", "Parent" : "167"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Sal_U", "Parent" : "167"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Sbl_U", "Parent" : "167"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112", "Parent" : "167", "Child" : ["178"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "178", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3_fu_124", "Parent" : "167", "Child" : ["180"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "180", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132", "Parent" : "167", "Child" : ["182"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "182", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143", "Parent" : "167", "Child" : ["184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "195", "197", "199", "206", "208", "210", "217"],
		"CDFG" : "mul_sized_2u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "197", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "197", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_karatsuba_combine_fu_178", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "184", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Al_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Ah_U", "Parent" : "183"},
	{"ID" : "186", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Bl_U", "Parent" : "183"},
	{"ID" : "187", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Bh_U", "Parent" : "183"},
	{"ID" : "188", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.z0_U", "Parent" : "183"},
	{"ID" : "189", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.z2_U", "Parent" : "183"},
	{"ID" : "190", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.z1_U", "Parent" : "183"},
	{"ID" : "191", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Sal_U", "Parent" : "183"},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Sbl_U", "Parent" : "183"},
	{"ID" : "193", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Parent" : "183", "Child" : ["194"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_175_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "194", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_187_3_fu_124", "Parent" : "183", "Child" : ["196"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_187_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "196", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_187_3_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Parent" : "183", "Child" : ["198"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_181_2",
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
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "198", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143", "Parent" : "183", "Child" : ["200", "202", "205"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "202", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "200", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "199", "Child" : ["201"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "201", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "199", "Child" : ["203", "204"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "203", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "202"},
	{"ID" : "204", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "202"},
	{"ID" : "205", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.mul_64ns_64ns_128_1_1_U43", "Parent" : "199"},
	{"ID" : "206", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_1_fu_152", "Parent" : "183", "Child" : ["207"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_91_1",
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
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "207", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_1_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_15_fu_161", "Parent" : "183", "Child" : ["209"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_91_15",
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
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "209", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_15_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170", "Parent" : "183", "Child" : ["211", "213", "216"],
		"CDFG" : "mul_sized_1u_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "211", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64", "Parent" : "210", "Child" : ["212"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "212", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Parent" : "210", "Child" : ["214", "215"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "214", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.partselect_64ns_128ns_32ns_64_1_1_U63", "Parent" : "213"},
	{"ID" : "215", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "216", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.mul_64ns_64ns_128_1_1_U67", "Parent" : "210"},
	{"ID" : "217", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178", "Parent" : "183", "Child" : ["218", "220", "222", "224", "228"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "228", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "218", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "217", "Child" : ["219"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
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
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "219", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Parent" : "217", "Child" : ["221"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_19",
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
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "221", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Parent" : "217", "Child" : ["223"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "223", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "217", "Child" : ["225", "226", "227"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "225", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U81", "Parent" : "224"},
	{"ID" : "226", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U82", "Parent" : "224"},
	{"ID" : "227", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "224"},
	{"ID" : "228", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "217", "Child" : ["229", "230"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "229", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U88", "Parent" : "228"},
	{"ID" : "230", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "228"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1_fu_152", "Parent" : "167", "Child" : ["232"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "232", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12_fu_161", "Parent" : "167", "Child" : ["234"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "234", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170", "Parent" : "167", "Child" : ["236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "247", "249", "251", "258", "265", "267", "269", "276"],
		"CDFG" : "mul_sized_2u_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "98",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "247", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "247", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_karatsuba_combine_3_fu_191", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "236", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Al_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Ah_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Bl_U", "Parent" : "235"},
	{"ID" : "239", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Bh_U", "Parent" : "235"},
	{"ID" : "240", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.z0_U", "Parent" : "235"},
	{"ID" : "241", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.z2_U", "Parent" : "235"},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.z1_U", "Parent" : "235"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Sal_U", "Parent" : "235"},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Sbl_U", "Parent" : "235"},
	{"ID" : "245", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Parent" : "235", "Child" : ["246"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1",
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
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "246", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Parent" : "235", "Child" : ["248"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "248", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3_fu_139", "Parent" : "235", "Child" : ["250"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "250", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3_fu_139.flow_control_loop_pipe_sequential_init_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145", "Parent" : "235", "Child" : ["252", "254", "257"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "252", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "251", "Child" : ["253"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "253", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "251", "Child" : ["255", "256"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "255", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "254"},
	{"ID" : "256", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "254"},
	{"ID" : "257", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.mul_64ns_64ns_128_1_1_U43", "Parent" : "251"},
	{"ID" : "258", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153", "Parent" : "235", "Child" : ["259", "261", "264"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "259", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "258", "Child" : ["260"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "260", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "258", "Child" : ["262", "263"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "262", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "261"},
	{"ID" : "263", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.mul_64ns_64ns_128_1_1_U43", "Parent" : "258"},
	{"ID" : "265", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1_fu_161", "Parent" : "235", "Child" : ["266"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "266", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14_fu_172", "Parent" : "235", "Child" : ["268"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "268", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183", "Parent" : "235", "Child" : ["270", "272", "275"],
		"CDFG" : "mul_sized_1u_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64", "Parent" : "269", "Child" : ["271"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "271", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Parent" : "269", "Child" : ["273", "274"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2",
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
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "273", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.partselect_64ns_128ns_32ns_64_1_1_U63", "Parent" : "272"},
	{"ID" : "274", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.mul_64ns_64ns_128_1_1_U67", "Parent" : "269"},
	{"ID" : "276", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191", "Parent" : "235", "Child" : ["277", "279", "281", "283", "287"],
		"CDFG" : "karatsuba_combine_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "279", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "277", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "276", "Child" : ["278"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1",
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
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "278", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Parent" : "276", "Child" : ["280"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17",
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
			{"Name" : "nz_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "280", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Parent" : "276", "Child" : ["282"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18",
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
			{"Name" : "nz_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "282", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "276", "Child" : ["284", "285", "286"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "284", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U153", "Parent" : "283"},
	{"ID" : "285", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U154", "Parent" : "283"},
	{"ID" : "286", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "283"},
	{"ID" : "287", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "276", "Child" : ["288", "289"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "288", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U158", "Parent" : "287"},
	{"ID" : "289", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "287"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178", "Parent" : "167", "Child" : ["291", "293", "295", "297", "301"],
		"CDFG" : "karatsuba_combine_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "291", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "290", "Child" : ["292"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1",
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
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "292", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Parent" : "290", "Child" : ["294"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17",
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
			{"Name" : "nz_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "294", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Parent" : "290", "Child" : ["296"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18",
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
			{"Name" : "nz_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "296", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "290", "Child" : ["298", "299", "300"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "298", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U153", "Parent" : "297"},
	{"ID" : "299", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U154", "Parent" : "297"},
	{"ID" : "300", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "297"},
	{"ID" : "301", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "290", "Child" : ["302", "303"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "302", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U158", "Parent" : "301"},
	{"ID" : "303", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167", "Parent" : "10", "Child" : ["305", "307", "309", "311", "315"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "307", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "309", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "315", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "304", "Child" : ["306"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
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
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "306", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Parent" : "304", "Child" : ["308"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_19",
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
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "308", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Parent" : "304", "Child" : ["310"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "310", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "304", "Child" : ["312", "313", "314"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "312", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U81", "Parent" : "311"},
	{"ID" : "313", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U82", "Parent" : "311"},
	{"ID" : "314", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "311"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "304", "Child" : ["316", "317"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "316", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U88", "Parent" : "315"},
	{"ID" : "317", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "315"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_1_Pipeline_VITIS_LOOP_276_1_fu_384", "Parent" : "1", "Child" : ["319"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_276_1",
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
			{"Name" : "lc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_276_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_fu_28.grp_mul_1_Pipeline_VITIS_LOOP_276_1_fu_384.flow_control_loop_pipe_sequential_init_U", "Parent" : "318"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_mul_karatsuba_configurable {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_1_Pipeline_VITIS_LOOP_256_1 {
		a {Type I LastRead 0 FirstWrite -1}
		la {Type O LastRead -1 FirstWrite 1}}
	mul_1_Pipeline_VITIS_LOOP_256_16 {
		b {Type I LastRead 0 FirstWrite -1}
		lb {Type O LastRead -1 FirstWrite 1}}
	mul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_8u_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_Pipeline_VITIS_LOOP_181_2 {
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_4u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_4u_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_Pipeline_VITIS_LOOP_181_2 {
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 2 FirstWrite -1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_181_2 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_91_1 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_91_15 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_4 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine {
		nwords {Type I LastRead 4 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_19 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_110 {
		nz_4 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_2 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_Pipeline_VITIS_LOOP_91_1 {
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_Pipeline_VITIS_LOOP_91_13 {
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_8_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1 {
		n_lo {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		n_lo_2 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1 {
		n {Type I LastRead 0 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14 {
		n {Type I LastRead 0 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_4 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3 {
		nwords {Type I LastRead 3 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17 {
		nz_1 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18 {
		nz_2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_1 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine {
		nwords {Type I LastRead 4 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_19 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_110 {
		nz_4 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_2 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_Pipeline_VITIS_LOOP_91_1 {
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_Pipeline_VITIS_LOOP_91_11 {
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 2 FirstWrite -1}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 2 FirstWrite -1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_181_2 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_91_1 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_91_15 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_4 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine {
		nwords {Type I LastRead 4 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_19 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_110 {
		nz_4 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_2 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12 {
		empty {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_4_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1 {
		n_lo {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		n_lo_2 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1 {
		n {Type I LastRead 0 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14 {
		n {Type I LastRead 0 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_4 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3 {
		nwords {Type I LastRead 3 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17 {
		nz_1 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18 {
		nz_2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_1 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3 {
		nwords {Type I LastRead 3 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17 {
		nz_1 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18 {
		nz_2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_1 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine {
		nwords {Type I LastRead 4 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_19 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_110 {
		nz_4 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_2 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_276_1 {
		lc {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "822", "Max" : "1435"}
	, {"Name" : "Interval", "Min" : "823", "Max" : "1436"}
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
