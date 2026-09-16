set moduleName montMult_words_2
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
set cdfgNum 25
set C_modelName {montMult_words.2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict x { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict y { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict out_r { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ x int 32 regular {array 32 { 1 1 } 1 1 }  }
	{ x_offset int 1 regular  }
	{ y int 32 regular {array 32 { 1 1 } 1 1 }  }
	{ gmem int 32 regular {axi_master 0}  }
	{ m int 64 regular  }
	{ mprime int 32 regular  }
	{ out_r int 32 regular {array 32 { 0 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control_r"},"direction": "READONLY"},{"cName": "d","offset": { "type": "dynamic","port_name": "d","bundle": "control_r"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control_r"},"direction": "READONLY"},{"cName": "r2m","offset": { "type": "dynamic","port_name": "r2m","bundle": "control_r"},"direction": "READONLY"},{"cName": "p","offset": { "type": "dynamic","port_name": "p","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ x_address0 sc_out sc_lv 5 signal 0 } 
	{ x_ce0 sc_out sc_logic 1 signal 0 } 
	{ x_q0 sc_in sc_lv 32 signal 0 } 
	{ x_address1 sc_out sc_lv 5 signal 0 } 
	{ x_ce1 sc_out sc_logic 1 signal 0 } 
	{ x_q1 sc_in sc_lv 32 signal 0 } 
	{ x_offset sc_in sc_lv 1 signal 1 } 
	{ y_address0 sc_out sc_lv 5 signal 2 } 
	{ y_ce0 sc_out sc_logic 1 signal 2 } 
	{ y_q0 sc_in sc_lv 32 signal 2 } 
	{ y_address1 sc_out sc_lv 5 signal 2 } 
	{ y_ce1 sc_out sc_logic 1 signal 2 } 
	{ y_q1 sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ m sc_in sc_lv 64 signal 4 } 
	{ mprime sc_in sc_lv 32 signal 5 } 
	{ out_r_address0 sc_out sc_lv 5 signal 6 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 6 } 
	{ out_r_we0 sc_out sc_logic 1 signal 6 } 
	{ out_r_d0 sc_out sc_lv 32 signal 6 } 
	{ out_r_address1 sc_out sc_lv 5 signal 6 } 
	{ out_r_ce1 sc_out sc_logic 1 signal 6 } 
	{ out_r_we1 sc_out sc_logic 1 signal 6 } 
	{ out_r_d1 sc_out sc_lv 32 signal 6 } 
	{ gmem_blk_n_AR sc_out sc_logic 1 signal -1 } 
	{ gmem_blk_n_R sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x", "role": "address1" }} , 
 	{ "name": "x_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce1" }} , 
 	{ "name": "x_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q1" }} , 
 	{ "name": "x_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_offset", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
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
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "0_WSTRB" }} , 
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
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "0_BUSER" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }} , 
 	{ "name": "out_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_r", "role": "address1" }} , 
 	{ "name": "out_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce1" }} , 
 	{ "name": "out_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we1" }} , 
 	{ "name": "out_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d1" }} , 
 	{ "name": "gmem_blk_n_AR", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_blk_n_AR", "role": "default" }} , 
 	{ "name": "gmem_blk_n_R", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_blk_n_R", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "montMult_words_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "47", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_13_fu_56", "Port" : "a"}]},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_13_fu_56", "Port" : "b"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_13_fu_56", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_13_fu_56", "Port" : "c"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_13_fu_56", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "mul_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "47", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}]},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U12", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U13", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U14", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U15", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U16", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U17", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U18", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U19", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U20", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U21", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U22", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U23", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U24", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U25", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U26", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U27", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U28", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U29", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U30", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U31", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U32", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U33", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U34", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U35", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U36", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U37", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U38", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U39", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U40", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U41", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U42", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U43", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U44", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32s_32s_32_1_1_U45", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_13_fu_56.mul_32s_32s_32_1_1_U46", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	montMult_words_2 {
		x {Type I LastRead 8 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 8 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 40}}
	mul_13 {
		a {Type I LastRead 8 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 8 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 40}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "47", "Max" : "47"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x { ap_memory {  { x_address0 mem_address 1 5 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 32 }  { x_address1 MemPortADDR2 1 5 }  { x_ce1 MemPortCE2 1 1 }  { x_q1 MemPortDOUT2 0 32 } } }
	x_offset { ap_none {  { x_offset in_data 0 1 } } }
	y { ap_memory {  { y_address0 mem_address 1 5 }  { y_ce0 mem_ce 1 1 }  { y_q0 mem_dout 0 32 }  { y_address1 MemPortADDR2 1 5 }  { y_ce1 MemPortCE2 1 1 }  { y_q1 MemPortDOUT2 0 32 } } }
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	m { ap_none {  { m in_data 0 64 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 5 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 }  { out_r_address1 MemPortADDR2 1 5 }  { out_r_ce1 MemPortCE2 1 1 }  { out_r_we1 MemPortWE2 1 1 }  { out_r_d1 MemPortDIN2 1 32 } } }
}
