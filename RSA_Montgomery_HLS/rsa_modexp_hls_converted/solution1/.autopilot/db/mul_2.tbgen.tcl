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
set cdfgNum 17
set C_modelName {mul.2}
set C_modelType { int 512 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ a_read int 32 regular  }
	{ a_read_106 int 32 regular  }
	{ a_read_107 int 32 regular  }
	{ a_read_108 int 32 regular  }
	{ a_read_109 int 32 regular  }
	{ a_read_110 int 32 regular  }
	{ a_read_111 int 32 regular  }
	{ a_read_112 int 32 regular  }
	{ a_read_113 int 32 regular  }
	{ a_read_114 int 32 regular  }
	{ a_read_115 int 32 regular  }
	{ a_read_116 int 32 regular  }
	{ a_read_117 int 32 regular  }
	{ a_read_118 int 32 regular  }
	{ a_read_119 int 32 regular  }
	{ a_read_120 int 32 regular  }
	{ b_read int 32 regular  }
	{ b_read_46 int 32 regular  }
	{ b_read_47 int 32 regular  }
	{ b_read_48 int 32 regular  }
	{ b_read_49 int 32 regular  }
	{ b_read_50 int 32 regular  }
	{ b_read_51 int 32 regular  }
	{ b_read_52 int 32 regular  }
	{ b_read_53 int 32 regular  }
	{ b_read_54 int 32 regular  }
	{ b_read_55 int 32 regular  }
	{ b_read_56 int 32 regular  }
	{ b_read_57 int 32 regular  }
	{ b_read_58 int 32 regular  }
	{ b_read_59 int 32 regular  }
	{ b_read_60 int 32 regular  }
	{ gmem int 32 regular {axi_master 0}  }
	{ mod_r int 64 regular  }
	{ mprime int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_106", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_107", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_108", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_109", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_110", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_111", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_112", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_113", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_114", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_115", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_116", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_117", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_118", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_119", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_read_120", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_49", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_50", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_51", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_52", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_53", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_54", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_55", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_56", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_57", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_58", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_59", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_read_60", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control_r"},"direction": "READONLY"},{"cName": "d","offset": { "type": "dynamic","port_name": "d","bundle": "control_r"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control_r"},"direction": "READONLY"},{"cName": "r2m","offset": { "type": "dynamic","port_name": "r2m","bundle": "control_r"},"direction": "READONLY"},{"cName": "p","offset": { "type": "dynamic","port_name": "p","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "mod_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ a_read sc_in sc_lv 32 signal 0 } 
	{ a_read_106 sc_in sc_lv 32 signal 1 } 
	{ a_read_107 sc_in sc_lv 32 signal 2 } 
	{ a_read_108 sc_in sc_lv 32 signal 3 } 
	{ a_read_109 sc_in sc_lv 32 signal 4 } 
	{ a_read_110 sc_in sc_lv 32 signal 5 } 
	{ a_read_111 sc_in sc_lv 32 signal 6 } 
	{ a_read_112 sc_in sc_lv 32 signal 7 } 
	{ a_read_113 sc_in sc_lv 32 signal 8 } 
	{ a_read_114 sc_in sc_lv 32 signal 9 } 
	{ a_read_115 sc_in sc_lv 32 signal 10 } 
	{ a_read_116 sc_in sc_lv 32 signal 11 } 
	{ a_read_117 sc_in sc_lv 32 signal 12 } 
	{ a_read_118 sc_in sc_lv 32 signal 13 } 
	{ a_read_119 sc_in sc_lv 32 signal 14 } 
	{ a_read_120 sc_in sc_lv 32 signal 15 } 
	{ b_read sc_in sc_lv 32 signal 16 } 
	{ b_read_46 sc_in sc_lv 32 signal 17 } 
	{ b_read_47 sc_in sc_lv 32 signal 18 } 
	{ b_read_48 sc_in sc_lv 32 signal 19 } 
	{ b_read_49 sc_in sc_lv 32 signal 20 } 
	{ b_read_50 sc_in sc_lv 32 signal 21 } 
	{ b_read_51 sc_in sc_lv 32 signal 22 } 
	{ b_read_52 sc_in sc_lv 32 signal 23 } 
	{ b_read_53 sc_in sc_lv 32 signal 24 } 
	{ b_read_54 sc_in sc_lv 32 signal 25 } 
	{ b_read_55 sc_in sc_lv 32 signal 26 } 
	{ b_read_56 sc_in sc_lv 32 signal 27 } 
	{ b_read_57 sc_in sc_lv 32 signal 28 } 
	{ b_read_58 sc_in sc_lv 32 signal 29 } 
	{ b_read_59 sc_in sc_lv 32 signal 30 } 
	{ b_read_60 sc_in sc_lv 32 signal 31 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 32 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 32 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 32 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 32 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 32 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 32 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 32 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 32 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 32 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 32 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 32 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 32 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 32 } 
	{ mod_r sc_in sc_lv 64 signal 33 } 
	{ mprime sc_in sc_lv 32 signal 34 } 
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
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "a_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read", "role": "default" }} , 
 	{ "name": "a_read_106", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_106", "role": "default" }} , 
 	{ "name": "a_read_107", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_107", "role": "default" }} , 
 	{ "name": "a_read_108", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_108", "role": "default" }} , 
 	{ "name": "a_read_109", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_109", "role": "default" }} , 
 	{ "name": "a_read_110", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_110", "role": "default" }} , 
 	{ "name": "a_read_111", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_111", "role": "default" }} , 
 	{ "name": "a_read_112", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_112", "role": "default" }} , 
 	{ "name": "a_read_113", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_113", "role": "default" }} , 
 	{ "name": "a_read_114", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_114", "role": "default" }} , 
 	{ "name": "a_read_115", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_115", "role": "default" }} , 
 	{ "name": "a_read_116", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_116", "role": "default" }} , 
 	{ "name": "a_read_117", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_117", "role": "default" }} , 
 	{ "name": "a_read_118", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_118", "role": "default" }} , 
 	{ "name": "a_read_119", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_119", "role": "default" }} , 
 	{ "name": "a_read_120", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_read_120", "role": "default" }} , 
 	{ "name": "b_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read", "role": "default" }} , 
 	{ "name": "b_read_46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_46", "role": "default" }} , 
 	{ "name": "b_read_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_47", "role": "default" }} , 
 	{ "name": "b_read_48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_48", "role": "default" }} , 
 	{ "name": "b_read_49", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_49", "role": "default" }} , 
 	{ "name": "b_read_50", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_50", "role": "default" }} , 
 	{ "name": "b_read_51", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_51", "role": "default" }} , 
 	{ "name": "b_read_52", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_52", "role": "default" }} , 
 	{ "name": "b_read_53", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_53", "role": "default" }} , 
 	{ "name": "b_read_54", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_54", "role": "default" }} , 
 	{ "name": "b_read_55", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_55", "role": "default" }} , 
 	{ "name": "b_read_56", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_56", "role": "default" }} , 
 	{ "name": "b_read_57", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_57", "role": "default" }} , 
 	{ "name": "b_read_58", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_58", "role": "default" }} , 
 	{ "name": "b_read_59", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_59", "role": "default" }} , 
 	{ "name": "b_read_60", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_read_60", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "49", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_107", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_108", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_109", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_112", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_113", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_114", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_115", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_116", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_117", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_118", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_119", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_120", "Type" : "None", "Direction" : "I"},
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
					{"Name" : "gmem_blk_n_R", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_5_fu_296", "Port" : "gmem"}]},
			{"Name" : "mod_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_mul_5_fu_296", "SubBlockPort" : ["gmem_blk_n_AR", "gmem_blk_n_R"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "mul_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "16",
		"VariableLatency" : "0", "ExactLatency" : "49", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_60", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U139", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U140", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U141", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U142", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U143", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U144", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U145", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U146", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U147", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U148", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U149", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U150", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U151", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U152", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U153", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U154", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U155", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U156", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U157", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U158", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U159", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U160", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U161", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U162", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U163", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U164", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U165", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U166", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U167", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U168", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U169", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U170", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32ns_32ns_64_1_1_U171", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32s_32s_32_1_1_U172", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_5_fu_296.mul_32s_32s_32_1_1_U173", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	mul_2 {
		a_read {Type I LastRead 0 FirstWrite -1}
		a_read_106 {Type I LastRead 0 FirstWrite -1}
		a_read_107 {Type I LastRead 0 FirstWrite -1}
		a_read_108 {Type I LastRead 0 FirstWrite -1}
		a_read_109 {Type I LastRead 0 FirstWrite -1}
		a_read_110 {Type I LastRead 0 FirstWrite -1}
		a_read_111 {Type I LastRead 0 FirstWrite -1}
		a_read_112 {Type I LastRead 0 FirstWrite -1}
		a_read_113 {Type I LastRead 0 FirstWrite -1}
		a_read_114 {Type I LastRead 0 FirstWrite -1}
		a_read_115 {Type I LastRead 0 FirstWrite -1}
		a_read_116 {Type I LastRead 0 FirstWrite -1}
		a_read_117 {Type I LastRead 0 FirstWrite -1}
		a_read_118 {Type I LastRead 0 FirstWrite -1}
		a_read_119 {Type I LastRead 0 FirstWrite -1}
		a_read_120 {Type I LastRead 0 FirstWrite -1}
		b_read {Type I LastRead 0 FirstWrite -1}
		b_read_46 {Type I LastRead 0 FirstWrite -1}
		b_read_47 {Type I LastRead 0 FirstWrite -1}
		b_read_48 {Type I LastRead 0 FirstWrite -1}
		b_read_49 {Type I LastRead 0 FirstWrite -1}
		b_read_50 {Type I LastRead 0 FirstWrite -1}
		b_read_51 {Type I LastRead 0 FirstWrite -1}
		b_read_52 {Type I LastRead 0 FirstWrite -1}
		b_read_53 {Type I LastRead 0 FirstWrite -1}
		b_read_54 {Type I LastRead 0 FirstWrite -1}
		b_read_55 {Type I LastRead 0 FirstWrite -1}
		b_read_56 {Type I LastRead 0 FirstWrite -1}
		b_read_57 {Type I LastRead 0 FirstWrite -1}
		b_read_58 {Type I LastRead 0 FirstWrite -1}
		b_read_59 {Type I LastRead 0 FirstWrite -1}
		b_read_60 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}
	mul_5 {
		a_read {Type I LastRead 0 FirstWrite -1}
		a_read_46 {Type I LastRead 0 FirstWrite -1}
		a_read_47 {Type I LastRead 0 FirstWrite -1}
		a_read_48 {Type I LastRead 0 FirstWrite -1}
		a_read_49 {Type I LastRead 0 FirstWrite -1}
		a_read_50 {Type I LastRead 0 FirstWrite -1}
		a_read_51 {Type I LastRead 0 FirstWrite -1}
		a_read_52 {Type I LastRead 0 FirstWrite -1}
		a_read_53 {Type I LastRead 1 FirstWrite -1}
		a_read_54 {Type I LastRead 1 FirstWrite -1}
		a_read_55 {Type I LastRead 1 FirstWrite -1}
		a_read_56 {Type I LastRead 2 FirstWrite -1}
		a_read_57 {Type I LastRead 2 FirstWrite -1}
		a_read_58 {Type I LastRead 3 FirstWrite -1}
		a_read_59 {Type I LastRead 4 FirstWrite -1}
		a_read_60 {Type I LastRead 4 FirstWrite -1}
		b_read {Type I LastRead 0 FirstWrite -1}
		b_read_16 {Type I LastRead 0 FirstWrite -1}
		b_read_17 {Type I LastRead 0 FirstWrite -1}
		b_read_18 {Type I LastRead 0 FirstWrite -1}
		b_read_19 {Type I LastRead 0 FirstWrite -1}
		b_read_20 {Type I LastRead 0 FirstWrite -1}
		b_read_21 {Type I LastRead 0 FirstWrite -1}
		b_read_22 {Type I LastRead 1 FirstWrite -1}
		b_read_23 {Type I LastRead 1 FirstWrite -1}
		b_read_24 {Type I LastRead 2 FirstWrite -1}
		b_read_25 {Type I LastRead 2 FirstWrite -1}
		b_read_26 {Type I LastRead 3 FirstWrite -1}
		b_read_27 {Type I LastRead 4 FirstWrite -1}
		b_read_28 {Type I LastRead 5 FirstWrite -1}
		b_read_29 {Type I LastRead 6 FirstWrite -1}
		b_read_30 {Type I LastRead 8 FirstWrite -1}
		gmem {Type I LastRead 23 FirstWrite -1}
		mod_r {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "49"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_read { ap_none {  { a_read in_data 0 32 } } }
	a_read_106 { ap_none {  { a_read_106 in_data 0 32 } } }
	a_read_107 { ap_none {  { a_read_107 in_data 0 32 } } }
	a_read_108 { ap_none {  { a_read_108 in_data 0 32 } } }
	a_read_109 { ap_none {  { a_read_109 in_data 0 32 } } }
	a_read_110 { ap_none {  { a_read_110 in_data 0 32 } } }
	a_read_111 { ap_none {  { a_read_111 in_data 0 32 } } }
	a_read_112 { ap_none {  { a_read_112 in_data 0 32 } } }
	a_read_113 { ap_none {  { a_read_113 in_data 0 32 } } }
	a_read_114 { ap_none {  { a_read_114 in_data 0 32 } } }
	a_read_115 { ap_none {  { a_read_115 in_data 0 32 } } }
	a_read_116 { ap_none {  { a_read_116 in_data 0 32 } } }
	a_read_117 { ap_none {  { a_read_117 in_data 0 32 } } }
	a_read_118 { ap_none {  { a_read_118 in_data 0 32 } } }
	a_read_119 { ap_none {  { a_read_119 in_data 0 32 } } }
	a_read_120 { ap_none {  { a_read_120 in_data 0 32 } } }
	b_read { ap_none {  { b_read in_data 0 32 } } }
	b_read_46 { ap_none {  { b_read_46 in_data 0 32 } } }
	b_read_47 { ap_none {  { b_read_47 in_data 0 32 } } }
	b_read_48 { ap_none {  { b_read_48 in_data 0 32 } } }
	b_read_49 { ap_none {  { b_read_49 in_data 0 32 } } }
	b_read_50 { ap_none {  { b_read_50 in_data 0 32 } } }
	b_read_51 { ap_none {  { b_read_51 in_data 0 32 } } }
	b_read_52 { ap_none {  { b_read_52 in_data 0 32 } } }
	b_read_53 { ap_none {  { b_read_53 in_data 0 32 } } }
	b_read_54 { ap_none {  { b_read_54 in_data 0 32 } } }
	b_read_55 { ap_none {  { b_read_55 in_data 0 32 } } }
	b_read_56 { ap_none {  { b_read_56 in_data 0 32 } } }
	b_read_57 { ap_none {  { b_read_57 in_data 0 32 } } }
	b_read_58 { ap_none {  { b_read_58 in_data 0 32 } } }
	b_read_59 { ap_none {  { b_read_59 in_data 0 32 } } }
	b_read_60 { ap_none {  { b_read_60 in_data 0 32 } } }
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	mod_r { ap_none {  { mod_r in_data 0 64 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
}
