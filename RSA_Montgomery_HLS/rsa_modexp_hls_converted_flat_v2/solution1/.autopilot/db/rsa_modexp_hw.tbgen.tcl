set moduleName rsa_modexp_hw
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
set cdfgNum 17
set C_modelName {rsa_modexp_hw}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem int 32 regular {axi_master 2}  }
	{ c int 64 regular {axi_slave 0}  }
	{ d int 64 regular {axi_slave 0}  }
	{ m int 64 regular {axi_slave 0}  }
	{ mprime int 32 regular {axi_slave 0}  }
	{ r2m int 64 regular {axi_slave 0}  }
	{ p int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control_r"},"direction": "READONLY"},{"cName": "d","offset": { "type": "dynamic","port_name": "d","bundle": "control_r"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control_r"},"direction": "READONLY"},{"cName": "r2m","offset": { "type": "dynamic","port_name": "r2m","bundle": "control_r"},"direction": "READONLY"},{"cName": "p","offset": { "type": "dynamic","port_name": "p","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "c", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "d", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "m", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "mprime", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "r2m", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "p", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_r_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_r_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_r_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_r_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_r_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_r_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"rsa_modexp_hw","role":"start","value":"0","valid_bit":"0"},{"name":"rsa_modexp_hw","role":"continue","value":"0","valid_bit":"4"},{"name":"rsa_modexp_hw","role":"auto_start","value":"0","valid_bit":"7"},{"name":"mprime","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"rsa_modexp_hw","role":"start","value":"0","valid_bit":"0"},{"name":"rsa_modexp_hw","role":"done","value":"0","valid_bit":"1"},{"name":"rsa_modexp_hw","role":"idle","value":"0","valid_bit":"2"},{"name":"rsa_modexp_hw","role":"ready","value":"0","valid_bit":"3"},{"name":"rsa_modexp_hw","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{ "name": "s_axi_control_r_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control_r", "role": "AWADDR" },"address":[{"name":"c","role":"data","value":"16"},{"name":"d","role":"data","value":"28"},{"name":"m","role":"data","value":"40"},{"name":"r2m","role":"data","value":"52"},{"name":"p","role":"data","value":"64"}] },
	{ "name": "s_axi_control_r_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWVALID" } },
	{ "name": "s_axi_control_r_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWREADY" } },
	{ "name": "s_axi_control_r_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WVALID" } },
	{ "name": "s_axi_control_r_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WREADY" } },
	{ "name": "s_axi_control_r_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "WDATA" } },
	{ "name": "s_axi_control_r_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control_r", "role": "WSTRB" } },
	{ "name": "s_axi_control_r_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control_r", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_r_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARVALID" } },
	{ "name": "s_axi_control_r_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARREADY" } },
	{ "name": "s_axi_control_r_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RVALID" } },
	{ "name": "s_axi_control_r_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RREADY" } },
	{ "name": "s_axi_control_r_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "RDATA" } },
	{ "name": "s_axi_control_r_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "RRESP" } },
	{ "name": "s_axi_control_r_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BVALID" } },
	{ "name": "s_axi_control_r_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BREADY" } },
	{ "name": "s_axi_control_r_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "12", "14", "16", "55", "57", "96", "98", "121", "123", "124", "125"],
		"CDFG" : "rsa_modexp_hw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56619", "EstimateLatencyMax" : "56619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2_fu_637", "Port" : "gmem", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "14", "SubInstance" : "grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3_fu_647", "Port" : "gmem", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "16", "SubInstance" : "grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657", "Port" : "gmem", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "57", "SubInstance" : "grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675", "Port" : "gmem", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "98", "SubInstance" : "grp_montMult_words_1_fu_760", "Port" : "gmem", "Inst_start_state" : "39", "Inst_end_state" : "40"},
					{"ID" : "121", "SubInstance" : "grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_97_15_fu_771", "Port" : "gmem", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "r2m", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zarr1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parr1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_x_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_y_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_out_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.final_x_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.final_y_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.final_out_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1_fu_631", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "one", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1_fu_631.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2_fu_637", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
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
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln42", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "one", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2_fu_637.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3_fu_647", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "43",
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
			{"Name" : "conv_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln42_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3_fu_647.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657", "Parent" : "0", "Child" : ["17", "54"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
					{"ID" : "17", "SubInstance" : "grp_montMult_words_2_fu_70", "Port" : "gmem", "Inst_start_state" : "2", "Inst_end_state" : "49"}]},
			{"Name" : "conv_x", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_montMult_words_2_fu_70", "Port" : "x", "Inst_start_state" : "2", "Inst_end_state" : "49"}]},
			{"Name" : "conv_y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_montMult_words_2_fu_70", "Port" : "y", "Inst_start_state" : "2", "Inst_end_state" : "49"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_montMult_words_2_fu_70", "Port" : "out_r", "Inst_start_state" : "2", "Inst_end_state" : "49"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_montMult_words_2_fu_70", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70", "Parent" : "16", "Child" : ["18"],
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
					{"ID" : "18", "SubInstance" : "grp_mul_13_fu_56", "Port" : "a"}]},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_mul_13_fu_56", "Port" : "b"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_mul_13_fu_56", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_mul_13_fu_56", "Port" : "c"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_13_fu_56", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56", "Parent" : "17", "Child" : ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53"],
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
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U12", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U13", "Parent" : "18"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U14", "Parent" : "18"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U15", "Parent" : "18"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U16", "Parent" : "18"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U17", "Parent" : "18"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U18", "Parent" : "18"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U19", "Parent" : "18"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U20", "Parent" : "18"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U21", "Parent" : "18"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U22", "Parent" : "18"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U23", "Parent" : "18"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U24", "Parent" : "18"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U25", "Parent" : "18"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U26", "Parent" : "18"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U27", "Parent" : "18"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U28", "Parent" : "18"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U29", "Parent" : "18"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U30", "Parent" : "18"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U31", "Parent" : "18"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U32", "Parent" : "18"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U33", "Parent" : "18"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U34", "Parent" : "18"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U35", "Parent" : "18"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U36", "Parent" : "18"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U37", "Parent" : "18"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U38", "Parent" : "18"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U39", "Parent" : "18"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U40", "Parent" : "18"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U41", "Parent" : "18"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U42", "Parent" : "18"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U43", "Parent" : "18"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32ns_32ns_64_1_1_U44", "Parent" : "18"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32s_32s_32_1_1_U45", "Parent" : "18"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.grp_montMult_words_2_fu_70.grp_mul_13_fu_56.mul_32s_32s_32_1_1_U46", "Parent" : "18"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_657.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_48_5_fu_668", "Parent" : "0", "Child" : ["56"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_48_5",
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
			{"Name" : "conv_out", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zarr1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "parr1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_48_5_fu_668.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675", "Parent" : "0", "Child" : ["58", "95"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56324", "EstimateLatencyMax" : "56324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zarr1_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zarr1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "parr1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_montMult_words_5_8_1_fu_780", "Port" : "gmem", "Inst_start_state" : "53", "Inst_end_state" : "103"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "thr_or12834_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or13133_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or13432_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or13731_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or14030_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or14329_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or14628_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or14927_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or15226_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or15525_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or15824_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or16123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or16422_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or16721_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or17020_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thr_or17319_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_montMult_words_5_8_1_fu_780", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "110", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780", "Parent" : "57", "Child" : ["59"],
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
					{"ID" : "59", "SubInstance" : "grp_mul_1_fu_296", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_1_fu_296", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296", "Parent" : "58", "Child" : ["60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94"],
		"CDFG" : "mul_1",
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
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U72", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U73", "Parent" : "59"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U74", "Parent" : "59"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U75", "Parent" : "59"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U76", "Parent" : "59"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U77", "Parent" : "59"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U78", "Parent" : "59"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U79", "Parent" : "59"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U80", "Parent" : "59"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U81", "Parent" : "59"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U82", "Parent" : "59"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U83", "Parent" : "59"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U84", "Parent" : "59"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U85", "Parent" : "59"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U86", "Parent" : "59"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U87", "Parent" : "59"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U88", "Parent" : "59"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U89", "Parent" : "59"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U90", "Parent" : "59"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U91", "Parent" : "59"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U92", "Parent" : "59"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U93", "Parent" : "59"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U94", "Parent" : "59"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U95", "Parent" : "59"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U96", "Parent" : "59"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U97", "Parent" : "59"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U98", "Parent" : "59"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U99", "Parent" : "59"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U100", "Parent" : "59"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U101", "Parent" : "59"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U102", "Parent" : "59"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U103", "Parent" : "59"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32ns_32ns_64_1_1_U104", "Parent" : "59"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32s_32s_32_1_1_U105", "Parent" : "59"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.grp_montMult_words_5_8_1_fu_780.grp_mul_1_fu_296.mul_32s_32s_32_1_1_U106", "Parent" : "59"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_675.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_92_13_fu_752", "Parent" : "0", "Child" : ["97"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_92_13",
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
			{"Name" : "final_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "final_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zarr1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "one", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_92_13_fu_752.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760", "Parent" : "0", "Child" : ["99"],
		"CDFG" : "montMult_words_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_mul_fu_46", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_mul_fu_46", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_mul_fu_46", "Port" : "gmem", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_mul_fu_46", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46", "Parent" : "98", "Child" : ["100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "46",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U249", "Parent" : "99"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U250", "Parent" : "99"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U251", "Parent" : "99"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U252", "Parent" : "99"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U253", "Parent" : "99"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U254", "Parent" : "99"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U255", "Parent" : "99"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U256", "Parent" : "99"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U257", "Parent" : "99"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U258", "Parent" : "99"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U259", "Parent" : "99"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U260", "Parent" : "99"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U261", "Parent" : "99"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U262", "Parent" : "99"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U263", "Parent" : "99"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U264", "Parent" : "99"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U265", "Parent" : "99"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U266", "Parent" : "99"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U267", "Parent" : "99"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32ns_32ns_64_1_1_U268", "Parent" : "99"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_fu_760.grp_mul_fu_46.mul_32s_32s_32_1_1_U269", "Parent" : "99"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_97_15_fu_771", "Parent" : "0", "Child" : ["122"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_97_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln97", "Type" : "None", "Direction" : "I"},
			{"Name" : "final_out", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_15", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_97_15_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_r_s_axi_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rsa_modexp_hw {
		gmem {Type IO LastRead 111 FirstWrite -1}
		c {Type I LastRead 1 FirstWrite -1}
		d {Type I LastRead 1 FirstWrite -1}
		m {Type I LastRead 1 FirstWrite -1}
		mprime {Type I LastRead 1 FirstWrite -1}
		r2m {Type I LastRead 1 FirstWrite -1}
		p {Type I LastRead 1 FirstWrite -1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1 {
		one {Type O LastRead -1 FirstWrite 0}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2 {
		gmem {Type I LastRead 1 FirstWrite -1}
		sext_ln42 {Type I LastRead 0 FirstWrite -1}
		conv_x {Type O LastRead -1 FirstWrite 1}
		conv_y {Type O LastRead -1 FirstWrite 2}
		one {Type I LastRead 0 FirstWrite -1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3 {
		gmem {Type I LastRead 10 FirstWrite -1}
		conv_x {Type O LastRead -1 FirstWrite 10}
		conv_y {Type O LastRead -1 FirstWrite 11}
		sext_ln43 {Type I LastRead 0 FirstWrite -1}
		sext_ln42_1 {Type I LastRead 0 FirstWrite -1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4 {
		gmem {Type I LastRead 23 FirstWrite -1}
		conv_x {Type I LastRead 8 FirstWrite -1}
		conv_y {Type I LastRead 8 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		conv_out {Type O LastRead -1 FirstWrite 40}}
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
		mprime {Type I LastRead 1 FirstWrite -1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_48_5 {
		conv_out {Type I LastRead 1 FirstWrite -1}
		zarr1 {Type O LastRead -1 FirstWrite 1}
		parr1 {Type O LastRead -1 FirstWrite 1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6 {
		zarr1_load_15 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_14 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_13 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_12 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_11 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_10 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_9 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_8 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_7 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_6 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_5 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_4 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_3 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_2 {Type I LastRead 0 FirstWrite -1}
		zarr1_load_1 {Type I LastRead 0 FirstWrite -1}
		zarr1_load {Type I LastRead 0 FirstWrite -1}
		parr1_load_15 {Type I LastRead 0 FirstWrite -1}
		parr1_load_14 {Type I LastRead 0 FirstWrite -1}
		parr1_load_13 {Type I LastRead 0 FirstWrite -1}
		parr1_load_12 {Type I LastRead 0 FirstWrite -1}
		parr1_load_11 {Type I LastRead 0 FirstWrite -1}
		parr1_load_10 {Type I LastRead 0 FirstWrite -1}
		parr1_load_9 {Type I LastRead 0 FirstWrite -1}
		parr1_load_8 {Type I LastRead 0 FirstWrite -1}
		parr1_load_7 {Type I LastRead 0 FirstWrite -1}
		parr1_load_6 {Type I LastRead 0 FirstWrite -1}
		parr1_load_5 {Type I LastRead 0 FirstWrite -1}
		parr1_load_4 {Type I LastRead 0 FirstWrite -1}
		parr1_load_3 {Type I LastRead 0 FirstWrite -1}
		parr1_load_2 {Type I LastRead 0 FirstWrite -1}
		parr1_load_1 {Type I LastRead 0 FirstWrite -1}
		parr1_load {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 111 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		d {Type I LastRead 0 FirstWrite -1}
		thr_or12834_out {Type O LastRead -1 FirstWrite 2}
		thr_or13133_out {Type O LastRead -1 FirstWrite 2}
		thr_or13432_out {Type O LastRead -1 FirstWrite 2}
		thr_or13731_out {Type O LastRead -1 FirstWrite 2}
		thr_or14030_out {Type O LastRead -1 FirstWrite 2}
		thr_or14329_out {Type O LastRead -1 FirstWrite 2}
		thr_or14628_out {Type O LastRead -1 FirstWrite 2}
		thr_or14927_out {Type O LastRead -1 FirstWrite 2}
		thr_or15226_out {Type O LastRead -1 FirstWrite 2}
		thr_or15525_out {Type O LastRead -1 FirstWrite 2}
		thr_or15824_out {Type O LastRead -1 FirstWrite 2}
		thr_or16123_out {Type O LastRead -1 FirstWrite 2}
		thr_or16422_out {Type O LastRead -1 FirstWrite 2}
		thr_or16721_out {Type O LastRead -1 FirstWrite 2}
		thr_or17020_out {Type O LastRead -1 FirstWrite 2}
		thr_or17319_out {Type O LastRead -1 FirstWrite 2}
		p_out {Type O LastRead -1 FirstWrite 2}
		p_out1 {Type O LastRead -1 FirstWrite 2}
		p_out2 {Type O LastRead -1 FirstWrite 2}
		p_out3 {Type O LastRead -1 FirstWrite 2}
		p_out4 {Type O LastRead -1 FirstWrite 2}
		p_out5 {Type O LastRead -1 FirstWrite 2}
		p_out6 {Type O LastRead -1 FirstWrite 2}
		p_out7 {Type O LastRead -1 FirstWrite 2}
		p_out8 {Type O LastRead -1 FirstWrite 2}
		p_out9 {Type O LastRead -1 FirstWrite 2}
		p_out10 {Type O LastRead -1 FirstWrite 2}
		p_out11 {Type O LastRead -1 FirstWrite 2}
		p_out12 {Type O LastRead -1 FirstWrite 2}
		p_out13 {Type O LastRead -1 FirstWrite 2}
		p_out14 {Type O LastRead -1 FirstWrite 2}
		p_out15 {Type O LastRead -1 FirstWrite 2}}
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
	mul_1 {
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
		b_read_16 {Type I LastRead 0 FirstWrite -1}
		b_read_17 {Type I LastRead 0 FirstWrite -1}
		b_read_18 {Type I LastRead 0 FirstWrite -1}
		b_read_19 {Type I LastRead 0 FirstWrite -1}
		b_read_20 {Type I LastRead 0 FirstWrite -1}
		b_read_21 {Type I LastRead 1 FirstWrite -1}
		b_read_22 {Type I LastRead 1 FirstWrite -1}
		b_read_23 {Type I LastRead 2 FirstWrite -1}
		b_read_24 {Type I LastRead 2 FirstWrite -1}
		b_read_25 {Type I LastRead 3 FirstWrite -1}
		b_read_26 {Type I LastRead 3 FirstWrite -1}
		b_read_27 {Type I LastRead 4 FirstWrite -1}
		b_read_28 {Type I LastRead 5 FirstWrite -1}
		b_read_29 {Type I LastRead 6 FirstWrite -1}
		b_read_30 {Type I LastRead 7 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_92_13 {
		final_x {Type O LastRead -1 FirstWrite 1}
		final_y {Type O LastRead -1 FirstWrite 1}
		zarr1 {Type I LastRead 0 FirstWrite -1}
		one {Type I LastRead 0 FirstWrite -1}}
	montMult_words_1 {
		x {Type I LastRead 24 FirstWrite -1}
		y {Type I LastRead 30 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 39}}
	mul {
		a {Type I LastRead 24 FirstWrite -1}
		b {Type I LastRead 30 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 39}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 9 FirstWrite -1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_97_15 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln97 {Type I LastRead 0 FirstWrite -1}
		final_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "56619", "Max" : "56619"}
	, {"Name" : "Interval", "Min" : "56620", "Max" : "56620"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem { CHANNEL_NUM 0 BUNDLE gmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
