set moduleName rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2
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
set C_modelName {rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict table_r { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ gmem int 32 regular {axi_master 0}  }
	{ opx_30_cast int 1 regular  }
	{ opx_29_cast int 1 regular  }
	{ opx_28_cast int 1 regular  }
	{ opx_27_cast int 1 regular  }
	{ opx_26_cast int 1 regular  }
	{ opx_25_cast int 1 regular  }
	{ opx_24_cast int 1 regular  }
	{ opx_23_cast int 1 regular  }
	{ opx_22_cast int 1 regular  }
	{ opx_21_cast int 1 regular  }
	{ opx_20_cast int 1 regular  }
	{ opx_19_cast int 1 regular  }
	{ opx_18_cast int 1 regular  }
	{ opx_17_cast int 1 regular  }
	{ opx_16_cast int 1 regular  }
	{ m int 64 regular  }
	{ mprime int 32 regular  }
	{ p_cast_cast466 int 62 regular  }
	{ p_cast464_cast467 int 62 regular  }
	{ p_cast468 int 63 regular  }
	{ p_cast469 int 63 regular  }
	{ p_cast470 int 63 regular  }
	{ p_cast471 int 63 regular  }
	{ p_cast472 int 63 regular  }
	{ p_cast473 int 63 regular  }
	{ p_cast474 int 63 regular  }
	{ p_cast475 int 63 regular  }
	{ p_cast476 int 63 regular  }
	{ p_cast477 int 63 regular  }
	{ p_cast478 int 63 regular  }
	{ p_cast479 int 63 regular  }
	{ p_cast480 int 63 regular  }
	{ p_cast481 int 63 regular  }
	{ p_cast482 int 63 regular  }
	{ p_cast483 int 63 regular  }
	{ p_cast484 int 63 regular  }
	{ p_cast485 int 63 regular  }
	{ p_cast486 int 63 regular  }
	{ p_cast487 int 63 regular  }
	{ p_cast488 int 63 regular  }
	{ p_cast489 int 63 regular  }
	{ p_cast490 int 63 regular  }
	{ p_cast491 int 63 regular  }
	{ p_cast492 int 63 regular  }
	{ p_cast493 int 63 regular  }
	{ p_cast494 int 63 regular  }
	{ p_cast495 int 63 regular  }
	{ p_cast496 int 63 regular  }
	{ p_cast497 int 63 regular  }
	{ table_r int 32 regular {array 256 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control_r"},"direction": "READONLY"},{"cName": "d","offset": { "type": "dynamic","port_name": "d","bundle": "control_r"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control_r"},"direction": "READONLY"},{"cName": "r2m","offset": { "type": "dynamic","port_name": "r2m","bundle": "control_r"},"direction": "READONLY"},{"cName": "p","offset": { "type": "dynamic","port_name": "p","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "opx_30_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_29_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_28_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_27_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_26_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_25_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_24_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_23_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_22_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_21_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_20_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_19_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_18_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_17_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "opx_16_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast_cast466", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast464_cast467", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast468", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast469", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast470", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast471", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast472", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast473", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast474", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast475", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast476", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast477", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast478", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast479", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast480", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast481", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast482", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast483", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast484", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast485", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast486", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast487", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast488", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast489", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast490", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast491", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast492", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast493", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast494", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast495", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast496", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast497", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "table_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 111
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
	{ opx_30_cast sc_in sc_lv 1 signal 1 } 
	{ opx_29_cast sc_in sc_lv 1 signal 2 } 
	{ opx_28_cast sc_in sc_lv 1 signal 3 } 
	{ opx_27_cast sc_in sc_lv 1 signal 4 } 
	{ opx_26_cast sc_in sc_lv 1 signal 5 } 
	{ opx_25_cast sc_in sc_lv 1 signal 6 } 
	{ opx_24_cast sc_in sc_lv 1 signal 7 } 
	{ opx_23_cast sc_in sc_lv 1 signal 8 } 
	{ opx_22_cast sc_in sc_lv 1 signal 9 } 
	{ opx_21_cast sc_in sc_lv 1 signal 10 } 
	{ opx_20_cast sc_in sc_lv 1 signal 11 } 
	{ opx_19_cast sc_in sc_lv 1 signal 12 } 
	{ opx_18_cast sc_in sc_lv 1 signal 13 } 
	{ opx_17_cast sc_in sc_lv 1 signal 14 } 
	{ opx_16_cast sc_in sc_lv 1 signal 15 } 
	{ m sc_in sc_lv 64 signal 16 } 
	{ mprime sc_in sc_lv 32 signal 17 } 
	{ p_cast_cast466 sc_in sc_lv 62 signal 18 } 
	{ p_cast464_cast467 sc_in sc_lv 62 signal 19 } 
	{ p_cast468 sc_in sc_lv 63 signal 20 } 
	{ p_cast469 sc_in sc_lv 63 signal 21 } 
	{ p_cast470 sc_in sc_lv 63 signal 22 } 
	{ p_cast471 sc_in sc_lv 63 signal 23 } 
	{ p_cast472 sc_in sc_lv 63 signal 24 } 
	{ p_cast473 sc_in sc_lv 63 signal 25 } 
	{ p_cast474 sc_in sc_lv 63 signal 26 } 
	{ p_cast475 sc_in sc_lv 63 signal 27 } 
	{ p_cast476 sc_in sc_lv 63 signal 28 } 
	{ p_cast477 sc_in sc_lv 63 signal 29 } 
	{ p_cast478 sc_in sc_lv 63 signal 30 } 
	{ p_cast479 sc_in sc_lv 63 signal 31 } 
	{ p_cast480 sc_in sc_lv 63 signal 32 } 
	{ p_cast481 sc_in sc_lv 63 signal 33 } 
	{ p_cast482 sc_in sc_lv 63 signal 34 } 
	{ p_cast483 sc_in sc_lv 63 signal 35 } 
	{ p_cast484 sc_in sc_lv 63 signal 36 } 
	{ p_cast485 sc_in sc_lv 63 signal 37 } 
	{ p_cast486 sc_in sc_lv 63 signal 38 } 
	{ p_cast487 sc_in sc_lv 63 signal 39 } 
	{ p_cast488 sc_in sc_lv 63 signal 40 } 
	{ p_cast489 sc_in sc_lv 63 signal 41 } 
	{ p_cast490 sc_in sc_lv 63 signal 42 } 
	{ p_cast491 sc_in sc_lv 63 signal 43 } 
	{ p_cast492 sc_in sc_lv 63 signal 44 } 
	{ p_cast493 sc_in sc_lv 63 signal 45 } 
	{ p_cast494 sc_in sc_lv 63 signal 46 } 
	{ p_cast495 sc_in sc_lv 63 signal 47 } 
	{ p_cast496 sc_in sc_lv 63 signal 48 } 
	{ p_cast497 sc_in sc_lv 63 signal 49 } 
	{ table_r_address0 sc_out sc_lv 8 signal 50 } 
	{ table_r_ce0 sc_out sc_logic 1 signal 50 } 
	{ table_r_we0 sc_out sc_logic 1 signal 50 } 
	{ table_r_d0 sc_out sc_lv 32 signal 50 } 
	{ table_r_q0 sc_in sc_lv 32 signal 50 } 
	{ table_r_address1 sc_out sc_lv 8 signal 50 } 
	{ table_r_ce1 sc_out sc_logic 1 signal 50 } 
	{ table_r_we1 sc_out sc_logic 1 signal 50 } 
	{ table_r_d1 sc_out sc_lv 32 signal 50 } 
	{ table_r_q1 sc_in sc_lv 32 signal 50 } 
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
 	{ "name": "opx_30_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_30_cast", "role": "default" }} , 
 	{ "name": "opx_29_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_29_cast", "role": "default" }} , 
 	{ "name": "opx_28_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_28_cast", "role": "default" }} , 
 	{ "name": "opx_27_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_27_cast", "role": "default" }} , 
 	{ "name": "opx_26_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_26_cast", "role": "default" }} , 
 	{ "name": "opx_25_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_25_cast", "role": "default" }} , 
 	{ "name": "opx_24_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_24_cast", "role": "default" }} , 
 	{ "name": "opx_23_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_23_cast", "role": "default" }} , 
 	{ "name": "opx_22_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_22_cast", "role": "default" }} , 
 	{ "name": "opx_21_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_21_cast", "role": "default" }} , 
 	{ "name": "opx_20_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_20_cast", "role": "default" }} , 
 	{ "name": "opx_19_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_19_cast", "role": "default" }} , 
 	{ "name": "opx_18_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_18_cast", "role": "default" }} , 
 	{ "name": "opx_17_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_17_cast", "role": "default" }} , 
 	{ "name": "opx_16_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "opx_16_cast", "role": "default" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }} , 
 	{ "name": "p_cast_cast466", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "p_cast_cast466", "role": "default" }} , 
 	{ "name": "p_cast464_cast467", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "p_cast464_cast467", "role": "default" }} , 
 	{ "name": "p_cast468", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast468", "role": "default" }} , 
 	{ "name": "p_cast469", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast469", "role": "default" }} , 
 	{ "name": "p_cast470", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast470", "role": "default" }} , 
 	{ "name": "p_cast471", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast471", "role": "default" }} , 
 	{ "name": "p_cast472", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast472", "role": "default" }} , 
 	{ "name": "p_cast473", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast473", "role": "default" }} , 
 	{ "name": "p_cast474", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast474", "role": "default" }} , 
 	{ "name": "p_cast475", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast475", "role": "default" }} , 
 	{ "name": "p_cast476", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast476", "role": "default" }} , 
 	{ "name": "p_cast477", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast477", "role": "default" }} , 
 	{ "name": "p_cast478", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast478", "role": "default" }} , 
 	{ "name": "p_cast479", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast479", "role": "default" }} , 
 	{ "name": "p_cast480", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast480", "role": "default" }} , 
 	{ "name": "p_cast481", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast481", "role": "default" }} , 
 	{ "name": "p_cast482", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast482", "role": "default" }} , 
 	{ "name": "p_cast483", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast483", "role": "default" }} , 
 	{ "name": "p_cast484", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast484", "role": "default" }} , 
 	{ "name": "p_cast485", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast485", "role": "default" }} , 
 	{ "name": "p_cast486", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast486", "role": "default" }} , 
 	{ "name": "p_cast487", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast487", "role": "default" }} , 
 	{ "name": "p_cast488", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast488", "role": "default" }} , 
 	{ "name": "p_cast489", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast489", "role": "default" }} , 
 	{ "name": "p_cast490", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast490", "role": "default" }} , 
 	{ "name": "p_cast491", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast491", "role": "default" }} , 
 	{ "name": "p_cast492", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast492", "role": "default" }} , 
 	{ "name": "p_cast493", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast493", "role": "default" }} , 
 	{ "name": "p_cast494", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast494", "role": "default" }} , 
 	{ "name": "p_cast495", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast495", "role": "default" }} , 
 	{ "name": "p_cast496", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast496", "role": "default" }} , 
 	{ "name": "p_cast497", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "p_cast497", "role": "default" }} , 
 	{ "name": "table_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "table_r", "role": "address0" }} , 
 	{ "name": "table_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "table_r", "role": "ce0" }} , 
 	{ "name": "table_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "table_r", "role": "we0" }} , 
 	{ "name": "table_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "table_r", "role": "d0" }} , 
 	{ "name": "table_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "table_r", "role": "q0" }} , 
 	{ "name": "table_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "table_r", "role": "address1" }} , 
 	{ "name": "table_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "table_r", "role": "ce1" }} , 
 	{ "name": "table_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "table_r", "role": "we1" }} , 
 	{ "name": "table_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "table_r", "role": "d1" }} , 
 	{ "name": "table_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "table_r", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "38"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1482", "EstimateLatencyMax" : "1482",
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
					{"ID" : "1", "SubInstance" : "grp_montMult_words_5_8_1_fu_1706", "Port" : "gmem", "Inst_start_state" : "43", "Inst_end_state" : "93"}]},
			{"Name" : "opx_30_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_29_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_28_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_27_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_26_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_25_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_24_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_23_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_22_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_21_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_20_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_19_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_18_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_17_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "opx_16_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast_cast466", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast464_cast467", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast468", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast469", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast470", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast471", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast472", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast473", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast474", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast475", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast476", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast477", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast478", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast479", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast480", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast481", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast482", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast483", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast484", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast485", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast486", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast487", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast488", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast489", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast490", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast491", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast492", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast493", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast494", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast495", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast496", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast497", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_r", "Type" : "Memory", "Direction" : "IO"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_montMult_words_5_8_1_fu_1706", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "92", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage8", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage8_subdone", "QuitState" : "ap_ST_fsm_pp0_stage8", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage8_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "montMult_words_5_8_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "50", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
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
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_fu_296", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_fu_296", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "50", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_read_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}]},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U2", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U3", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U4", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U5", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U6", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U7", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U8", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U9", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U10", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U11", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U12", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U13", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U14", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U15", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U16", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U17", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U18", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U19", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U20", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U21", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U22", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U23", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U24", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U25", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U26", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U27", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U28", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U29", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U30", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U31", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U32", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U33", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32ns_32ns_64_1_1_U34", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32s_32s_32_1_1_U35", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_5_8_1_fu_1706.grp_mul_fu_296.mul_32s_32s_32_1_1_U36", "Parent" : "2"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2 {
		gmem {Type I LastRead 40 FirstWrite -1}
		opx_30_cast {Type I LastRead 0 FirstWrite -1}
		opx_29_cast {Type I LastRead 0 FirstWrite -1}
		opx_28_cast {Type I LastRead 0 FirstWrite -1}
		opx_27_cast {Type I LastRead 0 FirstWrite -1}
		opx_26_cast {Type I LastRead 0 FirstWrite -1}
		opx_25_cast {Type I LastRead 0 FirstWrite -1}
		opx_24_cast {Type I LastRead 0 FirstWrite -1}
		opx_23_cast {Type I LastRead 0 FirstWrite -1}
		opx_22_cast {Type I LastRead 0 FirstWrite -1}
		opx_21_cast {Type I LastRead 0 FirstWrite -1}
		opx_20_cast {Type I LastRead 0 FirstWrite -1}
		opx_19_cast {Type I LastRead 0 FirstWrite -1}
		opx_18_cast {Type I LastRead 0 FirstWrite -1}
		opx_17_cast {Type I LastRead 0 FirstWrite -1}
		opx_16_cast {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		p_cast_cast466 {Type I LastRead 0 FirstWrite -1}
		p_cast464_cast467 {Type I LastRead 0 FirstWrite -1}
		p_cast468 {Type I LastRead 0 FirstWrite -1}
		p_cast469 {Type I LastRead 0 FirstWrite -1}
		p_cast470 {Type I LastRead 0 FirstWrite -1}
		p_cast471 {Type I LastRead 0 FirstWrite -1}
		p_cast472 {Type I LastRead 0 FirstWrite -1}
		p_cast473 {Type I LastRead 0 FirstWrite -1}
		p_cast474 {Type I LastRead 0 FirstWrite -1}
		p_cast475 {Type I LastRead 0 FirstWrite -1}
		p_cast476 {Type I LastRead 0 FirstWrite -1}
		p_cast477 {Type I LastRead 0 FirstWrite -1}
		p_cast478 {Type I LastRead 0 FirstWrite -1}
		p_cast479 {Type I LastRead 0 FirstWrite -1}
		p_cast480 {Type I LastRead 0 FirstWrite -1}
		p_cast481 {Type I LastRead 0 FirstWrite -1}
		p_cast482 {Type I LastRead 0 FirstWrite -1}
		p_cast483 {Type I LastRead 0 FirstWrite -1}
		p_cast484 {Type I LastRead 0 FirstWrite -1}
		p_cast485 {Type I LastRead 0 FirstWrite -1}
		p_cast486 {Type I LastRead 0 FirstWrite -1}
		p_cast487 {Type I LastRead 0 FirstWrite -1}
		p_cast488 {Type I LastRead 0 FirstWrite -1}
		p_cast489 {Type I LastRead 0 FirstWrite -1}
		p_cast490 {Type I LastRead 0 FirstWrite -1}
		p_cast491 {Type I LastRead 0 FirstWrite -1}
		p_cast492 {Type I LastRead 0 FirstWrite -1}
		p_cast493 {Type I LastRead 0 FirstWrite -1}
		p_cast494 {Type I LastRead 0 FirstWrite -1}
		p_cast495 {Type I LastRead 0 FirstWrite -1}
		p_cast496 {Type I LastRead 0 FirstWrite -1}
		p_cast497 {Type I LastRead 0 FirstWrite -1}
		table_r {Type IO LastRead 25 FirstWrite 93}}
	montMult_words_5_8_1 {
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
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}
	mul {
		a_read {Type I LastRead 0 FirstWrite -1}
		a_read_16 {Type I LastRead 0 FirstWrite -1}
		a_read_17 {Type I LastRead 0 FirstWrite -1}
		a_read_18 {Type I LastRead 0 FirstWrite -1}
		a_read_19 {Type I LastRead 0 FirstWrite -1}
		a_read_20 {Type I LastRead 0 FirstWrite -1}
		a_read_21 {Type I LastRead 0 FirstWrite -1}
		a_read_22 {Type I LastRead 0 FirstWrite -1}
		a_read_23 {Type I LastRead 1 FirstWrite -1}
		a_read_24 {Type I LastRead 1 FirstWrite -1}
		a_read_25 {Type I LastRead 1 FirstWrite -1}
		a_read_26 {Type I LastRead 2 FirstWrite -1}
		a_read_27 {Type I LastRead 2 FirstWrite -1}
		a_read_28 {Type I LastRead 3 FirstWrite -1}
		a_read_29 {Type I LastRead 3 FirstWrite -1}
		a_read_30 {Type I LastRead 4 FirstWrite -1}
		b_read {Type I LastRead 0 FirstWrite -1}
		b_read_46 {Type I LastRead 0 FirstWrite -1}
		b_read_47 {Type I LastRead 0 FirstWrite -1}
		b_read_48 {Type I LastRead 0 FirstWrite -1}
		b_read_49 {Type I LastRead 0 FirstWrite -1}
		b_read_50 {Type I LastRead 0 FirstWrite -1}
		b_read_51 {Type I LastRead 1 FirstWrite -1}
		b_read_52 {Type I LastRead 1 FirstWrite -1}
		b_read_53 {Type I LastRead 2 FirstWrite -1}
		b_read_54 {Type I LastRead 2 FirstWrite -1}
		b_read_55 {Type I LastRead 3 FirstWrite -1}
		b_read_56 {Type I LastRead 3 FirstWrite -1}
		b_read_57 {Type I LastRead 4 FirstWrite -1}
		b_read_58 {Type I LastRead 5 FirstWrite -1}
		b_read_59 {Type I LastRead 6 FirstWrite -1}
		b_read_60 {Type I LastRead 7 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1482", "Max" : "1482"}
	, {"Name" : "Interval", "Min" : "1482", "Max" : "1482"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	opx_30_cast { ap_none {  { opx_30_cast in_data 0 1 } } }
	opx_29_cast { ap_none {  { opx_29_cast in_data 0 1 } } }
	opx_28_cast { ap_none {  { opx_28_cast in_data 0 1 } } }
	opx_27_cast { ap_none {  { opx_27_cast in_data 0 1 } } }
	opx_26_cast { ap_none {  { opx_26_cast in_data 0 1 } } }
	opx_25_cast { ap_none {  { opx_25_cast in_data 0 1 } } }
	opx_24_cast { ap_none {  { opx_24_cast in_data 0 1 } } }
	opx_23_cast { ap_none {  { opx_23_cast in_data 0 1 } } }
	opx_22_cast { ap_none {  { opx_22_cast in_data 0 1 } } }
	opx_21_cast { ap_none {  { opx_21_cast in_data 0 1 } } }
	opx_20_cast { ap_none {  { opx_20_cast in_data 0 1 } } }
	opx_19_cast { ap_none {  { opx_19_cast in_data 0 1 } } }
	opx_18_cast { ap_none {  { opx_18_cast in_data 0 1 } } }
	opx_17_cast { ap_none {  { opx_17_cast in_data 0 1 } } }
	opx_16_cast { ap_none {  { opx_16_cast in_data 0 1 } } }
	m { ap_none {  { m in_data 0 64 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
	p_cast_cast466 { ap_none {  { p_cast_cast466 in_data 0 62 } } }
	p_cast464_cast467 { ap_none {  { p_cast464_cast467 in_data 0 62 } } }
	p_cast468 { ap_none {  { p_cast468 in_data 0 63 } } }
	p_cast469 { ap_none {  { p_cast469 in_data 0 63 } } }
	p_cast470 { ap_none {  { p_cast470 in_data 0 63 } } }
	p_cast471 { ap_none {  { p_cast471 in_data 0 63 } } }
	p_cast472 { ap_none {  { p_cast472 in_data 0 63 } } }
	p_cast473 { ap_none {  { p_cast473 in_data 0 63 } } }
	p_cast474 { ap_none {  { p_cast474 in_data 0 63 } } }
	p_cast475 { ap_none {  { p_cast475 in_data 0 63 } } }
	p_cast476 { ap_none {  { p_cast476 in_data 0 63 } } }
	p_cast477 { ap_none {  { p_cast477 in_data 0 63 } } }
	p_cast478 { ap_none {  { p_cast478 in_data 0 63 } } }
	p_cast479 { ap_none {  { p_cast479 in_data 0 63 } } }
	p_cast480 { ap_none {  { p_cast480 in_data 0 63 } } }
	p_cast481 { ap_none {  { p_cast481 in_data 0 63 } } }
	p_cast482 { ap_none {  { p_cast482 in_data 0 63 } } }
	p_cast483 { ap_none {  { p_cast483 in_data 0 63 } } }
	p_cast484 { ap_none {  { p_cast484 in_data 0 63 } } }
	p_cast485 { ap_none {  { p_cast485 in_data 0 63 } } }
	p_cast486 { ap_none {  { p_cast486 in_data 0 63 } } }
	p_cast487 { ap_none {  { p_cast487 in_data 0 63 } } }
	p_cast488 { ap_none {  { p_cast488 in_data 0 63 } } }
	p_cast489 { ap_none {  { p_cast489 in_data 0 63 } } }
	p_cast490 { ap_none {  { p_cast490 in_data 0 63 } } }
	p_cast491 { ap_none {  { p_cast491 in_data 0 63 } } }
	p_cast492 { ap_none {  { p_cast492 in_data 0 63 } } }
	p_cast493 { ap_none {  { p_cast493 in_data 0 63 } } }
	p_cast494 { ap_none {  { p_cast494 in_data 0 63 } } }
	p_cast495 { ap_none {  { p_cast495 in_data 0 63 } } }
	p_cast496 { ap_none {  { p_cast496 in_data 0 63 } } }
	p_cast497 { ap_none {  { p_cast497 in_data 0 63 } } }
	table_r { ap_memory {  { table_r_address0 mem_address 1 8 }  { table_r_ce0 mem_ce 1 1 }  { table_r_we0 mem_we 1 1 }  { table_r_d0 mem_din 1 32 }  { table_r_q0 mem_dout 0 32 }  { table_r_address1 MemPortADDR2 1 8 }  { table_r_ce1 MemPortCE2 1 1 }  { table_r_we1 MemPortWE2 1 1 }  { table_r_d1 MemPortDIN2 1 32 }  { table_r_q1 MemPortDOUT2 0 32 } } }
}
