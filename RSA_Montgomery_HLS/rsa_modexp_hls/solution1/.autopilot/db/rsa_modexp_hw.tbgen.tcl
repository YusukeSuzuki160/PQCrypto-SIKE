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
set cdfgNum 32
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "25", "40", "42", "59", "61", "63", "65", "80", "81", "82"],
		"CDFG" : "rsa_modexp_hw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "574030", "EstimateLatencyMax" : "574030",
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
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_montMult_words_3_1_fu_222", "Port" : "gmem", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "25", "SubInstance" : "grp_montMult_words_2_1_fu_236", "Port" : "gmem", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "42", "SubInstance" : "grp_montMult_words_1_1_fu_253", "Port" : "gmem", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "65", "SubInstance" : "grp_montMult_words_1_2_fu_284", "Port" : "gmem", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "d", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "r2m", "Type" : "None", "Direction" : "I"},
			{"Name" : "p", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state26"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state27"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.one_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zarr1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zarr2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parr1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parr2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tm_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zcand_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1_fu_216", "Parent" : "0", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222", "Parent" : "0", "Child" : ["11", "12", "13", "15", "19", "21", "23"],
		"CDFG" : "montMult_words_3_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "777", "EstimateLatencyMax" : "777",
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
					{"ID" : "15", "SubInstance" : "grp_montMult_words_3_1_Pipeline_VITIS_LOOP_33_2_fu_353", "Port" : "x", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_montMult_words_3_1_Pipeline_VITIS_LOOP_33_2_fu_353", "Port" : "gmem", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "19", "SubInstance" : "grp_montMult_words_3_1_Pipeline_VITIS_LOOP_88_6_fu_402", "Port" : "gmem", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "21", "SubInstance" : "grp_montMult_words_3_1_Pipeline_VITIS_LOOP_98_7_fu_411", "Port" : "gmem", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_montMult_words_3_1_Pipeline_VITIS_LOOP_107_8_fu_420", "Port" : "out_r", "Inst_start_state" : "35", "Inst_end_state" : "36"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.t_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.sub_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_28_1_fu_347", "Parent" : "10", "Child" : ["14"],
		"CDFG" : "montMult_words_3_1_Pipeline_VITIS_LOOP_28_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_28_1_fu_347.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_33_2_fu_353", "Parent" : "10", "Child" : ["16", "17", "18"],
		"CDFG" : "montMult_words_3_1_Pipeline_VITIS_LOOP_33_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "523", "EstimateLatencyMax" : "523",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "add6822_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv6321_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1520_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1419_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1318_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1217_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1015_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_914_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_813_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_712_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_611_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_510_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_33_2_fu_353.mul_32ns_32ns_64_1_1_U3", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_33_2_fu_353.mul_32s_32s_32_1_1_U4", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_33_2_fu_353.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_88_6_fu_402", "Parent" : "10", "Child" : ["20"],
		"CDFG" : "montMult_words_3_1_Pipeline_VITIS_LOOP_88_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "162",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "ge_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_88_6_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_98_7_fu_411", "Parent" : "10", "Child" : ["22"],
		"CDFG" : "montMult_words_3_1_Pipeline_VITIS_LOOP_98_7",
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
			{"Name" : "p_cast1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_98_7_fu_411.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_107_8_fu_420", "Parent" : "10", "Child" : ["24"],
		"CDFG" : "montMult_words_3_1_Pipeline_VITIS_LOOP_107_8",
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
			{"Name" : "sub", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mask", "Type" : "None", "Direction" : "I"},
			{"Name" : "neg", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_3_1_fu_222.grp_montMult_words_3_1_Pipeline_VITIS_LOOP_107_8_fu_420.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236", "Parent" : "0", "Child" : ["26", "27", "28", "30", "34", "36", "38"],
		"CDFG" : "montMult_words_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "794", "EstimateLatencyMax" : "794",
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
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_montMult_words_2_1_Pipeline_VITIS_LOOP_33_2_fu_359", "Port" : "gmem", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "34", "SubInstance" : "grp_montMult_words_2_1_Pipeline_VITIS_LOOP_88_6_fu_408", "Port" : "gmem", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "36", "SubInstance" : "grp_montMult_words_2_1_Pipeline_VITIS_LOOP_98_7_fu_417", "Port" : "gmem", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_montMult_words_2_1_Pipeline_VITIS_LOOP_107_8_fu_426", "Port" : "out_r", "Inst_start_state" : "35", "Inst_end_state" : "36"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.t_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.sub_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_28_1_fu_353", "Parent" : "25", "Child" : ["29"],
		"CDFG" : "montMult_words_2_1_Pipeline_VITIS_LOOP_28_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_28_1_fu_353.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_33_2_fu_359", "Parent" : "25", "Child" : ["31", "32", "33"],
		"CDFG" : "montMult_words_2_1_Pipeline_VITIS_LOOP_33_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "540", "EstimateLatencyMax" : "540",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast31_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "add6822_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv6321_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1520_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1419_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1318_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1217_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1015_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_914_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_813_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_712_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_611_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_510_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage10", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage10_subdone", "QuitState" : "ap_ST_fsm_pp0_stage10", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage10_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_33_2_fu_359.mul_32ns_32ns_64_1_1_U69", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_33_2_fu_359.mul_32s_32s_32_1_1_U70", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_33_2_fu_359.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_88_6_fu_408", "Parent" : "25", "Child" : ["35"],
		"CDFG" : "montMult_words_2_1_Pipeline_VITIS_LOOP_88_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "162",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "ge_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_88_6_fu_408.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_98_7_fu_417", "Parent" : "25", "Child" : ["37"],
		"CDFG" : "montMult_words_2_1_Pipeline_VITIS_LOOP_98_7",
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
			{"Name" : "p_cast31_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_98_7_fu_417.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_107_8_fu_426", "Parent" : "25", "Child" : ["39"],
		"CDFG" : "montMult_words_2_1_Pipeline_VITIS_LOOP_107_8",
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
			{"Name" : "sub", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mask", "Type" : "None", "Direction" : "I"},
			{"Name" : "neg", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_2_1_fu_236.grp_montMult_words_2_1_Pipeline_VITIS_LOOP_107_8_fu_426.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_3_fu_247", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_44_3",
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
			{"Name" : "parr1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tm", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_3_fu_247.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253", "Parent" : "0", "Child" : ["43", "44", "45", "47", "53", "55", "57"],
		"CDFG" : "montMult_words_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "522", "EstimateLatencyMax" : "522",
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
					{"ID" : "47", "SubInstance" : "grp_montMult_words_1_1_Pipeline_VITIS_LOOP_33_2_fu_500", "Port" : "x", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_montMult_words_1_1_Pipeline_VITIS_LOOP_33_2_fu_500", "Port" : "gmem", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "53", "SubInstance" : "grp_montMult_words_1_1_Pipeline_VITIS_LOOP_88_6_fu_566", "Port" : "gmem", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "55", "SubInstance" : "grp_montMult_words_1_1_Pipeline_VITIS_LOOP_98_7_fu_575", "Port" : "gmem", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_montMult_words_1_1_Pipeline_VITIS_LOOP_107_8_fu_584", "Port" : "out_r", "Inst_start_state" : "35", "Inst_end_state" : "36"}]}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.t_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.sub_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_28_1_fu_494", "Parent" : "42", "Child" : ["46"],
		"CDFG" : "montMult_words_1_1_Pipeline_VITIS_LOOP_28_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_28_1_fu_494.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_33_2_fu_500", "Parent" : "42", "Child" : ["48", "49", "50", "51", "52"],
		"CDFG" : "montMult_words_1_1_Pipeline_VITIS_LOOP_33_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "268", "EstimateLatencyMax" : "268",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_load_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv16", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "add6822_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv6321_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1520_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1419_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1318_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1217_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1015_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_914_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_813_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_712_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_611_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_510_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage10", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage10_subdone", "QuitState" : "ap_ST_fsm_pp0_stage10", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage10_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_33_2_fu_500.mul_32ns_32ns_64_1_1_U134", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_33_2_fu_500.mul_32ns_32ns_64_1_1_U135", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_33_2_fu_500.mul_32ns_32ns_64_1_1_U136", "Parent" : "47"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_33_2_fu_500.mul_32s_32s_32_1_1_U137", "Parent" : "47"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_33_2_fu_500.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_88_6_fu_566", "Parent" : "42", "Child" : ["54"],
		"CDFG" : "montMult_words_1_1_Pipeline_VITIS_LOOP_88_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "162",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "ge_04_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_88_6_fu_566.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_98_7_fu_575", "Parent" : "42", "Child" : ["56"],
		"CDFG" : "montMult_words_1_1_Pipeline_VITIS_LOOP_98_7",
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
			{"Name" : "p_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_98_7_fu_575.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_107_8_fu_584", "Parent" : "42", "Child" : ["58"],
		"CDFG" : "montMult_words_1_1_Pipeline_VITIS_LOOP_107_8",
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
			{"Name" : "sub", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mask", "Type" : "None", "Direction" : "I"},
			{"Name" : "neg", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_1_fu_253.grp_montMult_words_1_1_Pipeline_VITIS_LOOP_107_8_fu_584.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_4_fu_264", "Parent" : "0", "Child" : ["60"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_55_4",
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
			{"Name" : "zcand", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zarr1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zarr2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lshr_ln7", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_4_fu_264.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_58_5_fu_272", "Parent" : "0", "Child" : ["62"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_58_5",
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
			{"Name" : "parr2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parr1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_58_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_58_5_fu_272.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_59_6_fu_278", "Parent" : "0", "Child" : ["64"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_59_6",
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
			{"Name" : "zarr2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zarr1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_59_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rsa_modexp_hw_Pipeline_VITIS_LOOP_59_6_fu_278.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284", "Parent" : "0", "Child" : ["66", "67", "68", "70", "74", "76", "78"],
		"CDFG" : "montMult_words_1_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "528", "EstimateLatencyMax" : "528",
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
					{"ID" : "70", "SubInstance" : "grp_montMult_words_1_2_Pipeline_VITIS_LOOP_33_2_fu_518", "Port" : "x", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_montMult_words_1_2_Pipeline_VITIS_LOOP_33_2_fu_518", "Port" : "gmem", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "74", "SubInstance" : "grp_montMult_words_1_2_Pipeline_VITIS_LOOP_88_6_fu_584", "Port" : "gmem", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "76", "SubInstance" : "grp_montMult_words_1_2_Pipeline_VITIS_LOOP_98_7_fu_593", "Port" : "gmem", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "78", "SubInstance" : "grp_montMult_words_1_2_Pipeline_VITIS_LOOP_107_8_fu_602", "Port" : "gmem", "Inst_start_state" : "36", "Inst_end_state" : "37"}]},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.t_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.sub_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_28_1_fu_512", "Parent" : "65", "Child" : ["69"],
		"CDFG" : "montMult_words_1_2_Pipeline_VITIS_LOOP_28_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_28_1_fu_512.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_33_2_fu_518", "Parent" : "65", "Child" : ["71", "72", "73"],
		"CDFG" : "montMult_words_1_2_Pipeline_VITIS_LOOP_33_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "267", "EstimateLatencyMax" : "267",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "p_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln39", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln39_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "add6822_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv6321_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1520_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1419_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1318_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1217_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1015_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_914_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_813_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_712_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_611_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_510_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_33_2_fu_518.mul_32ns_32ns_64_1_1_U222", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_33_2_fu_518.mul_32s_32s_32_1_1_U223", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_33_2_fu_518.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_88_6_fu_584", "Parent" : "65", "Child" : ["75"],
		"CDFG" : "montMult_words_1_2_Pipeline_VITIS_LOOP_88_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "162",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "ge_04_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_88_6_fu_584.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_98_7_fu_593", "Parent" : "65", "Child" : ["77"],
		"CDFG" : "montMult_words_1_2_Pipeline_VITIS_LOOP_98_7",
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
			{"Name" : "p_cast_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_98_7_fu_593.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_107_8_fu_602", "Parent" : "65", "Child" : ["79"],
		"CDFG" : "montMult_words_1_2_Pipeline_VITIS_LOOP_107_8",
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
			{"Name" : "sext_ln107", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mask", "Type" : "None", "Direction" : "I"},
			{"Name" : "neg", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_1_2_fu_284.grp_montMult_words_1_2_Pipeline_VITIS_LOOP_107_8_fu_602.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_r_s_axi_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rsa_modexp_hw {
		gmem {Type IO LastRead 41 FirstWrite -1}
		c {Type I LastRead 3 FirstWrite -1}
		d {Type I LastRead 3 FirstWrite -1}
		m {Type I LastRead 3 FirstWrite -1}
		mprime {Type I LastRead 3 FirstWrite -1}
		r2m {Type I LastRead 3 FirstWrite -1}
		p {Type I LastRead 3 FirstWrite -1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1 {
		one {Type O LastRead -1 FirstWrite 0}}
	montMult_words_3_1 {
		x {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 40 FirstWrite -1}
		y {Type I LastRead 11 FirstWrite -1}
		m {Type I LastRead 11 FirstWrite -1}
		mprime {Type I LastRead 11 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	montMult_words_3_1_Pipeline_VITIS_LOOP_28_1 {
		t {Type O LastRead -1 FirstWrite 0}}
	montMult_words_3_1_Pipeline_VITIS_LOOP_33_2 {
		t_load_17 {Type I LastRead 0 FirstWrite -1}
		t_load_16 {Type I LastRead 0 FirstWrite -1}
		t_load_15 {Type I LastRead 0 FirstWrite -1}
		t_load_14 {Type I LastRead 0 FirstWrite -1}
		t_load_13 {Type I LastRead 0 FirstWrite -1}
		t_load_12 {Type I LastRead 0 FirstWrite -1}
		t_load_11 {Type I LastRead 0 FirstWrite -1}
		t_load_10 {Type I LastRead 0 FirstWrite -1}
		t_load_9 {Type I LastRead 0 FirstWrite -1}
		t_load_8 {Type I LastRead 0 FirstWrite -1}
		t_load_7 {Type I LastRead 0 FirstWrite -1}
		t_load_6 {Type I LastRead 0 FirstWrite -1}
		t_load_5 {Type I LastRead 0 FirstWrite -1}
		t_load_4 {Type I LastRead 0 FirstWrite -1}
		t_load_3 {Type I LastRead 0 FirstWrite -1}
		t_load_2 {Type I LastRead 0 FirstWrite -1}
		t_load_1 {Type I LastRead 0 FirstWrite -1}
		t_load {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 40 FirstWrite -1}
		p_cast_cast {Type I LastRead 0 FirstWrite -1}
		p_cast1_cast {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		add6822_out {Type O LastRead -1 FirstWrite 9}
		conv6321_out {Type O LastRead -1 FirstWrite 9}
		conv52_1520_out {Type O LastRead -1 FirstWrite 9}
		conv52_1419_out {Type O LastRead -1 FirstWrite 9}
		conv52_1318_out {Type O LastRead -1 FirstWrite 9}
		conv52_1217_out {Type O LastRead -1 FirstWrite 9}
		conv52_1116_out {Type O LastRead -1 FirstWrite 9}
		conv52_1015_out {Type O LastRead -1 FirstWrite 9}
		conv52_914_out {Type O LastRead -1 FirstWrite 9}
		conv52_813_out {Type O LastRead -1 FirstWrite 9}
		conv52_712_out {Type O LastRead -1 FirstWrite 9}
		conv52_611_out {Type O LastRead -1 FirstWrite 9}
		conv52_510_out {Type O LastRead -1 FirstWrite 9}
		conv52_49_out {Type O LastRead -1 FirstWrite 9}
		conv52_38_out {Type O LastRead -1 FirstWrite 9}
		conv52_27_out {Type O LastRead -1 FirstWrite 9}
		conv52_16_out {Type O LastRead -1 FirstWrite 9}}
	montMult_words_3_1_Pipeline_VITIS_LOOP_88_6 {
		t {Type I LastRead 1 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 10 FirstWrite -1}
		ge_out {Type O LastRead -1 FirstWrite 1}}
	montMult_words_3_1_Pipeline_VITIS_LOOP_98_7 {
		gmem {Type I LastRead 1 FirstWrite -1}
		p_cast1_cast {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 1 FirstWrite -1}
		sub {Type O LastRead -1 FirstWrite 2}}
	montMult_words_3_1_Pipeline_VITIS_LOOP_107_8 {
		sub {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}
		mask {Type I LastRead 0 FirstWrite -1}
		neg {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	montMult_words_2_1 {
		gmem {Type I LastRead 41 FirstWrite -1}
		x {Type I LastRead 11 FirstWrite -1}
		y {Type I LastRead 11 FirstWrite -1}
		m {Type I LastRead 11 FirstWrite -1}
		mprime {Type I LastRead 11 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	montMult_words_2_1_Pipeline_VITIS_LOOP_28_1 {
		t {Type O LastRead -1 FirstWrite 0}}
	montMult_words_2_1_Pipeline_VITIS_LOOP_33_2 {
		t_load_37 {Type I LastRead 0 FirstWrite -1}
		t_load_36 {Type I LastRead 0 FirstWrite -1}
		t_load_35 {Type I LastRead 0 FirstWrite -1}
		t_load_34 {Type I LastRead 0 FirstWrite -1}
		t_load_33 {Type I LastRead 0 FirstWrite -1}
		t_load_32 {Type I LastRead 0 FirstWrite -1}
		t_load_31 {Type I LastRead 0 FirstWrite -1}
		t_load_30 {Type I LastRead 0 FirstWrite -1}
		t_load_29 {Type I LastRead 0 FirstWrite -1}
		t_load_28 {Type I LastRead 0 FirstWrite -1}
		t_load_27 {Type I LastRead 0 FirstWrite -1}
		t_load_26 {Type I LastRead 0 FirstWrite -1}
		t_load_25 {Type I LastRead 0 FirstWrite -1}
		t_load_24 {Type I LastRead 0 FirstWrite -1}
		t_load_23 {Type I LastRead 0 FirstWrite -1}
		t_load_22 {Type I LastRead 0 FirstWrite -1}
		t_load_21 {Type I LastRead 0 FirstWrite -1}
		t_load {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 41 FirstWrite -1}
		p_cast_cast {Type I LastRead 0 FirstWrite -1}
		p_cast31_cast {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		add6822_out {Type O LastRead -1 FirstWrite 10}
		conv6321_out {Type O LastRead -1 FirstWrite 10}
		conv52_1520_out {Type O LastRead -1 FirstWrite 10}
		conv52_1419_out {Type O LastRead -1 FirstWrite 10}
		conv52_1318_out {Type O LastRead -1 FirstWrite 10}
		conv52_1217_out {Type O LastRead -1 FirstWrite 10}
		conv52_1116_out {Type O LastRead -1 FirstWrite 10}
		conv52_1015_out {Type O LastRead -1 FirstWrite 10}
		conv52_914_out {Type O LastRead -1 FirstWrite 10}
		conv52_813_out {Type O LastRead -1 FirstWrite 10}
		conv52_712_out {Type O LastRead -1 FirstWrite 10}
		conv52_611_out {Type O LastRead -1 FirstWrite 10}
		conv52_510_out {Type O LastRead -1 FirstWrite 10}
		conv52_49_out {Type O LastRead -1 FirstWrite 10}
		conv52_38_out {Type O LastRead -1 FirstWrite 10}
		conv52_27_out {Type O LastRead -1 FirstWrite 10}
		conv52_16_out {Type O LastRead -1 FirstWrite 10}}
	montMult_words_2_1_Pipeline_VITIS_LOOP_88_6 {
		t {Type I LastRead 1 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 10 FirstWrite -1}
		ge_4_out {Type O LastRead -1 FirstWrite 1}}
	montMult_words_2_1_Pipeline_VITIS_LOOP_98_7 {
		gmem {Type I LastRead 1 FirstWrite -1}
		p_cast31_cast {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 1 FirstWrite -1}
		sub {Type O LastRead -1 FirstWrite 2}}
	montMult_words_2_1_Pipeline_VITIS_LOOP_107_8 {
		sub {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}
		mask {Type I LastRead 0 FirstWrite -1}
		neg {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_44_3 {
		parr1 {Type I LastRead 0 FirstWrite -1}
		tm {Type O LastRead -1 FirstWrite 1}}
	montMult_words_1_1 {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 11 FirstWrite -1}
		gmem {Type I LastRead 24 FirstWrite -1}
		m {Type I LastRead 11 FirstWrite -1}
		mprime {Type I LastRead 11 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	montMult_words_1_1_Pipeline_VITIS_LOOP_28_1 {
		t {Type O LastRead -1 FirstWrite 0}}
	montMult_words_1_1_Pipeline_VITIS_LOOP_33_2 {
		t_load_77 {Type I LastRead 0 FirstWrite -1}
		t_load_76 {Type I LastRead 0 FirstWrite -1}
		t_load_75 {Type I LastRead 0 FirstWrite -1}
		t_load_74 {Type I LastRead 0 FirstWrite -1}
		t_load_73 {Type I LastRead 0 FirstWrite -1}
		t_load_72 {Type I LastRead 0 FirstWrite -1}
		t_load_71 {Type I LastRead 0 FirstWrite -1}
		t_load_70 {Type I LastRead 0 FirstWrite -1}
		t_load_69 {Type I LastRead 0 FirstWrite -1}
		t_load_68 {Type I LastRead 0 FirstWrite -1}
		t_load_67 {Type I LastRead 0 FirstWrite -1}
		t_load_66 {Type I LastRead 0 FirstWrite -1}
		t_load_65 {Type I LastRead 0 FirstWrite -1}
		t_load_64 {Type I LastRead 0 FirstWrite -1}
		t_load_63 {Type I LastRead 0 FirstWrite -1}
		t_load_62 {Type I LastRead 0 FirstWrite -1}
		t_load_61 {Type I LastRead 0 FirstWrite -1}
		t_load {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 24 FirstWrite -1}
		p_cast_cast {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		conv16 {Type I LastRead 0 FirstWrite -1}
		conv16_1 {Type I LastRead 0 FirstWrite -1}
		conv16_2 {Type I LastRead 0 FirstWrite -1}
		conv16_3 {Type I LastRead 0 FirstWrite -1}
		conv16_4 {Type I LastRead 0 FirstWrite -1}
		conv16_5 {Type I LastRead 0 FirstWrite -1}
		conv16_6 {Type I LastRead 0 FirstWrite -1}
		conv16_7 {Type I LastRead 0 FirstWrite -1}
		conv16_8 {Type I LastRead 0 FirstWrite -1}
		conv16_9 {Type I LastRead 0 FirstWrite -1}
		conv16_10 {Type I LastRead 0 FirstWrite -1}
		conv16_11 {Type I LastRead 0 FirstWrite -1}
		conv16_12 {Type I LastRead 0 FirstWrite -1}
		conv16_13 {Type I LastRead 0 FirstWrite -1}
		conv16_14 {Type I LastRead 0 FirstWrite -1}
		conv16_15 {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		add6822_out {Type O LastRead -1 FirstWrite 10}
		conv6321_out {Type O LastRead -1 FirstWrite 10}
		conv52_1520_out {Type O LastRead -1 FirstWrite 10}
		conv52_1419_out {Type O LastRead -1 FirstWrite 10}
		conv52_1318_out {Type O LastRead -1 FirstWrite 10}
		conv52_1217_out {Type O LastRead -1 FirstWrite 10}
		conv52_1116_out {Type O LastRead -1 FirstWrite 10}
		conv52_1015_out {Type O LastRead -1 FirstWrite 10}
		conv52_914_out {Type O LastRead -1 FirstWrite 10}
		conv52_813_out {Type O LastRead -1 FirstWrite 10}
		conv52_712_out {Type O LastRead -1 FirstWrite 10}
		conv52_611_out {Type O LastRead -1 FirstWrite 10}
		conv52_510_out {Type O LastRead -1 FirstWrite 10}
		conv52_49_out {Type O LastRead -1 FirstWrite 10}
		conv52_38_out {Type O LastRead -1 FirstWrite 10}
		conv52_27_out {Type O LastRead -1 FirstWrite 10}
		conv52_16_out {Type O LastRead -1 FirstWrite 10}}
	montMult_words_1_1_Pipeline_VITIS_LOOP_88_6 {
		t {Type I LastRead 1 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 10 FirstWrite -1}
		ge_04_out {Type O LastRead -1 FirstWrite 1}}
	montMult_words_1_1_Pipeline_VITIS_LOOP_98_7 {
		gmem {Type I LastRead 1 FirstWrite -1}
		p_cast_cast {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 1 FirstWrite -1}
		sub {Type O LastRead -1 FirstWrite 2}}
	montMult_words_1_1_Pipeline_VITIS_LOOP_107_8 {
		sub {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}
		mask {Type I LastRead 0 FirstWrite -1}
		neg {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_55_4 {
		zcand {Type I LastRead 0 FirstWrite -1}
		zarr1 {Type I LastRead 0 FirstWrite -1}
		zarr2 {Type O LastRead -1 FirstWrite 1}
		lshr_ln7 {Type I LastRead 0 FirstWrite -1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_58_5 {
		parr2 {Type I LastRead 0 FirstWrite -1}
		parr1 {Type O LastRead -1 FirstWrite 1}}
	rsa_modexp_hw_Pipeline_VITIS_LOOP_59_6 {
		zarr2 {Type I LastRead 0 FirstWrite -1}
		zarr1 {Type O LastRead -1 FirstWrite 1}}
	montMult_words_1_2 {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 11 FirstWrite -1}
		gmem {Type IO LastRead 37 FirstWrite -1}
		m {Type I LastRead 11 FirstWrite -1}
		mprime {Type I LastRead 11 FirstWrite -1}
		out_r {Type I LastRead 34 FirstWrite -1}}
	montMult_words_1_2_Pipeline_VITIS_LOOP_28_1 {
		t {Type O LastRead -1 FirstWrite 0}}
	montMult_words_1_2_Pipeline_VITIS_LOOP_33_2 {
		t_load_57 {Type I LastRead 0 FirstWrite -1}
		t_load_56 {Type I LastRead 0 FirstWrite -1}
		t_load_55 {Type I LastRead 0 FirstWrite -1}
		t_load_54 {Type I LastRead 0 FirstWrite -1}
		t_load_53 {Type I LastRead 0 FirstWrite -1}
		t_load_52 {Type I LastRead 0 FirstWrite -1}
		t_load_51 {Type I LastRead 0 FirstWrite -1}
		t_load_50 {Type I LastRead 0 FirstWrite -1}
		t_load_49 {Type I LastRead 0 FirstWrite -1}
		t_load_48 {Type I LastRead 0 FirstWrite -1}
		t_load_47 {Type I LastRead 0 FirstWrite -1}
		t_load_46 {Type I LastRead 0 FirstWrite -1}
		t_load_45 {Type I LastRead 0 FirstWrite -1}
		t_load_44 {Type I LastRead 0 FirstWrite -1}
		t_load_43 {Type I LastRead 0 FirstWrite -1}
		t_load_42 {Type I LastRead 0 FirstWrite -1}
		t_load_41 {Type I LastRead 0 FirstWrite -1}
		t_load {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 24 FirstWrite -1}
		p_cast_cast {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		sext_ln39 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln39_15 {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		add6822_out {Type O LastRead -1 FirstWrite 9}
		conv6321_out {Type O LastRead -1 FirstWrite 9}
		conv52_1520_out {Type O LastRead -1 FirstWrite 9}
		conv52_1419_out {Type O LastRead -1 FirstWrite 9}
		conv52_1318_out {Type O LastRead -1 FirstWrite 9}
		conv52_1217_out {Type O LastRead -1 FirstWrite 9}
		conv52_1116_out {Type O LastRead -1 FirstWrite 9}
		conv52_1015_out {Type O LastRead -1 FirstWrite 9}
		conv52_914_out {Type O LastRead -1 FirstWrite 9}
		conv52_813_out {Type O LastRead -1 FirstWrite 9}
		conv52_712_out {Type O LastRead -1 FirstWrite 9}
		conv52_611_out {Type O LastRead -1 FirstWrite 9}
		conv52_510_out {Type O LastRead -1 FirstWrite 9}
		conv52_49_out {Type O LastRead -1 FirstWrite 9}
		conv52_38_out {Type O LastRead -1 FirstWrite 9}
		conv52_27_out {Type O LastRead -1 FirstWrite 9}
		conv52_16_out {Type O LastRead -1 FirstWrite 9}}
	montMult_words_1_2_Pipeline_VITIS_LOOP_88_6 {
		t {Type I LastRead 1 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 10 FirstWrite -1}
		ge_04_out {Type O LastRead -1 FirstWrite 1}}
	montMult_words_1_2_Pipeline_VITIS_LOOP_98_7 {
		gmem {Type I LastRead 1 FirstWrite -1}
		p_cast_cast {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 1 FirstWrite -1}
		sub {Type O LastRead -1 FirstWrite 2}}
	montMult_words_1_2_Pipeline_VITIS_LOOP_107_8 {
		gmem {Type O LastRead -1 FirstWrite 2}
		sext_ln107 {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}
		mask {Type I LastRead 0 FirstWrite -1}
		neg {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "574030", "Max" : "574030"}
	, {"Name" : "Interval", "Min" : "574031", "Max" : "574031"}
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
