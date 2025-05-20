set moduleName fp2_decode_1
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
set cdfgNum 712
set C_modelName {fp2_decode.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict PKB { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Montgomery_R2_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ gmem2 int 8 regular {axi_master 0}  }
	{ enc int 32 regular  }
	{ PKB int 64 regular {array 48 { 2 3 } 1 1 }  }
	{ Montgomery_R2_1 int 64 regular {array 8 { 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "ss","offset": { "type": "dynamic","port_name": "ss","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "enc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "PKB", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "Montgomery_R2_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 77
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem2_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem2_0_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem2_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem2_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem2_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem2_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem2_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem2_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem2_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ enc sc_in sc_lv 32 signal 1 } 
	{ PKB_address0 sc_out sc_lv 6 signal 2 } 
	{ PKB_ce0 sc_out sc_logic 1 signal 2 } 
	{ PKB_we0 sc_out sc_lv 8 signal 2 } 
	{ PKB_d0 sc_out sc_lv 64 signal 2 } 
	{ PKB_q0 sc_in sc_lv 64 signal 2 } 
	{ Montgomery_R2_1_address0 sc_out sc_lv 3 signal 3 } 
	{ Montgomery_R2_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ Montgomery_R2_1_q0 sc_in sc_lv 64 signal 3 } 
	{ grp_fu_1254_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1254_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1254_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1254_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1258_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1258_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1258_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1258_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1262_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1262_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1262_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1262_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1266_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1266_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1266_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1266_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem2_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem2_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem2_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem2_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem2_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem2_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem2_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem2_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem2_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem2_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem2_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem2_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem2_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem2_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem2_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem2_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem2_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem2_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem2_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem2_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem2_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem2_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem2_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem2_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem2_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem2_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem2_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem2_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem2_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem2_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem2_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem2_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem2_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem2_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem2_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem2_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem2_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem2_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem2_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem2_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BUSER" }} , 
 	{ "name": "enc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "enc", "role": "default" }} , 
 	{ "name": "PKB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "PKB", "role": "address0" }} , 
 	{ "name": "PKB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PKB", "role": "ce0" }} , 
 	{ "name": "PKB_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "PKB", "role": "we0" }} , 
 	{ "name": "PKB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "PKB", "role": "d0" }} , 
 	{ "name": "PKB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "PKB", "role": "q0" }} , 
 	{ "name": "Montgomery_R2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Montgomery_R2_1", "role": "address0" }} , 
 	{ "name": "Montgomery_R2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Montgomery_R2_1", "role": "ce0" }} , 
 	{ "name": "Montgomery_R2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Montgomery_R2_1", "role": "q0" }} , 
 	{ "name": "grp_fu_1254_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1254_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1254_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1254_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1254_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1254_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1254_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1254_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1258_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1258_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1258_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1258_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1258_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1258_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1258_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1258_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1262_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1262_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1262_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1262_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1262_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1262_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1262_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1262_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1266_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1266_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1266_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1266_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1266_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1266_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1266_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1266_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9", "11", "18", "31", "40"],
		"CDFG" : "fp2_decode_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1082", "EstimateLatencyMax" : "1602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_fp2_decode_1_Pipeline_VITIS_LOOP_53_2_fu_82", "Port" : "gmem2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "enc", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fp2_decode_1_Pipeline_VITIS_LOOP_51_1_fu_64", "Port" : "PKB", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_fp2_decode_1_Pipeline_VITIS_LOOP_53_2_fu_82", "Port" : "PKB", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "11", "SubInstance" : "grp_mp_mul_6_fu_92", "Port" : "PKB", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "18", "SubInstance" : "grp_rdc_mont_1_fu_101", "Port" : "PKB", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "31", "SubInstance" : "grp_mp_mul_862_fu_110", "Port" : "PKB", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "40", "SubInstance" : "grp_rdc_mont_2_fu_121", "Port" : "PKB", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "Montgomery_R2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_mp_mul_6_fu_92", "Port" : "Montgomery_R2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "31", "SubInstance" : "grp_mp_mul_862_fu_110", "Port" : "b", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_rdc_mont_1_fu_101", "Port" : "p503p1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "40", "SubInstance" : "grp_rdc_mont_2_fu_121", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_72_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_1_Pipeline_VITIS_LOOP_51_1_fu_64", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "fp2_decode_1_Pipeline_VITIS_LOOP_51_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_51_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_1_Pipeline_VITIS_LOOP_51_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_1_Pipeline_3_fu_70", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "fp2_decode_1_Pipeline_3",
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
			{"Name" : "temp_72", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_1_Pipeline_3_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_1_Pipeline_4_fu_76", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "fp2_decode_1_Pipeline_4",
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
			{"Name" : "temp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_1_Pipeline_4_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_1_Pipeline_VITIS_LOOP_53_2_fu_82", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "fp2_decode_1_Pipeline_VITIS_LOOP_53_2",
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
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2_decode_1_Pipeline_VITIS_LOOP_53_2_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_fu_92", "Parent" : "0", "Child" : ["12", "15"],
		"CDFG" : "mp_mul_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114", "Port" : "PKB", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "15", "SubInstance" : "grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129", "Port" : "PKB", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Montgomery_R2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114", "Port" : "Montgomery_R2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "15", "SubInstance" : "grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129", "Port" : "Montgomery_R2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_fu_92.grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114", "Parent" : "11", "Child" : ["13", "14"],
		"CDFG" : "mp_mul_6_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_74_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "Montgomery_R2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_fu_92.grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114.Montgomery_R2_1_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_fu_92.grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_fu_92.grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129", "Parent" : "11", "Child" : ["16", "17"],
		"CDFG" : "mp_mul_6_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Montgomery_R2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_fu_92.grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129.Montgomery_R2_1_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_fu_92.grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101", "Parent" : "0", "Child" : ["19", "21", "24", "27", "28", "29", "30"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_180_1_fu_181", "Port" : "PKB", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "21", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_185_3_fu_187", "Port" : "PKB", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "24", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_206_5_fu_203", "Port" : "PKB", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_185_3_fu_187", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "24", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_206_5_fu_203", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.grp_rdc_mont_1_Pipeline_VITIS_LOOP_180_1_fu_181", "Parent" : "18", "Child" : ["20"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.grp_rdc_mont_1_Pipeline_VITIS_LOOP_180_1_fu_181.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.grp_rdc_mont_1_Pipeline_VITIS_LOOP_185_3_fu_187", "Parent" : "18", "Child" : ["22", "23"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.grp_rdc_mont_1_Pipeline_VITIS_LOOP_185_3_fu_187.p503p1_1_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.grp_rdc_mont_1_Pipeline_VITIS_LOOP_185_3_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.grp_rdc_mont_1_Pipeline_VITIS_LOOP_206_5_fu_203", "Parent" : "18", "Child" : ["25", "26"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_206_5",
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
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.grp_rdc_mont_1_Pipeline_VITIS_LOOP_206_5_fu_203.p503p1_1_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.grp_rdc_mont_1_Pipeline_VITIS_LOOP_206_5_fu_203.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.mul_32ns_32ns_64_2_1_U1406", "Parent" : "18"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.mul_32ns_32ns_64_2_1_U1407", "Parent" : "18"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.mul_32ns_32ns_64_2_1_U1408", "Parent" : "18"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_1_fu_101.mul_32ns_32ns_64_2_1_U1409", "Parent" : "18"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_862_fu_110", "Parent" : "0", "Child" : ["32", "34", "36", "37", "38", "39"],
		"CDFG" : "mp_mul_862",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_mp_mul_862_Pipeline_VITIS_LOOP_144_2_fu_124", "Port" : "PKB", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "34", "SubInstance" : "grp_mp_mul_862_Pipeline_VITIS_LOOP_157_4_fu_140", "Port" : "PKB", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_mp_mul_862_Pipeline_VITIS_LOOP_144_2_fu_124", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "34", "SubInstance" : "grp_mp_mul_862_Pipeline_VITIS_LOOP_157_4_fu_140", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_862_fu_110.grp_mp_mul_862_Pipeline_VITIS_LOOP_144_2_fu_124", "Parent" : "31", "Child" : ["33"],
		"CDFG" : "mp_mul_862_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_68_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_862_fu_110.grp_mp_mul_862_Pipeline_VITIS_LOOP_144_2_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_862_fu_110.grp_mp_mul_862_Pipeline_VITIS_LOOP_157_4_fu_140", "Parent" : "31", "Child" : ["35"],
		"CDFG" : "mp_mul_862_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_862_fu_110.grp_mp_mul_862_Pipeline_VITIS_LOOP_157_4_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_862_fu_110.mul_32ns_32ns_64_2_1_U2601", "Parent" : "31"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_862_fu_110.mul_32ns_32ns_64_2_1_U2602", "Parent" : "31"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_862_fu_110.mul_32ns_32ns_64_2_1_U2603", "Parent" : "31"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_862_fu_110.mul_32ns_32ns_64_2_1_U2604", "Parent" : "31"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121", "Parent" : "0", "Child" : ["41", "43", "46", "49", "50", "51", "52"],
		"CDFG" : "rdc_mont_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_180_1_fu_196", "Port" : "PKB", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "43", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_185_3_fu_205", "Port" : "PKB", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "46", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_206_5_fu_222", "Port" : "PKB", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_185_3_fu_205", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "46", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_206_5_fu_222", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.grp_rdc_mont_2_Pipeline_VITIS_LOOP_180_1_fu_196", "Parent" : "40", "Child" : ["42"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.grp_rdc_mont_2_Pipeline_VITIS_LOOP_180_1_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.grp_rdc_mont_2_Pipeline_VITIS_LOOP_185_3_fu_205", "Parent" : "40", "Child" : ["44", "45"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.grp_rdc_mont_2_Pipeline_VITIS_LOOP_185_3_fu_205.p503p1_1_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.grp_rdc_mont_2_Pipeline_VITIS_LOOP_185_3_fu_205.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.grp_rdc_mont_2_Pipeline_VITIS_LOOP_206_5_fu_222", "Parent" : "40", "Child" : ["47", "48"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_206_5",
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
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.grp_rdc_mont_2_Pipeline_VITIS_LOOP_206_5_fu_222.p503p1_1_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.grp_rdc_mont_2_Pipeline_VITIS_LOOP_206_5_fu_222.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.mul_32ns_32ns_64_2_1_U1477", "Parent" : "40"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.mul_32ns_32ns_64_2_1_U1478", "Parent" : "40"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.mul_32ns_32ns_64_2_1_U1479", "Parent" : "40"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_2_fu_121.mul_32ns_32ns_64_2_1_U1480", "Parent" : "40"}]}


set ArgLastReadFirstWriteLatency {
	fp2_decode_1 {
		gmem2 {Type I LastRead 10 FirstWrite -1}
		enc {Type I LastRead 2 FirstWrite -1}
		PKB {Type IO LastRead 0 FirstWrite -1}
		Montgomery_R2_1 {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	fp2_decode_1_Pipeline_VITIS_LOOP_51_1 {
		PKB {Type O LastRead -1 FirstWrite 0}}
	fp2_decode_1_Pipeline_3 {
		temp_72 {Type O LastRead -1 FirstWrite 0}}
	fp2_decode_1_Pipeline_4 {
		temp {Type O LastRead -1 FirstWrite 0}}
	fp2_decode_1_Pipeline_VITIS_LOOP_53_2 {
		enc {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type I LastRead 10 FirstWrite -1}
		PKB {Type O LastRead -1 FirstWrite 10}}
	mp_mul_6 {
		PKB {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}
		Montgomery_R2_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_6_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_101_out {Type O LastRead -1 FirstWrite 7}
		u_74_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}
		Montgomery_R2_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_6_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}
		Montgomery_R2_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1 {
		ma {Type I LastRead 5 FirstWrite -1}
		PKB {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_180_1 {
		PKB {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_1_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_95_out {Type O LastRead -1 FirstWrite 8}
		u_45_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_46 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_99_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_25_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_862 {
		PKB {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_862_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_87_out {Type O LastRead -1 FirstWrite 7}
		u_68_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_862_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	rdc_mont_2 {
		ma {Type I LastRead 5 FirstWrite -1}
		PKB {Type IO LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_180_1 {
		PKB {Type O LastRead -1 FirstWrite 0}
		p_cast {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_39_out {Type O LastRead -1 FirstWrite 8}
		u_35_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_43_out {Type O LastRead -1 FirstWrite 8}
		u_39_out {Type O LastRead -1 FirstWrite 8}
		t_20_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1082", "Max" : "1602"}
	, {"Name" : "Interval", "Min" : "1082", "Max" : "1602"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem2_0_AWVALID VALID 1 1 }  { m_axi_gmem2_0_AWREADY READY 0 1 }  { m_axi_gmem2_0_AWADDR ADDR 1 32 }  { m_axi_gmem2_0_AWID ID 1 1 }  { m_axi_gmem2_0_AWLEN SIZE 1 32 }  { m_axi_gmem2_0_AWSIZE BURST 1 3 }  { m_axi_gmem2_0_AWBURST LOCK 1 2 }  { m_axi_gmem2_0_AWLOCK CACHE 1 2 }  { m_axi_gmem2_0_AWCACHE PROT 1 4 }  { m_axi_gmem2_0_AWPROT QOS 1 3 }  { m_axi_gmem2_0_AWQOS REGION 1 4 }  { m_axi_gmem2_0_AWREGION USER 1 4 }  { m_axi_gmem2_0_AWUSER DATA 1 1 }  { m_axi_gmem2_0_WVALID VALID 1 1 }  { m_axi_gmem2_0_WREADY READY 0 1 }  { m_axi_gmem2_0_WDATA FIFONUM 1 8 }  { m_axi_gmem2_0_WSTRB STRB 1 1 }  { m_axi_gmem2_0_WLAST LAST 1 1 }  { m_axi_gmem2_0_WID ID 1 1 }  { m_axi_gmem2_0_WUSER DATA 1 1 }  { m_axi_gmem2_0_ARVALID VALID 1 1 }  { m_axi_gmem2_0_ARREADY READY 0 1 }  { m_axi_gmem2_0_ARADDR ADDR 1 32 }  { m_axi_gmem2_0_ARID ID 1 1 }  { m_axi_gmem2_0_ARLEN SIZE 1 32 }  { m_axi_gmem2_0_ARSIZE BURST 1 3 }  { m_axi_gmem2_0_ARBURST LOCK 1 2 }  { m_axi_gmem2_0_ARLOCK CACHE 1 2 }  { m_axi_gmem2_0_ARCACHE PROT 1 4 }  { m_axi_gmem2_0_ARPROT QOS 1 3 }  { m_axi_gmem2_0_ARQOS REGION 1 4 }  { m_axi_gmem2_0_ARREGION USER 1 4 }  { m_axi_gmem2_0_ARUSER DATA 1 1 }  { m_axi_gmem2_0_RVALID VALID 0 1 }  { m_axi_gmem2_0_RREADY READY 1 1 }  { m_axi_gmem2_0_RDATA FIFONUM 0 8 }  { m_axi_gmem2_0_RLAST LAST 0 1 }  { m_axi_gmem2_0_RID ID 0 1 }  { m_axi_gmem2_0_RFIFONUM LEN 0 11 }  { m_axi_gmem2_0_RUSER DATA 0 1 }  { m_axi_gmem2_0_RRESP RESP 0 2 }  { m_axi_gmem2_0_BVALID VALID 0 1 }  { m_axi_gmem2_0_BREADY READY 1 1 }  { m_axi_gmem2_0_BRESP RESP 0 2 }  { m_axi_gmem2_0_BID ID 0 1 }  { m_axi_gmem2_0_BUSER DATA 0 1 } } }
	enc { ap_none {  { enc in_data 0 32 } } }
	PKB { ap_memory {  { PKB_address0 mem_address 1 6 }  { PKB_ce0 mem_ce 1 1 }  { PKB_we0 mem_we 1 8 }  { PKB_d0 mem_din 1 64 }  { PKB_q0 mem_dout 0 64 } } }
	Montgomery_R2_1 { ap_memory {  { Montgomery_R2_1_address0 mem_address 1 3 }  { Montgomery_R2_1_ce0 mem_ce 1 1 }  { Montgomery_R2_1_q0 mem_dout 0 64 } } }
}
