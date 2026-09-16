set moduleName montMult_words_1_1_Pipeline_VITIS_LOOP_33_2
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
set cdfgNum 32
set C_modelName {montMult_words.1.1_Pipeline_VITIS_LOOP_33_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict x { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ t_load_77 int 32 regular  }
	{ t_load_76 int 32 regular  }
	{ t_load_75 int 32 regular  }
	{ t_load_74 int 32 regular  }
	{ t_load_73 int 32 regular  }
	{ t_load_72 int 32 regular  }
	{ t_load_71 int 32 regular  }
	{ t_load_70 int 32 regular  }
	{ t_load_69 int 32 regular  }
	{ t_load_68 int 32 regular  }
	{ t_load_67 int 32 regular  }
	{ t_load_66 int 32 regular  }
	{ t_load_65 int 32 regular  }
	{ t_load_64 int 32 regular  }
	{ t_load_63 int 32 regular  }
	{ t_load_62 int 32 regular  }
	{ t_load_61 int 32 regular  }
	{ t_load int 32 regular  }
	{ gmem int 32 regular {axi_master 0}  }
	{ p_cast_cast int 62 regular  }
	{ x int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ conv16 int 32 regular  }
	{ conv16_1 int 32 regular  }
	{ conv16_2 int 32 regular  }
	{ conv16_3 int 32 regular  }
	{ conv16_4 int 32 regular  }
	{ conv16_5 int 32 regular  }
	{ conv16_6 int 32 regular  }
	{ conv16_7 int 32 regular  }
	{ conv16_8 int 32 regular  }
	{ conv16_9 int 32 regular  }
	{ conv16_10 int 32 regular  }
	{ conv16_11 int 32 regular  }
	{ conv16_12 int 32 regular  }
	{ conv16_13 int 32 regular  }
	{ conv16_14 int 32 regular  }
	{ conv16_15 int 32 regular  }
	{ mprime int 32 regular  }
	{ add6822_out int 32 regular {pointer 1}  }
	{ conv6321_out int 32 regular {pointer 1}  }
	{ conv52_1520_out int 32 regular {pointer 1}  }
	{ conv52_1419_out int 32 regular {pointer 1}  }
	{ conv52_1318_out int 32 regular {pointer 1}  }
	{ conv52_1217_out int 32 regular {pointer 1}  }
	{ conv52_1116_out int 32 regular {pointer 1}  }
	{ conv52_1015_out int 32 regular {pointer 1}  }
	{ conv52_914_out int 32 regular {pointer 1}  }
	{ conv52_813_out int 32 regular {pointer 1}  }
	{ conv52_712_out int 32 regular {pointer 1}  }
	{ conv52_611_out int 32 regular {pointer 1}  }
	{ conv52_510_out int 32 regular {pointer 1}  }
	{ conv52_49_out int 32 regular {pointer 1}  }
	{ conv52_38_out int 32 regular {pointer 1}  }
	{ conv52_27_out int 32 regular {pointer 1}  }
	{ conv52_16_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "t_load_77", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_76", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_75", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_74", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_73", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_72", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_71", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_70", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_69", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_68", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_67", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_65", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_64", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_63", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_62", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_61", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "control_r"},"direction": "READONLY"},{"cName": "d","offset": { "type": "dynamic","port_name": "d","bundle": "control_r"},"direction": "READONLY"},{"cName": "m","offset": { "type": "dynamic","port_name": "m","bundle": "control_r"},"direction": "READONLY"},{"cName": "r2m","offset": { "type": "dynamic","port_name": "r2m","bundle": "control_r"},"direction": "READONLY"},{"cName": "p","offset": { "type": "dynamic","port_name": "p","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "p_cast_cast", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv16_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add6822_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv6321_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_1520_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_1419_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_1318_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_1217_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_1116_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_1015_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_914_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_813_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_712_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_611_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_510_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_49_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_38_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv52_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 125
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 18 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 9 signal 18 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 18 } 
	{ t_load_77 sc_in sc_lv 32 signal 0 } 
	{ t_load_76 sc_in sc_lv 32 signal 1 } 
	{ t_load_75 sc_in sc_lv 32 signal 2 } 
	{ t_load_74 sc_in sc_lv 32 signal 3 } 
	{ t_load_73 sc_in sc_lv 32 signal 4 } 
	{ t_load_72 sc_in sc_lv 32 signal 5 } 
	{ t_load_71 sc_in sc_lv 32 signal 6 } 
	{ t_load_70 sc_in sc_lv 32 signal 7 } 
	{ t_load_69 sc_in sc_lv 32 signal 8 } 
	{ t_load_68 sc_in sc_lv 32 signal 9 } 
	{ t_load_67 sc_in sc_lv 32 signal 10 } 
	{ t_load_66 sc_in sc_lv 32 signal 11 } 
	{ t_load_65 sc_in sc_lv 32 signal 12 } 
	{ t_load_64 sc_in sc_lv 32 signal 13 } 
	{ t_load_63 sc_in sc_lv 32 signal 14 } 
	{ t_load_62 sc_in sc_lv 32 signal 15 } 
	{ t_load_61 sc_in sc_lv 32 signal 16 } 
	{ t_load sc_in sc_lv 32 signal 17 } 
	{ p_cast_cast sc_in sc_lv 62 signal 19 } 
	{ x_address0 sc_out sc_lv 4 signal 20 } 
	{ x_ce0 sc_out sc_logic 1 signal 20 } 
	{ x_q0 sc_in sc_lv 32 signal 20 } 
	{ conv16 sc_in sc_lv 32 signal 21 } 
	{ conv16_1 sc_in sc_lv 32 signal 22 } 
	{ conv16_2 sc_in sc_lv 32 signal 23 } 
	{ conv16_3 sc_in sc_lv 32 signal 24 } 
	{ conv16_4 sc_in sc_lv 32 signal 25 } 
	{ conv16_5 sc_in sc_lv 32 signal 26 } 
	{ conv16_6 sc_in sc_lv 32 signal 27 } 
	{ conv16_7 sc_in sc_lv 32 signal 28 } 
	{ conv16_8 sc_in sc_lv 32 signal 29 } 
	{ conv16_9 sc_in sc_lv 32 signal 30 } 
	{ conv16_10 sc_in sc_lv 32 signal 31 } 
	{ conv16_11 sc_in sc_lv 32 signal 32 } 
	{ conv16_12 sc_in sc_lv 32 signal 33 } 
	{ conv16_13 sc_in sc_lv 32 signal 34 } 
	{ conv16_14 sc_in sc_lv 32 signal 35 } 
	{ conv16_15 sc_in sc_lv 32 signal 36 } 
	{ mprime sc_in sc_lv 32 signal 37 } 
	{ add6822_out sc_out sc_lv 32 signal 38 } 
	{ add6822_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ conv6321_out sc_out sc_lv 32 signal 39 } 
	{ conv6321_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ conv52_1520_out sc_out sc_lv 32 signal 40 } 
	{ conv52_1520_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ conv52_1419_out sc_out sc_lv 32 signal 41 } 
	{ conv52_1419_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ conv52_1318_out sc_out sc_lv 32 signal 42 } 
	{ conv52_1318_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ conv52_1217_out sc_out sc_lv 32 signal 43 } 
	{ conv52_1217_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ conv52_1116_out sc_out sc_lv 32 signal 44 } 
	{ conv52_1116_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ conv52_1015_out sc_out sc_lv 32 signal 45 } 
	{ conv52_1015_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ conv52_914_out sc_out sc_lv 32 signal 46 } 
	{ conv52_914_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ conv52_813_out sc_out sc_lv 32 signal 47 } 
	{ conv52_813_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ conv52_712_out sc_out sc_lv 32 signal 48 } 
	{ conv52_712_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ conv52_611_out sc_out sc_lv 32 signal 49 } 
	{ conv52_611_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ conv52_510_out sc_out sc_lv 32 signal 50 } 
	{ conv52_510_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ conv52_49_out sc_out sc_lv 32 signal 51 } 
	{ conv52_49_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ conv52_38_out sc_out sc_lv 32 signal 52 } 
	{ conv52_38_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ conv52_27_out sc_out sc_lv 32 signal 53 } 
	{ conv52_27_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ conv52_16_out sc_out sc_lv 32 signal 54 } 
	{ conv52_16_out_ap_vld sc_out sc_logic 1 outvld 54 } 
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
 	{ "name": "t_load_77", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_77", "role": "default" }} , 
 	{ "name": "t_load_76", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_76", "role": "default" }} , 
 	{ "name": "t_load_75", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_75", "role": "default" }} , 
 	{ "name": "t_load_74", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_74", "role": "default" }} , 
 	{ "name": "t_load_73", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_73", "role": "default" }} , 
 	{ "name": "t_load_72", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_72", "role": "default" }} , 
 	{ "name": "t_load_71", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_71", "role": "default" }} , 
 	{ "name": "t_load_70", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_70", "role": "default" }} , 
 	{ "name": "t_load_69", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_69", "role": "default" }} , 
 	{ "name": "t_load_68", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_68", "role": "default" }} , 
 	{ "name": "t_load_67", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_67", "role": "default" }} , 
 	{ "name": "t_load_66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_66", "role": "default" }} , 
 	{ "name": "t_load_65", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_65", "role": "default" }} , 
 	{ "name": "t_load_64", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_64", "role": "default" }} , 
 	{ "name": "t_load_63", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_63", "role": "default" }} , 
 	{ "name": "t_load_62", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_62", "role": "default" }} , 
 	{ "name": "t_load_61", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_61", "role": "default" }} , 
 	{ "name": "t_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load", "role": "default" }} , 
 	{ "name": "p_cast_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "p_cast_cast", "role": "default" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "conv16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16", "role": "default" }} , 
 	{ "name": "conv16_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_1", "role": "default" }} , 
 	{ "name": "conv16_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_2", "role": "default" }} , 
 	{ "name": "conv16_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_3", "role": "default" }} , 
 	{ "name": "conv16_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_4", "role": "default" }} , 
 	{ "name": "conv16_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_5", "role": "default" }} , 
 	{ "name": "conv16_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_6", "role": "default" }} , 
 	{ "name": "conv16_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_7", "role": "default" }} , 
 	{ "name": "conv16_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_8", "role": "default" }} , 
 	{ "name": "conv16_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_9", "role": "default" }} , 
 	{ "name": "conv16_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_10", "role": "default" }} , 
 	{ "name": "conv16_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_11", "role": "default" }} , 
 	{ "name": "conv16_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_12", "role": "default" }} , 
 	{ "name": "conv16_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_13", "role": "default" }} , 
 	{ "name": "conv16_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_14", "role": "default" }} , 
 	{ "name": "conv16_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv16_15", "role": "default" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }} , 
 	{ "name": "add6822_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add6822_out", "role": "default" }} , 
 	{ "name": "add6822_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add6822_out", "role": "ap_vld" }} , 
 	{ "name": "conv6321_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv6321_out", "role": "default" }} , 
 	{ "name": "conv6321_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv6321_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_1520_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_1520_out", "role": "default" }} , 
 	{ "name": "conv52_1520_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_1520_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_1419_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_1419_out", "role": "default" }} , 
 	{ "name": "conv52_1419_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_1419_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_1318_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_1318_out", "role": "default" }} , 
 	{ "name": "conv52_1318_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_1318_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_1217_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_1217_out", "role": "default" }} , 
 	{ "name": "conv52_1217_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_1217_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_1116_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_1116_out", "role": "default" }} , 
 	{ "name": "conv52_1116_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_1116_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_1015_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_1015_out", "role": "default" }} , 
 	{ "name": "conv52_1015_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_1015_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_914_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_914_out", "role": "default" }} , 
 	{ "name": "conv52_914_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_914_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_813_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_813_out", "role": "default" }} , 
 	{ "name": "conv52_813_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_813_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_712_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_712_out", "role": "default" }} , 
 	{ "name": "conv52_712_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_712_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_611_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_611_out", "role": "default" }} , 
 	{ "name": "conv52_611_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_611_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_510_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_510_out", "role": "default" }} , 
 	{ "name": "conv52_510_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_510_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_49_out", "role": "default" }} , 
 	{ "name": "conv52_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_49_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_38_out", "role": "default" }} , 
 	{ "name": "conv52_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_38_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_27_out", "role": "default" }} , 
 	{ "name": "conv52_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_27_out", "role": "ap_vld" }} , 
 	{ "name": "conv52_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv52_16_out", "role": "default" }} , 
 	{ "name": "conv52_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv52_16_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U134", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U135", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U136", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U137", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		conv52_16_out {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "268", "Max" : "268"}
	, {"Name" : "Interval", "Min" : "268", "Max" : "268"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t_load_77 { ap_none {  { t_load_77 in_data 0 32 } } }
	t_load_76 { ap_none {  { t_load_76 in_data 0 32 } } }
	t_load_75 { ap_none {  { t_load_75 in_data 0 32 } } }
	t_load_74 { ap_none {  { t_load_74 in_data 0 32 } } }
	t_load_73 { ap_none {  { t_load_73 in_data 0 32 } } }
	t_load_72 { ap_none {  { t_load_72 in_data 0 32 } } }
	t_load_71 { ap_none {  { t_load_71 in_data 0 32 } } }
	t_load_70 { ap_none {  { t_load_70 in_data 0 32 } } }
	t_load_69 { ap_none {  { t_load_69 in_data 0 32 } } }
	t_load_68 { ap_none {  { t_load_68 in_data 0 32 } } }
	t_load_67 { ap_none {  { t_load_67 in_data 0 32 } } }
	t_load_66 { ap_none {  { t_load_66 in_data 0 32 } } }
	t_load_65 { ap_none {  { t_load_65 in_data 0 32 } } }
	t_load_64 { ap_none {  { t_load_64 in_data 0 32 } } }
	t_load_63 { ap_none {  { t_load_63 in_data 0 32 } } }
	t_load_62 { ap_none {  { t_load_62 in_data 0 32 } } }
	t_load_61 { ap_none {  { t_load_61 in_data 0 32 } } }
	t_load { ap_none {  { t_load in_data 0 32 } } }
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	p_cast_cast { ap_none {  { p_cast_cast in_data 0 62 } } }
	x { ap_memory {  { x_address0 mem_address 1 4 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 32 } } }
	conv16 { ap_none {  { conv16 in_data 0 32 } } }
	conv16_1 { ap_none {  { conv16_1 in_data 0 32 } } }
	conv16_2 { ap_none {  { conv16_2 in_data 0 32 } } }
	conv16_3 { ap_none {  { conv16_3 in_data 0 32 } } }
	conv16_4 { ap_none {  { conv16_4 in_data 0 32 } } }
	conv16_5 { ap_none {  { conv16_5 in_data 0 32 } } }
	conv16_6 { ap_none {  { conv16_6 in_data 0 32 } } }
	conv16_7 { ap_none {  { conv16_7 in_data 0 32 } } }
	conv16_8 { ap_none {  { conv16_8 in_data 0 32 } } }
	conv16_9 { ap_none {  { conv16_9 in_data 0 32 } } }
	conv16_10 { ap_none {  { conv16_10 in_data 0 32 } } }
	conv16_11 { ap_none {  { conv16_11 in_data 0 32 } } }
	conv16_12 { ap_none {  { conv16_12 in_data 0 32 } } }
	conv16_13 { ap_none {  { conv16_13 in_data 0 32 } } }
	conv16_14 { ap_none {  { conv16_14 in_data 0 32 } } }
	conv16_15 { ap_none {  { conv16_15 in_data 0 32 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
	add6822_out { ap_vld {  { add6822_out out_data 1 32 }  { add6822_out_ap_vld out_vld 1 1 } } }
	conv6321_out { ap_vld {  { conv6321_out out_data 1 32 }  { conv6321_out_ap_vld out_vld 1 1 } } }
	conv52_1520_out { ap_vld {  { conv52_1520_out out_data 1 32 }  { conv52_1520_out_ap_vld out_vld 1 1 } } }
	conv52_1419_out { ap_vld {  { conv52_1419_out out_data 1 32 }  { conv52_1419_out_ap_vld out_vld 1 1 } } }
	conv52_1318_out { ap_vld {  { conv52_1318_out out_data 1 32 }  { conv52_1318_out_ap_vld out_vld 1 1 } } }
	conv52_1217_out { ap_vld {  { conv52_1217_out out_data 1 32 }  { conv52_1217_out_ap_vld out_vld 1 1 } } }
	conv52_1116_out { ap_vld {  { conv52_1116_out out_data 1 32 }  { conv52_1116_out_ap_vld out_vld 1 1 } } }
	conv52_1015_out { ap_vld {  { conv52_1015_out out_data 1 32 }  { conv52_1015_out_ap_vld out_vld 1 1 } } }
	conv52_914_out { ap_vld {  { conv52_914_out out_data 1 32 }  { conv52_914_out_ap_vld out_vld 1 1 } } }
	conv52_813_out { ap_vld {  { conv52_813_out out_data 1 32 }  { conv52_813_out_ap_vld out_vld 1 1 } } }
	conv52_712_out { ap_vld {  { conv52_712_out out_data 1 32 }  { conv52_712_out_ap_vld out_vld 1 1 } } }
	conv52_611_out { ap_vld {  { conv52_611_out out_data 1 32 }  { conv52_611_out_ap_vld out_vld 1 1 } } }
	conv52_510_out { ap_vld {  { conv52_510_out out_data 1 32 }  { conv52_510_out_ap_vld out_vld 1 1 } } }
	conv52_49_out { ap_vld {  { conv52_49_out out_data 1 32 }  { conv52_49_out_ap_vld out_vld 1 1 } } }
	conv52_38_out { ap_vld {  { conv52_38_out out_data 1 32 }  { conv52_38_out_ap_vld out_vld 1 1 } } }
	conv52_27_out { ap_vld {  { conv52_27_out out_data 1 32 }  { conv52_27_out_ap_vld out_vld 1 1 } } }
	conv52_16_out { ap_vld {  { conv52_16_out out_data 1 32 }  { conv52_16_out_ap_vld out_vld 1 1 } } }
}
