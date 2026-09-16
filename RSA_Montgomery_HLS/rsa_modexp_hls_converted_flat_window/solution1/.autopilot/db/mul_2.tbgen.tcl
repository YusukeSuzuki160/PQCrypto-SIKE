set moduleName mul_2
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
set C_modelName {mul.2}
set C_modelType { int 512 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ b_read int 32 regular  }
	{ b_read_16 int 32 regular  }
	{ b_read_17 int 32 regular  }
	{ b_read_18 int 32 regular  }
	{ b_read_19 int 32 regular  }
	{ b_read_20 int 32 regular  }
	{ b_read_21 int 32 regular  }
	{ b_read_22 int 32 regular  }
	{ b_read_23 int 32 regular  }
	{ b_read_24 int 32 regular  }
	{ b_read_25 int 32 regular  }
	{ b_read_26 int 32 regular  }
	{ b_read_27 int 32 regular  }
	{ b_read_28 int 32 regular  }
	{ b_read_29 int 32 regular  }
	{ b_read_30 int 32 regular  }
	{ gmem int 32 regular {axi_master 0}  }
	{ mod_r int 64 regular  }
	{ mprime int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control_r"},"direction": "READONLY"},{"cName": "d","offset": { "type": "dynamic","port_name": "d","bundle": "control_r"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control_r"},"direction": "READONLY"},{"cName": "r2m","offset": { "type": "dynamic","port_name": "r2m","bundle": "control_r"},"direction": "READONLY"},{"cName": "p","offset": { "type": "dynamic","port_name": "p","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "mod_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 95
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 17 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 17 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 17 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 17 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 17 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 17 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 17 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 17 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 17 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 17 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ a_address0 sc_out sc_lv 4 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_q0 sc_in sc_lv 32 signal 0 } 
	{ a_address1 sc_out sc_lv 4 signal 0 } 
	{ a_ce1 sc_out sc_logic 1 signal 0 } 
	{ a_q1 sc_in sc_lv 32 signal 0 } 
	{ b_read sc_in sc_lv 32 signal 1 } 
	{ b_read_16 sc_in sc_lv 32 signal 2 } 
	{ b_read_17 sc_in sc_lv 32 signal 3 } 
	{ b_read_18 sc_in sc_lv 32 signal 4 } 
	{ b_read_19 sc_in sc_lv 32 signal 5 } 
	{ b_read_20 sc_in sc_lv 32 signal 6 } 
	{ b_read_21 sc_in sc_lv 32 signal 7 } 
	{ b_read_22 sc_in sc_lv 32 signal 8 } 
	{ b_read_23 sc_in sc_lv 32 signal 9 } 
	{ b_read_24 sc_in sc_lv 32 signal 10 } 
	{ b_read_25 sc_in sc_lv 32 signal 11 } 
	{ b_read_26 sc_in sc_lv 32 signal 12 } 
	{ b_read_27 sc_in sc_lv 32 signal 13 } 
	{ b_read_28 sc_in sc_lv 32 signal 14 } 
	{ b_read_29 sc_in sc_lv 32 signal 15 } 
	{ b_read_30 sc_in sc_lv 32 signal 16 } 
	{ mod_r sc_in sc_lv 64 signal 18 } 
	{ mprime sc_in sc_lv 32 signal 19 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
	{ ap_return_8 sc_out sc_lv 32 signal -1 } 
	{ ap_return_9 sc_out sc_lv 32 signal -1 } 
	{ ap_return_10 sc_out sc_lv 32 signal -1 } 
	{ ap_return_11 sc_out sc_lv 32 signal -1 } 
	{ ap_return_12 sc_out sc_lv 32 signal -1 } 
	{ ap_return_13 sc_out sc_lv 32 signal -1 } 
	{ ap_return_14 sc_out sc_lv 32 signal -1 } 
	{ ap_return_15 sc_out sc_lv 32 signal -1 } 
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
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "b_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read", "role": "default" }} , 
 	{ "name": "b_read_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_16", "role": "default" }} , 
 	{ "name": "b_read_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_17", "role": "default" }} , 
 	{ "name": "b_read_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_18", "role": "default" }} , 
 	{ "name": "b_read_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_19", "role": "default" }} , 
 	{ "name": "b_read_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_20", "role": "default" }} , 
 	{ "name": "b_read_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_21", "role": "default" }} , 
 	{ "name": "b_read_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_22", "role": "default" }} , 
 	{ "name": "b_read_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_23", "role": "default" }} , 
 	{ "name": "b_read_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_24", "role": "default" }} , 
 	{ "name": "b_read_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_25", "role": "default" }} , 
 	{ "name": "b_read_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_26", "role": "default" }} , 
 	{ "name": "b_read_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_27", "role": "default" }} , 
 	{ "name": "b_read_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_28", "role": "default" }} , 
 	{ "name": "b_read_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_29", "role": "default" }} , 
 	{ "name": "b_read_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_30", "role": "default" }} , 
 	{ "name": "mod_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mod_r", "role": "default" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "gmem_blk_n_AR", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_blk_n_AR", "role": "default" }} , 
 	{ "name": "gmem_blk_n_R", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_blk_n_R", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "40", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}]},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U129", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U130", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U131", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U132", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U133", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U134", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U135", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U136", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U137", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U138", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U139", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U140", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U141", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U142", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U143", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U144", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U145", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U146", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U147", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U148", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U149", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U150", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U151", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U152", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U153", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U154", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U155", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U156", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U157", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U158", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U159", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U160", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U161", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U162", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U163", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_2 {
		a {Type I LastRead 8 FirstWrite -1}
		b_read {Type I LastRead 1 FirstWrite -1}
		b_read_16 {Type I LastRead 1 FirstWrite -1}
		b_read_17 {Type I LastRead 1 FirstWrite -1}
		b_read_18 {Type I LastRead 1 FirstWrite -1}
		b_read_19 {Type I LastRead 1 FirstWrite -1}
		b_read_20 {Type I LastRead 1 FirstWrite -1}
		b_read_21 {Type I LastRead 1 FirstWrite -1}
		b_read_22 {Type I LastRead 1 FirstWrite -1}
		b_read_23 {Type I LastRead 1 FirstWrite -1}
		b_read_24 {Type I LastRead 1 FirstWrite -1}
		b_read_25 {Type I LastRead 1 FirstWrite -1}
		b_read_26 {Type I LastRead 2 FirstWrite -1}
		b_read_27 {Type I LastRead 4 FirstWrite -1}
		b_read_28 {Type I LastRead 5 FirstWrite -1}
		b_read_29 {Type I LastRead 6 FirstWrite -1}
		b_read_30 {Type I LastRead 8 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "40", "Max" : "40"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 4 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 32 }  { a_address1 MemPortADDR2 1 4 }  { a_ce1 MemPortCE2 1 1 }  { a_q1 MemPortDOUT2 0 32 } } }
	b_read { ap_none {  { b_read in_data 0 32 } } }
	b_read_16 { ap_none {  { b_read_16 in_data 0 32 } } }
	b_read_17 { ap_none {  { b_read_17 in_data 0 32 } } }
	b_read_18 { ap_none {  { b_read_18 in_data 0 32 } } }
	b_read_19 { ap_none {  { b_read_19 in_data 0 32 } } }
	b_read_20 { ap_none {  { b_read_20 in_data 0 32 } } }
	b_read_21 { ap_none {  { b_read_21 in_data 0 32 } } }
	b_read_22 { ap_none {  { b_read_22 in_data 0 32 } } }
	b_read_23 { ap_none {  { b_read_23 in_data 0 32 } } }
	b_read_24 { ap_none {  { b_read_24 in_data 0 32 } } }
	b_read_25 { ap_none {  { b_read_25 in_data 0 32 } } }
	b_read_26 { ap_none {  { b_read_26 in_data 0 32 } } }
	b_read_27 { ap_none {  { b_read_27 in_data 0 32 } } }
	b_read_28 { ap_none {  { b_read_28 in_data 0 32 } } }
	b_read_29 { ap_none {  { b_read_29 in_data 0 32 } } }
	b_read_30 { ap_none {  { b_read_30 in_data 0 32 } } }
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	mod_r { ap_none {  { mod_r in_data 0 64 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
}
