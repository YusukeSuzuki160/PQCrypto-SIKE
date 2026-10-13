set moduleName dataflow_in_loop_VITIS_LOOP_77_8_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 23
set C_modelName {dataflow_in_loop_VITIS_LOOP_77_8.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict table_r { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict z { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ win int 8 regular  }
	{ gmem int 32 regular {axi_master 0}  }
	{ d int 64 regular  }
	{ table_r int 32 regular {array 256 { 1 1 } 1 1 }  }
	{ z int 32 regular {array 16 { 2 3 } 1 1 }  }
	{ m int 64 regular  }
	{ mprime int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "win", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control_r"},"direction": "READONLY"},{"cName": "d","offset": { "type": "dynamic","port_name": "d","bundle": "control_r"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control_r"},"direction": "READONLY"},{"cName": "r2m","offset": { "type": "dynamic","port_name": "r2m","bundle": "control_r"},"direction": "READONLY"},{"cName": "p","offset": { "type": "dynamic","port_name": "p","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "d", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "table_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 81
set portList { 
	{ win sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 1 } 
	{ d sc_in sc_lv 64 signal 2 } 
	{ table_r_address0 sc_out sc_lv 8 signal 3 } 
	{ table_r_ce0 sc_out sc_logic 1 signal 3 } 
	{ table_r_d0 sc_out sc_lv 32 signal 3 } 
	{ table_r_q0 sc_in sc_lv 32 signal 3 } 
	{ table_r_we0 sc_out sc_logic 1 signal 3 } 
	{ table_r_address1 sc_out sc_lv 8 signal 3 } 
	{ table_r_ce1 sc_out sc_logic 1 signal 3 } 
	{ table_r_d1 sc_out sc_lv 32 signal 3 } 
	{ table_r_q1 sc_in sc_lv 32 signal 3 } 
	{ table_r_we1 sc_out sc_logic 1 signal 3 } 
	{ z_address0 sc_out sc_lv 4 signal 4 } 
	{ z_ce0 sc_out sc_logic 1 signal 4 } 
	{ z_d0 sc_out sc_lv 32 signal 4 } 
	{ z_q0 sc_in sc_lv 32 signal 4 } 
	{ z_we0 sc_out sc_logic 1 signal 4 } 
	{ z_address1 sc_out sc_lv 4 signal 4 } 
	{ z_ce1 sc_out sc_logic 1 signal 4 } 
	{ z_d1 sc_out sc_lv 32 signal 4 } 
	{ z_q1 sc_in sc_lv 32 signal 4 } 
	{ z_we1 sc_out sc_logic 1 signal 4 } 
	{ m sc_in sc_lv 64 signal 5 } 
	{ mprime sc_in sc_lv 32 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ win_ap_vld sc_in sc_logic 1 invld 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ d_ap_vld sc_in sc_logic 1 invld 2 } 
	{ m_ap_vld sc_in sc_logic 1 invld 5 } 
	{ mprime_ap_vld sc_in sc_logic 1 invld 6 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "win", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "win", "role": "default" }} , 
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
 	{ "name": "d", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "d", "role": "default" }} , 
 	{ "name": "table_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "table_r", "role": "address0" }} , 
 	{ "name": "table_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "table_r", "role": "ce0" }} , 
 	{ "name": "table_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "table_r", "role": "d0" }} , 
 	{ "name": "table_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "table_r", "role": "q0" }} , 
 	{ "name": "table_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "table_r", "role": "we0" }} , 
 	{ "name": "table_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "table_r", "role": "address1" }} , 
 	{ "name": "table_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "table_r", "role": "ce1" }} , 
 	{ "name": "table_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "table_r", "role": "d1" }} , 
 	{ "name": "table_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "table_r", "role": "q1" }} , 
 	{ "name": "table_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "table_r", "role": "we1" }} , 
 	{ "name": "z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z", "role": "address0" }} , 
 	{ "name": "z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z", "role": "ce0" }} , 
 	{ "name": "z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z", "role": "d0" }} , 
 	{ "name": "z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z", "role": "q0" }} , 
 	{ "name": "z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z", "role": "we0" }} , 
 	{ "name": "z_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z", "role": "address1" }} , 
 	{ "name": "z_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z", "role": "ce1" }} , 
 	{ "name": "z_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z", "role": "d1" }} , 
 	{ "name": "z_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z", "role": "q1" }} , 
 	{ "name": "z_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z", "role": "we1" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "win_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "win", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "d_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d", "role": "ap_vld" }} , 
 	{ "name": "m_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "m", "role": "ap_vld" }} , 
 	{ "name": "mprime_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "mprime", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "52"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_77_8_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "450", "EstimateLatencyMax" : "450",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_proc17_U0"},
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0"}],
		"Port" : [
			{"Name" : "win", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0", "Port" : "gmem"}]},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0", "Port" : "table_r"}]},
			{"Name" : "z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0", "Port" : "z"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_proc17_U0", "Parent" : "0",
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_proc17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "win", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0", "Parent" : "0", "Child" : ["3", "4", "5", "7", "9", "11", "50"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "449", "EstimateLatencyMax" : "449",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_get_window_fu_3070", "Port" : "gmem", "Inst_start_state" : "57", "Inst_end_state" : "58"},
					{"ID" : "11", "SubInstance" : "grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092", "Port" : "gmem", "Inst_start_state" : "129", "Inst_end_state" : "130"}]},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "table_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_3_fu_3085", "Port" : "z", "Inst_start_state" : "57", "Inst_end_state" : "58"},
					{"ID" : "50", "SubInstance" : "grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1_1_fu_3119", "Port" : "z", "Inst_start_state" : "131", "Inst_end_state" : "132"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.cand_i_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.zrun_i_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_get_window_fu_3070", "Parent" : "2", "Child" : ["6"],
		"CDFG" : "get_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "win_idx_from_lsb", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_11_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_get_window_fu_3070.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1_fu_3080", "Parent" : "2", "Child" : ["8"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1",
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
			{"Name" : "cand_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1_fu_3080.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_3_fu_3085", "Parent" : "2", "Child" : ["10"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_3",
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
			{"Name" : "z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zrun_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_3_fu_3085.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092", "Parent" : "2", "Child" : ["12", "49"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "282", "EstimateLatencyMax" : "282",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zrun_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_montMult_words_10_13_1_fu_379", "Port" : "x", "Inst_start_state" : "10", "Inst_end_state" : "48"}]},
			{"Name" : "or_ln101_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_127", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_143", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_159", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_175", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_191", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_207", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_223", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_239", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln101_255", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_montMult_words_10_13_1_fu_379", "Port" : "gmem", "Inst_start_state" : "10", "Inst_end_state" : "48"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_montMult_words_10_13_1_fu_379", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_108_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "56", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state56", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state56_blk", "QuitState" : "ap_ST_fsm_state56", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state56_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379", "Parent" : "11", "Child" : ["13"],
		"CDFG" : "montMult_words_10_13_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "38", "EstimateLatencyMin" : "38", "EstimateLatencyMax" : "38",
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
					{"ID" : "13", "SubInstance" : "grp_mul_2_fu_170", "Port" : "a"}]},
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
					{"ID" : "13", "SubInstance" : "grp_mul_2_fu_170", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_2_fu_170", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170", "Parent" : "12", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "38", "EstimateLatencyMin" : "38", "EstimateLatencyMax" : "38",
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
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U169", "Parent" : "13"},
	{"ID" : "15", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U170", "Parent" : "13"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U171", "Parent" : "13"},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U172", "Parent" : "13"},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U173", "Parent" : "13"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U174", "Parent" : "13"},
	{"ID" : "20", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U175", "Parent" : "13"},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U176", "Parent" : "13"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U177", "Parent" : "13"},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U178", "Parent" : "13"},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U179", "Parent" : "13"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U180", "Parent" : "13"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U181", "Parent" : "13"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U182", "Parent" : "13"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U183", "Parent" : "13"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U184", "Parent" : "13"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U185", "Parent" : "13"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U186", "Parent" : "13"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U187", "Parent" : "13"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U188", "Parent" : "13"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U189", "Parent" : "13"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U190", "Parent" : "13"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U191", "Parent" : "13"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U192", "Parent" : "13"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U193", "Parent" : "13"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U194", "Parent" : "13"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U195", "Parent" : "13"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U196", "Parent" : "13"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U197", "Parent" : "13"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U198", "Parent" : "13"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U199", "Parent" : "13"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U200", "Parent" : "13"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32ns_32ns_64_1_1_U201", "Parent" : "13"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32s_32s_32_1_1_U202", "Parent" : "13"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.grp_montMult_words_10_13_1_fu_379.grp_mul_2_fu_170.mul_32s_32s_32_1_1_U203", "Parent" : "13"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2_fu_3092.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1_1_fu_3119", "Parent" : "2", "Child" : ["51"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1_1",
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
			{"Name" : "zrun_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_123_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4_U0.grp_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1_1_fu_3119.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_2408_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_VITIS_LOOP_77_8_1 {
		win {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		table_r {Type I LastRead 128 FirstWrite -1}
		z {Type IO LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_proc17 {
		win {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4 {
		gmem {Type I LastRead 23 FirstWrite -1}
		d {Type I LastRead 56 FirstWrite -1}
		p_read {Type I LastRead 56 FirstWrite -1}
		table_r {Type I LastRead 128 FirstWrite -1}
		z {Type IO LastRead 0 FirstWrite -1}
		m {Type I LastRead 128 FirstWrite -1}
		mprime {Type I LastRead 128 FirstWrite -1}}
	get_window {
		gmem {Type I LastRead 9 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		win_idx_from_lsb {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1 {
		cand_i {Type O LastRead -1 FirstWrite 0}}
	dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_3 {
		z {Type I LastRead 0 FirstWrite -1}
		zrun_i {Type O LastRead -1 FirstWrite 1}}
	dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2 {
		zrun_i {Type IO LastRead 8 FirstWrite -1}
		or_ln101_15 {Type I LastRead 0 FirstWrite -1}
		or_ln101_31 {Type I LastRead 0 FirstWrite -1}
		or_ln101_47 {Type I LastRead 0 FirstWrite -1}
		or_ln101_63 {Type I LastRead 0 FirstWrite -1}
		or_ln101_79 {Type I LastRead 0 FirstWrite -1}
		or_ln101_95 {Type I LastRead 0 FirstWrite -1}
		or_ln101_111 {Type I LastRead 0 FirstWrite -1}
		or_ln101_127 {Type I LastRead 0 FirstWrite -1}
		or_ln101_143 {Type I LastRead 0 FirstWrite -1}
		or_ln101_159 {Type I LastRead 0 FirstWrite -1}
		or_ln101_175 {Type I LastRead 0 FirstWrite -1}
		or_ln101_191 {Type I LastRead 0 FirstWrite -1}
		or_ln101_207 {Type I LastRead 0 FirstWrite -1}
		or_ln101_223 {Type I LastRead 0 FirstWrite -1}
		or_ln101_239 {Type I LastRead 0 FirstWrite -1}
		or_ln101_255 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}
	montMult_words_10_13_1 {
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
		b_read_25 {Type I LastRead 2 FirstWrite -1}
		b_read_26 {Type I LastRead 2 FirstWrite -1}
		b_read_27 {Type I LastRead 4 FirstWrite -1}
		b_read_28 {Type I LastRead 5 FirstWrite -1}
		b_read_29 {Type I LastRead 7 FirstWrite -1}
		b_read_30 {Type I LastRead 9 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 1 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1_1 {
		zrun_i {Type I LastRead 0 FirstWrite -1}
		z {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "450", "Max" : "450"}
	, {"Name" : "Interval", "Min" : "450", "Max" : "450"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	win { ap_none {  { win in_data 0 8 }  { win_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	d { ap_none {  { d in_data 0 64 }  { d_ap_vld in_vld 0 1 } } }
	table_r { ap_memory {  { table_r_address0 mem_address 1 8 }  { table_r_ce0 mem_ce 1 1 }  { table_r_d0 mem_din 1 32 }  { table_r_q0 mem_dout 0 32 }  { table_r_we0 mem_we 1 1 }  { table_r_address1 MemPortADDR2 1 8 }  { table_r_ce1 MemPortCE2 1 1 }  { table_r_d1 mem_din 1 32 }  { table_r_q1 MemPortDOUT2 0 32 }  { table_r_we1 mem_we 1 1 } } }
	z { ap_memory {  { z_address0 mem_address 1 4 }  { z_ce0 mem_ce 1 1 }  { z_d0 mem_din 1 32 }  { z_q0 mem_dout 0 32 }  { z_we0 mem_we 1 1 }  { z_address1 mem_address 1 4 }  { z_ce1 mem_ce 1 1 }  { z_d1 mem_din 1 32 }  { z_q1 mem_dout 0 32 }  { z_we1 mem_we 1 1 } } }
	m { ap_none {  { m in_data 0 64 }  { m_ap_vld in_vld 0 1 } } }
	mprime { ap_none {  { mprime in_data 0 32 }  { mprime_ap_vld in_vld 0 1 } } }
}
