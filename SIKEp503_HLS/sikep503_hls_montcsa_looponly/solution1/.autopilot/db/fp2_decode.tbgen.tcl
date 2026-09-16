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
set cdfgNum 818
set C_modelName {fp2_decode}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict x_0 { MEM_WIDTH 64 MEM_SIZE 192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict x_1 { MEM_WIDTH 64 MEM_SIZE 192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ gmem int 8 regular {axi_master 0}  }
	{ enc int 64 regular  }
	{ x_0 int 64 regular {array 24 { 2 } 1 1 }  }
	{ x_0_offset int 2 regular  }
	{ x_1 int 64 regular {array 24 { 2 } 1 1 }  }
	{ x_1_offset int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "ct","offset": { "type": "dynamic","port_name": "ct","bundle": "control"},"direction": "READWRITE"},{"cName": "pk","offset": { "type": "dynamic","port_name": "pk","bundle": "control"},"direction": "READONLY"},{"cName": "ss","offset": { "type": "dynamic","port_name": "ss","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "enc", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "x_0_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "x_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "x_1_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 65
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
	{ x_0_address0 sc_out sc_lv 5 signal 2 } 
	{ x_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_0_we0 sc_out sc_logic 1 signal 2 } 
	{ x_0_d0 sc_out sc_lv 64 signal 2 } 
	{ x_0_q0 sc_in sc_lv 64 signal 2 } 
	{ x_0_offset sc_in sc_lv 2 signal 3 } 
	{ x_1_address0 sc_out sc_lv 5 signal 4 } 
	{ x_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_1_we0 sc_out sc_logic 1 signal 4 } 
	{ x_1_d0 sc_out sc_lv 64 signal 4 } 
	{ x_1_q0 sc_in sc_lv 64 signal 4 } 
	{ x_1_offset sc_in sc_lv 2 signal 5 } 
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
 	{ "name": "x_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_0", "role": "address0" }} , 
 	{ "name": "x_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_0", "role": "ce0" }} , 
 	{ "name": "x_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_0", "role": "we0" }} , 
 	{ "name": "x_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_0", "role": "d0" }} , 
 	{ "name": "x_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_0", "role": "q0" }} , 
 	{ "name": "x_0_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_0_offset", "role": "default" }} , 
 	{ "name": "x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_1", "role": "address0" }} , 
 	{ "name": "x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "ce0" }} , 
 	{ "name": "x_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "we0" }} , 
 	{ "name": "x_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_1", "role": "d0" }} , 
 	{ "name": "x_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_1", "role": "q0" }} , 
 	{ "name": "x_1_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_1_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "44"],
		"CDFG" : "fp2_decode",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "187", "EstimateLatencyMax" : "187",
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
					{"ID" : "3", "SubInstance" : "grp_fp2_decode_Pipeline_VITIS_LOOP_76_3_fu_78", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "enc", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2_fu_68", "Port" : "x_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_fp2_decode_Pipeline_VITIS_LOOP_76_3_fu_78", "Port" : "x_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "5", "SubInstance" : "grp_fpmul503_mont_21_1_fu_92", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "x_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2_fu_68", "Port" : "x_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_fp2_decode_Pipeline_VITIS_LOOP_76_3_fu_78", "Port" : "x_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "44", "SubInstance" : "grp_fpmul503_mont_21_1_fu_99", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "x_1_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2_fu_68", "Parent" : "0", "Child" : ["2"],
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
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln71", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln71_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_67_1_VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_Pipeline_VITIS_LOOP_76_3_fu_78", "Parent" : "0", "Child" : ["4"],
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
			{"Name" : "x_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_Pipeline_VITIS_LOOP_76_3_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "fpmul503_mont_21_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
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
					{"ID" : "6", "SubInstance" : "grp_mul_20_1_fu_22", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22", "Parent" : "5", "Child" : ["7"],
		"CDFG" : "mul_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
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
					{"ID" : "7", "SubInstance" : "grp_mul_19_1_fu_22", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22", "Parent" : "6", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "mul_19_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_55ns_118_1_1_U2516", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_55ns_118_1_1_U2517", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_55ns_118_1_1_U2518", "Parent" : "7"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_55ns_118_1_1_U2519", "Parent" : "7"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_56ns_119_1_1_U2520", "Parent" : "7"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_56ns_119_1_1_U2521", "Parent" : "7"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_62ns_125_1_1_U2522", "Parent" : "7"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_62ns_125_1_1_U2523", "Parent" : "7"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_62ns_125_1_1_U2524", "Parent" : "7"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_62ns_125_1_1_U2525", "Parent" : "7"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2526", "Parent" : "7"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2527", "Parent" : "7"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2528", "Parent" : "7"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2529", "Parent" : "7"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2530", "Parent" : "7"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2531", "Parent" : "7"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2532", "Parent" : "7"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2533", "Parent" : "7"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2534", "Parent" : "7"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2535", "Parent" : "7"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2536", "Parent" : "7"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2537", "Parent" : "7"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2538", "Parent" : "7"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2539", "Parent" : "7"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2540", "Parent" : "7"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2541", "Parent" : "7"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2542", "Parent" : "7"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2543", "Parent" : "7"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2544", "Parent" : "7"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_56ns_64_1_1_U2545", "Parent" : "7"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_62ns_64_1_1_U2546", "Parent" : "7"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_62ns_64_1_1_U2547", "Parent" : "7"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2548", "Parent" : "7"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_56ns_64_1_1_U2549", "Parent" : "7"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64s_64_1_1_U2550", "Parent" : "7"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_92.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64s_64_1_1_U2551", "Parent" : "7"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99", "Parent" : "0", "Child" : ["45"],
		"CDFG" : "fpmul503_mont_21_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
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
					{"ID" : "45", "SubInstance" : "grp_mul_20_1_fu_22", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22", "Parent" : "44", "Child" : ["46"],
		"CDFG" : "mul_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
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
					{"ID" : "46", "SubInstance" : "grp_mul_19_1_fu_22", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22", "Parent" : "45", "Child" : ["47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82"],
		"CDFG" : "mul_19_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_55ns_118_1_1_U2516", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_55ns_118_1_1_U2517", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_55ns_118_1_1_U2518", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_55ns_118_1_1_U2519", "Parent" : "46"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_56ns_119_1_1_U2520", "Parent" : "46"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_56ns_119_1_1_U2521", "Parent" : "46"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_62ns_125_1_1_U2522", "Parent" : "46"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_62ns_125_1_1_U2523", "Parent" : "46"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_62ns_125_1_1_U2524", "Parent" : "46"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_62ns_125_1_1_U2525", "Parent" : "46"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2526", "Parent" : "46"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2527", "Parent" : "46"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2528", "Parent" : "46"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2529", "Parent" : "46"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2530", "Parent" : "46"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_64ns_127_1_1_U2531", "Parent" : "46"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2532", "Parent" : "46"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2533", "Parent" : "46"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2534", "Parent" : "46"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2535", "Parent" : "46"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2536", "Parent" : "46"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2537", "Parent" : "46"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2538", "Parent" : "46"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2539", "Parent" : "46"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64ns_65ns_128_1_1_U2540", "Parent" : "46"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2541", "Parent" : "46"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2542", "Parent" : "46"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2543", "Parent" : "46"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2544", "Parent" : "46"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_56ns_64_1_1_U2545", "Parent" : "46"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_62ns_64_1_1_U2546", "Parent" : "46"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_62ns_64_1_1_U2547", "Parent" : "46"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64ns_64_1_1_U2548", "Parent" : "46"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_56ns_64_1_1_U2549", "Parent" : "46"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64s_64_1_1_U2550", "Parent" : "46"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_21_1_fu_99.grp_mul_20_1_fu_22.grp_mul_19_1_fu_22.mul_64s_64s_64_1_1_U2551", "Parent" : "46"}]}


set ArgLastReadFirstWriteLatency {
	fp2_decode {
		gmem {Type I LastRead 10 FirstWrite -1}
		enc {Type I LastRead 2 FirstWrite -1}
		x_0 {Type IO LastRead 9 FirstWrite 0}
		x_0_offset {Type I LastRead 0 FirstWrite -1}
		x_1 {Type IO LastRead 10 FirstWrite 0}
		x_1_offset {Type I LastRead 0 FirstWrite -1}}
	fp2_decode_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_69_2 {
		x_1 {Type O LastRead -1 FirstWrite 0}
		zext_ln71 {Type I LastRead 0 FirstWrite -1}
		x_0 {Type O LastRead -1 FirstWrite 0}
		zext_ln71_1 {Type I LastRead 0 FirstWrite -1}}
	fp2_decode_Pipeline_VITIS_LOOP_76_3 {
		enc {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 10 FirstWrite -1}
		x_0_offset {Type I LastRead 0 FirstWrite -1}
		x_0 {Type IO LastRead 9 FirstWrite 10}
		x_1_offset {Type I LastRead 0 FirstWrite -1}
		x_1 {Type IO LastRead 10 FirstWrite 11}}
	fpmul503_mont_21_1 {
		mc {Type IO LastRead 9 FirstWrite 18}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	mul_20_1 {
		c {Type IO LastRead 9 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}}
	mul_19_1 {
		c {Type IO LastRead 9 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}}
	fpmul503_mont_21_1 {
		mc {Type IO LastRead 9 FirstWrite 18}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	mul_20_1 {
		c {Type IO LastRead 9 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}}
	mul_19_1 {
		c {Type IO LastRead 9 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "187", "Max" : "187"}
	, {"Name" : "Interval", "Min" : "187", "Max" : "187"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 8 }  { m_axi_gmem_0_WSTRB STRB 1 1 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 8 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 11 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	enc { ap_none {  { enc in_data 0 64 } } }
	x_0 { ap_memory {  { x_0_address0 mem_address 1 5 }  { x_0_ce0 mem_ce 1 1 }  { x_0_we0 mem_we 1 1 }  { x_0_d0 mem_din 1 64 }  { x_0_q0 mem_dout 0 64 } } }
	x_0_offset { ap_none {  { x_0_offset in_data 0 2 } } }
	x_1 { ap_memory {  { x_1_address0 mem_address 1 5 }  { x_1_ce0 mem_ce 1 1 }  { x_1_we0 mem_we 1 1 }  { x_1_d0 mem_din 1 64 }  { x_1_q0 mem_dout 0 64 } } }
	x_1_offset { ap_none {  { x_1_offset in_data 0 2 } } }
}
