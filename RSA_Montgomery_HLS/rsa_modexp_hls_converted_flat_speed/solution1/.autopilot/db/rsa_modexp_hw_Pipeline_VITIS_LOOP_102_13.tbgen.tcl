set moduleName rsa_modexp_hw_Pipeline_VITIS_LOOP_102_13
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 19
set C_modelName {rsa_modexp_hw_Pipeline_VITIS_LOOP_102_13}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict zrun { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ gmem int 32 regular {axi_master 0}  }
	{ zrun int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ or_ln95_15 int 32 regular  }
	{ or_ln95_31 int 32 regular  }
	{ or_ln95_47 int 32 regular  }
	{ or_ln95_63 int 32 regular  }
	{ or_ln95_79 int 32 regular  }
	{ or_ln95_95 int 32 regular  }
	{ or_ln95_111 int 32 regular  }
	{ or_ln95_127 int 32 regular  }
	{ or_ln95_143 int 32 regular  }
	{ or_ln95_159 int 32 regular  }
	{ or_ln95_175 int 32 regular  }
	{ or_ln95_191 int 32 regular  }
	{ or_ln95_207 int 32 regular  }
	{ or_ln95_223 int 32 regular  }
	{ or_ln95_239 int 32 regular  }
	{ or_ln95_255 int 32 regular  }
	{ m int 64 regular  }
	{ mprime int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control_r"},"direction": "READONLY"},{"cName": "d","offset": { "type": "dynamic","port_name": "d","bundle": "control_r"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control_r"},"direction": "READONLY"},{"cName": "r2m","offset": { "type": "dynamic","port_name": "r2m","bundle": "control_r"},"direction": "READONLY"},{"cName": "p","offset": { "type": "dynamic","port_name": "p","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "zrun", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "or_ln95_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_63", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_79", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_95", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_111", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_127", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_143", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_159", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_175", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_191", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_207", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_223", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_239", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "or_ln95_255", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 80
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
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 0 } 
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
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ zrun_address0 sc_out sc_lv 4 signal 1 } 
	{ zrun_ce0 sc_out sc_logic 1 signal 1 } 
	{ zrun_we0 sc_out sc_logic 1 signal 1 } 
	{ zrun_d0 sc_out sc_lv 32 signal 1 } 
	{ zrun_q0 sc_in sc_lv 32 signal 1 } 
	{ zrun_address1 sc_out sc_lv 4 signal 1 } 
	{ zrun_ce1 sc_out sc_logic 1 signal 1 } 
	{ zrun_we1 sc_out sc_logic 1 signal 1 } 
	{ zrun_d1 sc_out sc_lv 32 signal 1 } 
	{ zrun_q1 sc_in sc_lv 32 signal 1 } 
	{ or_ln95_15 sc_in sc_lv 32 signal 2 } 
	{ or_ln95_31 sc_in sc_lv 32 signal 3 } 
	{ or_ln95_47 sc_in sc_lv 32 signal 4 } 
	{ or_ln95_63 sc_in sc_lv 32 signal 5 } 
	{ or_ln95_79 sc_in sc_lv 32 signal 6 } 
	{ or_ln95_95 sc_in sc_lv 32 signal 7 } 
	{ or_ln95_111 sc_in sc_lv 32 signal 8 } 
	{ or_ln95_127 sc_in sc_lv 32 signal 9 } 
	{ or_ln95_143 sc_in sc_lv 32 signal 10 } 
	{ or_ln95_159 sc_in sc_lv 32 signal 11 } 
	{ or_ln95_175 sc_in sc_lv 32 signal 12 } 
	{ or_ln95_191 sc_in sc_lv 32 signal 13 } 
	{ or_ln95_207 sc_in sc_lv 32 signal 14 } 
	{ or_ln95_223 sc_in sc_lv 32 signal 15 } 
	{ or_ln95_239 sc_in sc_lv 32 signal 16 } 
	{ or_ln95_255 sc_in sc_lv 32 signal 17 } 
	{ m sc_in sc_lv 64 signal 18 } 
	{ mprime sc_in sc_lv 32 signal 19 } 
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
 	{ "name": "zrun_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zrun", "role": "address0" }} , 
 	{ "name": "zrun_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zrun", "role": "ce0" }} , 
 	{ "name": "zrun_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zrun", "role": "we0" }} , 
 	{ "name": "zrun_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zrun", "role": "d0" }} , 
 	{ "name": "zrun_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zrun", "role": "q0" }} , 
 	{ "name": "zrun_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zrun", "role": "address1" }} , 
 	{ "name": "zrun_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zrun", "role": "ce1" }} , 
 	{ "name": "zrun_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zrun", "role": "we1" }} , 
 	{ "name": "zrun_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zrun", "role": "d1" }} , 
 	{ "name": "zrun_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zrun", "role": "q1" }} , 
 	{ "name": "or_ln95_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_15", "role": "default" }} , 
 	{ "name": "or_ln95_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_31", "role": "default" }} , 
 	{ "name": "or_ln95_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_47", "role": "default" }} , 
 	{ "name": "or_ln95_63", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_63", "role": "default" }} , 
 	{ "name": "or_ln95_79", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_79", "role": "default" }} , 
 	{ "name": "or_ln95_95", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_95", "role": "default" }} , 
 	{ "name": "or_ln95_111", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_111", "role": "default" }} , 
 	{ "name": "or_ln95_127", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_127", "role": "default" }} , 
 	{ "name": "or_ln95_143", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_143", "role": "default" }} , 
 	{ "name": "or_ln95_159", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_159", "role": "default" }} , 
 	{ "name": "or_ln95_175", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_175", "role": "default" }} , 
 	{ "name": "or_ln95_191", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_191", "role": "default" }} , 
 	{ "name": "or_ln95_207", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_207", "role": "default" }} , 
 	{ "name": "or_ln95_223", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_223", "role": "default" }} , 
 	{ "name": "or_ln95_239", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_239", "role": "default" }} , 
 	{ "name": "or_ln95_255", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "or_ln95_255", "role": "default" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "38"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_102_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "292", "EstimateLatencyMax" : "292",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_montMult_words_9_12_1_fu_381", "Port" : "gmem", "Inst_start_state" : "10", "Inst_end_state" : "50"}]},
			{"Name" : "zrun", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_montMult_words_9_12_1_fu_381", "Port" : "x", "Inst_start_state" : "10", "Inst_end_state" : "50"}]},
			{"Name" : "or_ln95_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_127", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_143", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_159", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_175", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_191", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_207", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_223", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_239", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln95_255", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_montMult_words_9_12_1_fu_381", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "58", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state58", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state58_blk", "QuitState" : "ap_ST_fsm_state58", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state58_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "montMult_words_9_12_1",
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
			{"Name" : "x", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_1_fu_170", "Port" : "a"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_1_fu_170", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_1_fu_170", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "mul_1",
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U169", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U170", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U171", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U172", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U173", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U174", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U175", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U176", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U177", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U178", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U179", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U180", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U181", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U182", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U183", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U184", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U185", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U186", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U187", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U188", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U189", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U190", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U191", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U192", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U193", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U194", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U195", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U196", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U197", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U198", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U199", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U200", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32ns_32ns_64_1_1_U201", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32s_32s_32_1_1_U202", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_9_12_1_fu_381.grp_mul_1_fu_170.mul_32s_32s_32_1_1_U203", "Parent" : "2"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rsa_modexp_hw_Pipeline_VITIS_LOOP_102_13 {
		gmem {Type I LastRead 23 FirstWrite -1}
		zrun {Type IO LastRead 8 FirstWrite -1}
		or_ln95_15 {Type I LastRead 0 FirstWrite -1}
		or_ln95_31 {Type I LastRead 0 FirstWrite -1}
		or_ln95_47 {Type I LastRead 0 FirstWrite -1}
		or_ln95_63 {Type I LastRead 0 FirstWrite -1}
		or_ln95_79 {Type I LastRead 0 FirstWrite -1}
		or_ln95_95 {Type I LastRead 0 FirstWrite -1}
		or_ln95_111 {Type I LastRead 0 FirstWrite -1}
		or_ln95_127 {Type I LastRead 0 FirstWrite -1}
		or_ln95_143 {Type I LastRead 0 FirstWrite -1}
		or_ln95_159 {Type I LastRead 0 FirstWrite -1}
		or_ln95_175 {Type I LastRead 0 FirstWrite -1}
		or_ln95_191 {Type I LastRead 0 FirstWrite -1}
		or_ln95_207 {Type I LastRead 0 FirstWrite -1}
		or_ln95_223 {Type I LastRead 0 FirstWrite -1}
		or_ln95_239 {Type I LastRead 0 FirstWrite -1}
		or_ln95_255 {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}
	montMult_words_9_12_1 {
		x {Type I LastRead 8 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}
	mul_1 {
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
	{"Name" : "Latency", "Min" : "292", "Max" : "292"}
	, {"Name" : "Interval", "Min" : "292", "Max" : "292"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	zrun { ap_memory {  { zrun_address0 mem_address 1 4 }  { zrun_ce0 mem_ce 1 1 }  { zrun_we0 mem_we 1 1 }  { zrun_d0 mem_din 1 32 }  { zrun_q0 mem_dout 0 32 }  { zrun_address1 MemPortADDR2 1 4 }  { zrun_ce1 MemPortCE2 1 1 }  { zrun_we1 MemPortWE2 1 1 }  { zrun_d1 MemPortDIN2 1 32 }  { zrun_q1 MemPortDOUT2 0 32 } } }
	or_ln95_15 { ap_none {  { or_ln95_15 in_data 0 32 } } }
	or_ln95_31 { ap_none {  { or_ln95_31 in_data 0 32 } } }
	or_ln95_47 { ap_none {  { or_ln95_47 in_data 0 32 } } }
	or_ln95_63 { ap_none {  { or_ln95_63 in_data 0 32 } } }
	or_ln95_79 { ap_none {  { or_ln95_79 in_data 0 32 } } }
	or_ln95_95 { ap_none {  { or_ln95_95 in_data 0 32 } } }
	or_ln95_111 { ap_none {  { or_ln95_111 in_data 0 32 } } }
	or_ln95_127 { ap_none {  { or_ln95_127 in_data 0 32 } } }
	or_ln95_143 { ap_none {  { or_ln95_143 in_data 0 32 } } }
	or_ln95_159 { ap_none {  { or_ln95_159 in_data 0 32 } } }
	or_ln95_175 { ap_none {  { or_ln95_175 in_data 0 32 } } }
	or_ln95_191 { ap_none {  { or_ln95_191 in_data 0 32 } } }
	or_ln95_207 { ap_none {  { or_ln95_207 in_data 0 32 } } }
	or_ln95_223 { ap_none {  { or_ln95_223 in_data 0 32 } } }
	or_ln95_239 { ap_none {  { or_ln95_239 in_data 0 32 } } }
	or_ln95_255 { ap_none {  { or_ln95_255 in_data 0 32 } } }
	m { ap_none {  { m in_data 0 64 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
}
