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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "11", "13", "52", "54", "130", "154", "155", "156"],
		"CDFG" : "rsa_modexp_hw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46336", "EstimateLatencyMax" : "46336",
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
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2_fu_179", "Port" : "gmem", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "11", "SubInstance" : "grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3_fu_189", "Port" : "gmem", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "13", "SubInstance" : "grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199", "Port" : "gmem", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "54", "SubInstance" : "grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217", "Port" : "gmem", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "130", "SubInstance" : "grp_montMult_words_1_2_fu_228", "Port" : "gmem", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
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
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1_fu_173", "Parent" : "0", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1_fu_173.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2_fu_179", "Parent" : "0", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2_fu_179.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3_fu_189", "Parent" : "0", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3_fu_189.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199", "Parent" : "0", "Child" : ["14", "51"],
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
					{"ID" : "14", "SubInstance" : "grp_montMult_words_1_1_fu_70", "Port" : "gmem", "Inst_start_state" : "2", "Inst_end_state" : "49"}]},
			{"Name" : "conv_x", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_montMult_words_1_1_fu_70", "Port" : "x", "Inst_start_state" : "2", "Inst_end_state" : "49"}]},
			{"Name" : "conv_y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_montMult_words_1_1_fu_70", "Port" : "y", "Inst_start_state" : "2", "Inst_end_state" : "49"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_montMult_words_1_1_fu_70", "Port" : "out_r", "Inst_start_state" : "2", "Inst_end_state" : "49"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_montMult_words_1_1_fu_70", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "montMult_words_1_1",
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
					{"ID" : "15", "SubInstance" : "grp_mul_fu_56", "Port" : "a"}]},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_mul_fu_56", "Port" : "b"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_mul_fu_56", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_mul_fu_56", "Port" : "c"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_fu_56", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56", "Parent" : "14", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"],
		"CDFG" : "mul",
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
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U12", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U13", "Parent" : "15"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U14", "Parent" : "15"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U15", "Parent" : "15"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U16", "Parent" : "15"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U17", "Parent" : "15"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U18", "Parent" : "15"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U19", "Parent" : "15"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U20", "Parent" : "15"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U21", "Parent" : "15"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U22", "Parent" : "15"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U23", "Parent" : "15"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U24", "Parent" : "15"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U25", "Parent" : "15"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U26", "Parent" : "15"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U27", "Parent" : "15"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U28", "Parent" : "15"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U29", "Parent" : "15"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U30", "Parent" : "15"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U31", "Parent" : "15"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U32", "Parent" : "15"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U33", "Parent" : "15"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U34", "Parent" : "15"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U35", "Parent" : "15"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U36", "Parent" : "15"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U37", "Parent" : "15"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U38", "Parent" : "15"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U39", "Parent" : "15"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U40", "Parent" : "15"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U41", "Parent" : "15"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U42", "Parent" : "15"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U43", "Parent" : "15"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32ns_32ns_64_1_1_U44", "Parent" : "15"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32s_32s_32_1_1_U45", "Parent" : "15"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.grp_montMult_words_1_1_fu_70.grp_mul_fu_56.mul_32s_32s_32_1_1_U46", "Parent" : "15"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_48_5_fu_210", "Parent" : "0", "Child" : ["53"],
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
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_48_5_fu_210.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217", "Parent" : "0", "Child" : ["55", "92", "129"],
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
					{"ID" : "55", "SubInstance" : "grp_montMult_words_1_9_12_1_1_fu_448", "Port" : "gmem", "Inst_start_state" : "2", "Inst_end_state" : "42"},
					{"ID" : "92", "SubInstance" : "grp_montMult_words_1_9_12_1_fu_458", "Port" : "gmem", "Inst_start_state" : "43", "Inst_end_state" : "83"}]},
			{"Name" : "zarr1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_montMult_words_1_9_12_1_fu_458", "Port" : "x", "Inst_start_state" : "43", "Inst_end_state" : "83"}]},
			{"Name" : "parr1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_montMult_words_1_9_12_1_1_fu_448", "Port" : "y", "Inst_start_state" : "2", "Inst_end_state" : "42"},
					{"ID" : "92", "SubInstance" : "grp_montMult_words_1_9_12_1_fu_458", "Port" : "y", "Inst_start_state" : "43", "Inst_end_state" : "83"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_montMult_words_1_9_12_1_1_fu_448", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]},
			{"SubInstance" : "grp_montMult_words_1_9_12_1_fu_458", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "90", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448", "Parent" : "54", "Child" : ["56"],
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
					{"ID" : "56", "SubInstance" : "grp_mul_1_1_fu_42", "Port" : "b"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_mul_1_1_fu_42", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_1_1_fu_42", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42", "Parent" : "55", "Child" : ["57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91"],
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
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U72", "Parent" : "56"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U73", "Parent" : "56"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U74", "Parent" : "56"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U75", "Parent" : "56"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U76", "Parent" : "56"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U77", "Parent" : "56"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U78", "Parent" : "56"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U79", "Parent" : "56"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U80", "Parent" : "56"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U81", "Parent" : "56"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U82", "Parent" : "56"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U83", "Parent" : "56"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U84", "Parent" : "56"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U85", "Parent" : "56"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U86", "Parent" : "56"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U87", "Parent" : "56"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U88", "Parent" : "56"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U89", "Parent" : "56"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U90", "Parent" : "56"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U91", "Parent" : "56"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U92", "Parent" : "56"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U93", "Parent" : "56"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U94", "Parent" : "56"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U95", "Parent" : "56"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U96", "Parent" : "56"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U97", "Parent" : "56"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U98", "Parent" : "56"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U99", "Parent" : "56"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U100", "Parent" : "56"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U101", "Parent" : "56"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U102", "Parent" : "56"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U103", "Parent" : "56"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32ns_32ns_64_1_1_U104", "Parent" : "56"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32s_32s_32_1_1_U105", "Parent" : "56"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_1_fu_448.grp_mul_1_1_fu_42.mul_32s_32s_32_1_1_U106", "Parent" : "56"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458", "Parent" : "54", "Child" : ["93"],
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
					{"ID" : "93", "SubInstance" : "grp_mul_1_fu_44", "Port" : "a"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_mul_1_fu_44", "Port" : "b"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_mul_1_fu_44", "Port" : "gmem"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_1_fu_44", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44", "Parent" : "92", "Child" : ["94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
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
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U115", "Parent" : "93"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U116", "Parent" : "93"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U117", "Parent" : "93"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U118", "Parent" : "93"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U119", "Parent" : "93"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U120", "Parent" : "93"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U121", "Parent" : "93"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U122", "Parent" : "93"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U123", "Parent" : "93"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U124", "Parent" : "93"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U125", "Parent" : "93"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U126", "Parent" : "93"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U127", "Parent" : "93"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U128", "Parent" : "93"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U129", "Parent" : "93"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U130", "Parent" : "93"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U131", "Parent" : "93"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U132", "Parent" : "93"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U133", "Parent" : "93"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U134", "Parent" : "93"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U135", "Parent" : "93"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U136", "Parent" : "93"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U137", "Parent" : "93"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U138", "Parent" : "93"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U139", "Parent" : "93"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U140", "Parent" : "93"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U141", "Parent" : "93"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U142", "Parent" : "93"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U143", "Parent" : "93"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U144", "Parent" : "93"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U145", "Parent" : "93"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U146", "Parent" : "93"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32ns_32ns_64_1_1_U147", "Parent" : "93"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32s_32s_32_1_1_U148", "Parent" : "93"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.grp_montMult_words_1_9_12_1_fu_458.grp_mul_1_fu_44.mul_32s_32s_32_1_1_U149", "Parent" : "93"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6_fu_217.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228", "Parent" : "0", "Child" : ["131"],
		"CDFG" : "montMult_words_1_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "60", "EstimateLatencyMax" : "60",
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
					{"ID" : "131", "SubInstance" : "grp_mul_2_fu_52", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mul_2_fu_52", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_mul_2_fu_52", "Port" : "gmem", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52", "Parent" : "130", "Child" : ["132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153"],
		"CDFG" : "mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
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
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U166", "Parent" : "131"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U167", "Parent" : "131"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U168", "Parent" : "131"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U169", "Parent" : "131"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U170", "Parent" : "131"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U171", "Parent" : "131"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U172", "Parent" : "131"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U173", "Parent" : "131"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U174", "Parent" : "131"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U175", "Parent" : "131"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U176", "Parent" : "131"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U177", "Parent" : "131"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U178", "Parent" : "131"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U179", "Parent" : "131"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U180", "Parent" : "131"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U181", "Parent" : "131"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U182", "Parent" : "131"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U183", "Parent" : "131"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U184", "Parent" : "131"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U185", "Parent" : "131"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32ns_32ns_64_1_1_U186", "Parent" : "131"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_228.grp_mul_2_fu_52.mul_32s_32s_32_1_1_U187", "Parent" : "131"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_r_s_axi_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rsa_modexp_hw {
		gmem {Type IO LastRead 91 FirstWrite -1}
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
	montMult_words_1_1 {
		x {Type I LastRead 8 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 8 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 40}}
	mul {
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
		mprime {Type I LastRead 1 FirstWrite -1}}
	montMult_words_1_2 {
		x {Type I LastRead 24 FirstWrite -1}
		y {Type I LastRead 30 FirstWrite -1}
		gmem {Type IO LastRead 55 FirstWrite 39}
		m {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}}
	mul_2 {
		a {Type I LastRead 24 FirstWrite -1}
		b {Type I LastRead 30 FirstWrite -1}
		gmem {Type IO LastRead 55 FirstWrite 39}
		c {Type I LastRead 38 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46336", "Max" : "46336"}
	, {"Name" : "Interval", "Min" : "46337", "Max" : "46337"}
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
