set moduleName fp2_decode
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
set cdfgNum 623
set C_modelName {fp2_decode}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict x { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ gmem int 8 regular {axi_master 0}  }
	{ enc int 64 regular  }
	{ x int 64 regular {array 48 { 2 2 } 1 1 }  }
	{ x_offset int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "ct","offset": { "type": "dynamic","port_name": "ct","bundle": "control"},"direction": "READWRITE"},{"cName": "pk","offset": { "type": "dynamic","port_name": "pk","bundle": "control"},"direction": "READONLY"},{"cName": "ss","offset": { "type": "dynamic","port_name": "ss","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "enc", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ enc sc_in sc_lv 64 signal 1 } 
	{ x_address0 sc_out sc_lv 6 signal 2 } 
	{ x_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_we0 sc_out sc_logic 1 signal 2 } 
	{ x_d0 sc_out sc_lv 64 signal 2 } 
	{ x_q0 sc_in sc_lv 64 signal 2 } 
	{ x_address1 sc_out sc_lv 6 signal 2 } 
	{ x_ce1 sc_out sc_logic 1 signal 2 } 
	{ x_we1 sc_out sc_logic 1 signal 2 } 
	{ x_d1 sc_out sc_lv 64 signal 2 } 
	{ x_q1 sc_in sc_lv 64 signal 2 } 
	{ x_offset sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BUSER" }} , 
 	{ "name": "enc", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "enc", "role": "default" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "we0" }} , 
 	{ "name": "x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "d0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "x", "role": "address1" }} , 
 	{ "name": "x_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce1" }} , 
 	{ "name": "x_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "we1" }} , 
 	{ "name": "x_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "d1" }} , 
 	{ "name": "x_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "q1" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5"],
		"CDFG" : "fp2_decode",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "208", "EstimateLatencyMax" : "208",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fp2_decode_Pipeline_VITIS_LOOP_76_3_fu_59", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "enc", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2_fu_52", "Port" : "x", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_fp2_decode_Pipeline_VITIS_LOOP_76_3_fu_59", "Port" : "x", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "5", "SubInstance" : "grp_fpmul503_mont_19_1_fu_70", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2_fu_52", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2",
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
			{"Name" : "zext_ln71", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_67_1_VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_Pipeline_VITIS_LOOP_76_3_fu_59", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "fp2_decode_Pipeline_VITIS_LOOP_76_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137", "EstimateLatencyMax" : "137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "enc", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_Pipeline_VITIS_LOOP_76_3_fu_59.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "fpmul503_mont_19_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mul_18_2_fu_24", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24", "Parent" : "5", "Child" : ["7"],
		"CDFG" : "mul_18_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mul_17_1_fu_24", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24", "Parent" : "6", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "mul_17_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_55ns_118_1_1_U2225", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_55ns_118_1_1_U2226", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_55ns_118_1_1_U2227", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_55ns_118_1_1_U2228", "Parent" : "7"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_56ns_119_1_1_U2229", "Parent" : "7"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_56ns_119_1_1_U2230", "Parent" : "7"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_62ns_125_1_1_U2231", "Parent" : "7"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_62ns_125_1_1_U2232", "Parent" : "7"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_62ns_125_1_1_U2233", "Parent" : "7"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_62ns_125_1_1_U2234", "Parent" : "7"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2235", "Parent" : "7"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2236", "Parent" : "7"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2237", "Parent" : "7"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2238", "Parent" : "7"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2239", "Parent" : "7"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2240", "Parent" : "7"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2241", "Parent" : "7"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2242", "Parent" : "7"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2243", "Parent" : "7"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2244", "Parent" : "7"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2245", "Parent" : "7"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2246", "Parent" : "7"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2247", "Parent" : "7"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2248", "Parent" : "7"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2249", "Parent" : "7"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2250", "Parent" : "7"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2251", "Parent" : "7"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2252", "Parent" : "7"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2253", "Parent" : "7"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_56ns_64_1_1_U2254", "Parent" : "7"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_62ns_64_1_1_U2255", "Parent" : "7"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_62ns_64_1_1_U2256", "Parent" : "7"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2257", "Parent" : "7"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_56ns_64_1_1_U2258", "Parent" : "7"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_64s_64_1_1_U2259", "Parent" : "7"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_19_1_fu_70.grp_mul_18_2_fu_24.grp_mul_17_1_fu_24.mul_64s_64s_64_1_1_U2260", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	fp2_decode {
		gmem {Type I LastRead 10 FirstWrite -1}
		enc {Type I LastRead 2 FirstWrite -1}
		x {Type IO LastRead 10 FirstWrite 0}
		x_offset {Type I LastRead 0 FirstWrite -1}}
	fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2 {
		zext_ln71 {Type I LastRead 0 FirstWrite -1}
		x {Type O LastRead -1 FirstWrite 0}}
	fp2_decode_Pipeline_VITIS_LOOP_76_3 {
		enc {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 10 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}
		x {Type IO LastRead 10 FirstWrite 10}}
	fpmul503_mont_19_1 {
		mc {Type IO LastRead 10 FirstWrite 18}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}}
	mul_18_2 {
		c {Type IO LastRead 10 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}
		c_offset1 {Type I LastRead 0 FirstWrite -1}}
	mul_17_1 {
		c {Type IO LastRead 10 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}
		c_offset1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "208", "Max" : "208"}
	, {"Name" : "Interval", "Min" : "208", "Max" : "208"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 8 }  { m_axi_gmem_0_WSTRB STRB 1 1 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 8 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 11 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	enc { ap_none {  { enc in_data 0 64 } } }
	x { ap_memory {  { x_address0 mem_address 1 6 }  { x_ce0 mem_ce 1 1 }  { x_we0 mem_we 1 1 }  { x_d0 mem_din 1 64 }  { x_q0 mem_dout 0 64 }  { x_address1 MemPortADDR2 1 6 }  { x_ce1 MemPortCE2 1 1 }  { x_we1 MemPortWE2 1 1 }  { x_d1 MemPortDIN2 1 64 }  { x_q1 MemPortDOUT2 0 64 } } }
	x_offset { ap_none {  { x_offset in_data 0 2 } } }
}
