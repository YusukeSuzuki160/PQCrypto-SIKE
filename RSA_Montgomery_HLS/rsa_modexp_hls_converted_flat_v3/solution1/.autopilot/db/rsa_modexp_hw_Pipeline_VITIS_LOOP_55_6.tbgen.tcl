set moduleName rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6
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
set cdfgNum 17
set C_modelName {rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict zarr1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict parr1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ gmem int 32 regular {axi_master 0}  }
	{ zarr1 int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ parr1 int 32 regular {array 16 { 2 2 } 1 1 }  }
	{ m int 64 regular  }
	{ mprime int 32 regular  }
	{ d int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control_r"},"direction": "READONLY"},{"cName": "d","offset": { "type": "dynamic","port_name": "d","bundle": "control_r"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control_r"},"direction": "READONLY"},{"cName": "r2m","offset": { "type": "dynamic","port_name": "r2m","bundle": "control_r"},"direction": "READONLY"},{"cName": "p","offset": { "type": "dynamic","port_name": "p","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "zarr1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "parr1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "m", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 75
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
	{ zarr1_address0 sc_out sc_lv 4 signal 1 } 
	{ zarr1_ce0 sc_out sc_logic 1 signal 1 } 
	{ zarr1_we0 sc_out sc_logic 1 signal 1 } 
	{ zarr1_d0 sc_out sc_lv 32 signal 1 } 
	{ zarr1_q0 sc_in sc_lv 32 signal 1 } 
	{ zarr1_address1 sc_out sc_lv 4 signal 1 } 
	{ zarr1_ce1 sc_out sc_logic 1 signal 1 } 
	{ zarr1_we1 sc_out sc_logic 1 signal 1 } 
	{ zarr1_d1 sc_out sc_lv 32 signal 1 } 
	{ zarr1_q1 sc_in sc_lv 32 signal 1 } 
	{ parr1_address0 sc_out sc_lv 4 signal 2 } 
	{ parr1_ce0 sc_out sc_logic 1 signal 2 } 
	{ parr1_we0 sc_out sc_logic 1 signal 2 } 
	{ parr1_d0 sc_out sc_lv 32 signal 2 } 
	{ parr1_q0 sc_in sc_lv 32 signal 2 } 
	{ parr1_address1 sc_out sc_lv 4 signal 2 } 
	{ parr1_ce1 sc_out sc_logic 1 signal 2 } 
	{ parr1_we1 sc_out sc_logic 1 signal 2 } 
	{ parr1_d1 sc_out sc_lv 32 signal 2 } 
	{ parr1_q1 sc_in sc_lv 32 signal 2 } 
	{ m sc_in sc_lv 64 signal 3 } 
	{ mprime sc_in sc_lv 32 signal 4 } 
	{ d sc_in sc_lv 64 signal 5 } 
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
 	{ "name": "zarr1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zarr1", "role": "address0" }} , 
 	{ "name": "zarr1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zarr1", "role": "ce0" }} , 
 	{ "name": "zarr1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zarr1", "role": "we0" }} , 
 	{ "name": "zarr1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zarr1", "role": "d0" }} , 
 	{ "name": "zarr1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zarr1", "role": "q0" }} , 
 	{ "name": "zarr1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zarr1", "role": "address1" }} , 
 	{ "name": "zarr1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zarr1", "role": "ce1" }} , 
 	{ "name": "zarr1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zarr1", "role": "we1" }} , 
 	{ "name": "zarr1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zarr1", "role": "d1" }} , 
 	{ "name": "zarr1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zarr1", "role": "q1" }} , 
 	{ "name": "parr1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parr1", "role": "address0" }} , 
 	{ "name": "parr1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parr1", "role": "ce0" }} , 
 	{ "name": "parr1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parr1", "role": "we0" }} , 
 	{ "name": "parr1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parr1", "role": "d0" }} , 
 	{ "name": "parr1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parr1", "role": "q0" }} , 
 	{ "name": "parr1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parr1", "role": "address1" }} , 
 	{ "name": "parr1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parr1", "role": "ce1" }} , 
 	{ "name": "parr1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parr1", "role": "we1" }} , 
 	{ "name": "parr1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parr1", "role": "d1" }} , 
 	{ "name": "parr1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parr1", "role": "q1" }} , 
 	{ "name": "m", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m", "role": "default" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }} , 
 	{ "name": "d", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "d", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "38", "75"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46091", "EstimateLatencyMax" : "46091",
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
					{"ID" : "1", "SubInstance" : "grp_montMult_words_1_9_12_1_1_fu_448", "Port" : "gmem", "Inst_start_state" : "2", "Inst_end_state" : "42"},
					{"ID" : "38", "SubInstance" : "grp_montMult_words_1_9_12_1_fu_458", "Port" : "gmem", "Inst_start_state" : "43", "Inst_end_state" : "83"}]},
			{"Name" : "zarr1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_montMult_words_1_9_12_1_fu_458", "Port" : "x", "Inst_start_state" : "43", "Inst_end_state" : "83"}]},
			{"Name" : "parr1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_montMult_words_1_9_12_1_1_fu_448", "Port" : "y", "Inst_start_state" : "2", "Inst_end_state" : "42"},
					{"ID" : "38", "SubInstance" : "grp_montMult_words_1_9_12_1_fu_458", "Port" : "y", "Inst_start_state" : "43", "Inst_end_state" : "83"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_montMult_words_1_9_12_1_1_fu_448", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]},
			{"SubInstance" : "grp_montMult_words_1_9_12_1_fu_458", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "90", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "montMult_words_1_9_12_1_1",
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
			{"Name" : "y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_1_1_fu_42", "Port" : "b"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_1_1_fu_42", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_1_1_fu_42", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "mul_1_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}]},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U72", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U73", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U74", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U75", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U76", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U77", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U78", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U79", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U80", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U81", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U82", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U83", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U84", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U85", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U86", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U87", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U88", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U89", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U90", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U91", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U92", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U93", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U94", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U95", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U96", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U97", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U98", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U99", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U100", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U101", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U102", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U103", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U104", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32s_32s_32_1_1_U105", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32s_32s_32_1_1_U106", "Parent" : "2"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "montMult_words_1_9_12_1",
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
					{"ID" : "39", "SubInstance" : "grp_mul_1_fu_44", "Port" : "a"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_mul_1_fu_44", "Port" : "b"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_mul_1_fu_44", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_1_fu_44", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44", "Parent" : "38", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}]},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U115", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U116", "Parent" : "39"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U117", "Parent" : "39"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U118", "Parent" : "39"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U119", "Parent" : "39"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U120", "Parent" : "39"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U121", "Parent" : "39"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U122", "Parent" : "39"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U123", "Parent" : "39"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U124", "Parent" : "39"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U125", "Parent" : "39"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U126", "Parent" : "39"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U127", "Parent" : "39"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U128", "Parent" : "39"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U129", "Parent" : "39"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U130", "Parent" : "39"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U131", "Parent" : "39"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U132", "Parent" : "39"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U133", "Parent" : "39"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U134", "Parent" : "39"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U135", "Parent" : "39"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U136", "Parent" : "39"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U137", "Parent" : "39"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U138", "Parent" : "39"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U139", "Parent" : "39"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U140", "Parent" : "39"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U141", "Parent" : "39"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U142", "Parent" : "39"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U143", "Parent" : "39"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U144", "Parent" : "39"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U145", "Parent" : "39"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U146", "Parent" : "39"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U147", "Parent" : "39"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32s_32s_32_1_1_U148", "Parent" : "39"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32s_32s_32_1_1_U149", "Parent" : "39"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6 {
		gmem {Type I LastRead 91 FirstWrite -1}
		zarr1 {Type IO LastRead 91 FirstWrite -1}
		parr1 {Type IO LastRead 14 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}}
	montMult_words_1_9_12_1_1 {
		y {Type I LastRead 14 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}
	mul_1_1 {
		b {Type I LastRead 14 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 1 FirstWrite -1}}
	montMult_words_1_9_12_1 {
		x {Type I LastRead 8 FirstWrite -1}
		y {Type I LastRead 8 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}
	mul_1 {
		a {Type I LastRead 8 FirstWrite -1}
		b {Type I LastRead 8 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46091", "Max" : "46091"}
	, {"Name" : "Interval", "Min" : "46091", "Max" : "46091"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	zarr1 { ap_memory {  { zarr1_address0 mem_address 1 4 }  { zarr1_ce0 mem_ce 1 1 }  { zarr1_we0 mem_we 1 1 }  { zarr1_d0 mem_din 1 32 }  { zarr1_q0 mem_dout 0 32 }  { zarr1_address1 MemPortADDR2 1 4 }  { zarr1_ce1 MemPortCE2 1 1 }  { zarr1_we1 MemPortWE2 1 1 }  { zarr1_d1 MemPortDIN2 1 32 }  { zarr1_q1 MemPortDOUT2 0 32 } } }
	parr1 { ap_memory {  { parr1_address0 mem_address 1 4 }  { parr1_ce0 mem_ce 1 1 }  { parr1_we0 mem_we 1 1 }  { parr1_d0 mem_din 1 32 }  { parr1_q0 mem_dout 0 32 }  { parr1_address1 MemPortADDR2 1 4 }  { parr1_ce1 MemPortCE2 1 1 }  { parr1_we1 MemPortWE2 1 1 }  { parr1_d1 MemPortDIN2 1 32 }  { parr1_q1 MemPortDOUT2 0 32 } } }
	m { ap_none {  { m in_data 0 64 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
	d { ap_none {  { d in_data 0 64 } } }
}
