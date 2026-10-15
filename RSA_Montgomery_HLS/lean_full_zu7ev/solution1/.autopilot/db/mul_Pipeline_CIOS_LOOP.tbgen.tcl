set moduleName mul_Pipeline_CIOS_LOOP
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
set cdfgNum 18
set C_modelName {mul_Pipeline_CIOS_LOOP}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict b { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ empty int 5 regular  }
	{ b int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ conv13 int 32 regular  }
	{ conv13_1 int 32 regular  }
	{ conv13_2 int 32 regular  }
	{ conv13_3 int 32 regular  }
	{ conv13_4 int 32 regular  }
	{ conv13_5 int 32 regular  }
	{ conv13_6 int 32 regular  }
	{ conv13_7 int 32 regular  }
	{ conv13_8 int 32 regular  }
	{ conv13_9 int 32 regular  }
	{ conv13_10 int 32 regular  }
	{ conv13_11 int 32 regular  }
	{ conv13_12 int 32 regular  }
	{ conv13_13 int 32 regular  }
	{ conv13_14 int 32 regular  }
	{ conv13_15 int 32 regular  }
	{ mprime int 32 regular  }
	{ conv46 int 32 regular  }
	{ conv62 int 32 regular  }
	{ conv62_1 int 32 regular  }
	{ conv62_2 int 32 regular  }
	{ conv62_3 int 32 regular  }
	{ conv62_4 int 32 regular  }
	{ conv62_5 int 32 regular  }
	{ conv62_6 int 32 regular  }
	{ conv62_7 int 32 regular  }
	{ conv62_8 int 32 regular  }
	{ conv62_9 int 32 regular  }
	{ conv62_10 int 32 regular  }
	{ conv62_11 int 32 regular  }
	{ conv62_12 int 32 regular  }
	{ conv62_13 int 32 regular  }
	{ conv62_14 int 32 regular  }
	{ conv8525_out int 2 regular {pointer 1}  }
	{ p_out int 32 regular {pointer 1}  }
	{ conv67_1424_out int 32 regular {pointer 1}  }
	{ conv67_1323_out int 32 regular {pointer 1}  }
	{ conv67_1222_out int 32 regular {pointer 1}  }
	{ conv67_1121_out int 32 regular {pointer 1}  }
	{ conv67_1020_out int 32 regular {pointer 1}  }
	{ conv67_919_out int 32 regular {pointer 1}  }
	{ conv67_818_out int 32 regular {pointer 1}  }
	{ conv67_717_out int 32 regular {pointer 1}  }
	{ conv67_616_out int 32 regular {pointer 1}  }
	{ conv67_515_out int 32 regular {pointer 1}  }
	{ conv67_414_out int 32 regular {pointer 1}  }
	{ conv67_313_out int 32 regular {pointer 1}  }
	{ conv67_212_out int 32 regular {pointer 1}  }
	{ conv67_111_out int 32 regular {pointer 1}  }
	{ conv6710_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv13_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv62_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv8525_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1424_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1323_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1222_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1121_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1020_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_919_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_818_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_717_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_616_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_515_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_414_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_313_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_212_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_111_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv6710_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 77
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty sc_in sc_lv 5 signal 0 } 
	{ b_address0 sc_out sc_lv 5 signal 1 } 
	{ b_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_q0 sc_in sc_lv 32 signal 1 } 
	{ conv13 sc_in sc_lv 32 signal 2 } 
	{ conv13_1 sc_in sc_lv 32 signal 3 } 
	{ conv13_2 sc_in sc_lv 32 signal 4 } 
	{ conv13_3 sc_in sc_lv 32 signal 5 } 
	{ conv13_4 sc_in sc_lv 32 signal 6 } 
	{ conv13_5 sc_in sc_lv 32 signal 7 } 
	{ conv13_6 sc_in sc_lv 32 signal 8 } 
	{ conv13_7 sc_in sc_lv 32 signal 9 } 
	{ conv13_8 sc_in sc_lv 32 signal 10 } 
	{ conv13_9 sc_in sc_lv 32 signal 11 } 
	{ conv13_10 sc_in sc_lv 32 signal 12 } 
	{ conv13_11 sc_in sc_lv 32 signal 13 } 
	{ conv13_12 sc_in sc_lv 32 signal 14 } 
	{ conv13_13 sc_in sc_lv 32 signal 15 } 
	{ conv13_14 sc_in sc_lv 32 signal 16 } 
	{ conv13_15 sc_in sc_lv 32 signal 17 } 
	{ mprime sc_in sc_lv 32 signal 18 } 
	{ conv46 sc_in sc_lv 32 signal 19 } 
	{ conv62 sc_in sc_lv 32 signal 20 } 
	{ conv62_1 sc_in sc_lv 32 signal 21 } 
	{ conv62_2 sc_in sc_lv 32 signal 22 } 
	{ conv62_3 sc_in sc_lv 32 signal 23 } 
	{ conv62_4 sc_in sc_lv 32 signal 24 } 
	{ conv62_5 sc_in sc_lv 32 signal 25 } 
	{ conv62_6 sc_in sc_lv 32 signal 26 } 
	{ conv62_7 sc_in sc_lv 32 signal 27 } 
	{ conv62_8 sc_in sc_lv 32 signal 28 } 
	{ conv62_9 sc_in sc_lv 32 signal 29 } 
	{ conv62_10 sc_in sc_lv 32 signal 30 } 
	{ conv62_11 sc_in sc_lv 32 signal 31 } 
	{ conv62_12 sc_in sc_lv 32 signal 32 } 
	{ conv62_13 sc_in sc_lv 32 signal 33 } 
	{ conv62_14 sc_in sc_lv 32 signal 34 } 
	{ conv8525_out sc_out sc_lv 2 signal 35 } 
	{ conv8525_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ p_out sc_out sc_lv 32 signal 36 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ conv67_1424_out sc_out sc_lv 32 signal 37 } 
	{ conv67_1424_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ conv67_1323_out sc_out sc_lv 32 signal 38 } 
	{ conv67_1323_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ conv67_1222_out sc_out sc_lv 32 signal 39 } 
	{ conv67_1222_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ conv67_1121_out sc_out sc_lv 32 signal 40 } 
	{ conv67_1121_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ conv67_1020_out sc_out sc_lv 32 signal 41 } 
	{ conv67_1020_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ conv67_919_out sc_out sc_lv 32 signal 42 } 
	{ conv67_919_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ conv67_818_out sc_out sc_lv 32 signal 43 } 
	{ conv67_818_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ conv67_717_out sc_out sc_lv 32 signal 44 } 
	{ conv67_717_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ conv67_616_out sc_out sc_lv 32 signal 45 } 
	{ conv67_616_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ conv67_515_out sc_out sc_lv 32 signal 46 } 
	{ conv67_515_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ conv67_414_out sc_out sc_lv 32 signal 47 } 
	{ conv67_414_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ conv67_313_out sc_out sc_lv 32 signal 48 } 
	{ conv67_313_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ conv67_212_out sc_out sc_lv 32 signal 49 } 
	{ conv67_212_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ conv67_111_out sc_out sc_lv 32 signal 50 } 
	{ conv67_111_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ conv6710_out sc_out sc_lv 32 signal 51 } 
	{ conv6710_out_ap_vld sc_out sc_logic 1 outvld 51 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "conv13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13", "role": "default" }} , 
 	{ "name": "conv13_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_1", "role": "default" }} , 
 	{ "name": "conv13_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_2", "role": "default" }} , 
 	{ "name": "conv13_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_3", "role": "default" }} , 
 	{ "name": "conv13_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_4", "role": "default" }} , 
 	{ "name": "conv13_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_5", "role": "default" }} , 
 	{ "name": "conv13_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_6", "role": "default" }} , 
 	{ "name": "conv13_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_7", "role": "default" }} , 
 	{ "name": "conv13_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_8", "role": "default" }} , 
 	{ "name": "conv13_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_9", "role": "default" }} , 
 	{ "name": "conv13_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_10", "role": "default" }} , 
 	{ "name": "conv13_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_11", "role": "default" }} , 
 	{ "name": "conv13_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_12", "role": "default" }} , 
 	{ "name": "conv13_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_13", "role": "default" }} , 
 	{ "name": "conv13_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_14", "role": "default" }} , 
 	{ "name": "conv13_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv13_15", "role": "default" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }} , 
 	{ "name": "conv46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv46", "role": "default" }} , 
 	{ "name": "conv62", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62", "role": "default" }} , 
 	{ "name": "conv62_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_1", "role": "default" }} , 
 	{ "name": "conv62_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_2", "role": "default" }} , 
 	{ "name": "conv62_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_3", "role": "default" }} , 
 	{ "name": "conv62_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_4", "role": "default" }} , 
 	{ "name": "conv62_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_5", "role": "default" }} , 
 	{ "name": "conv62_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_6", "role": "default" }} , 
 	{ "name": "conv62_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_7", "role": "default" }} , 
 	{ "name": "conv62_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_8", "role": "default" }} , 
 	{ "name": "conv62_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_9", "role": "default" }} , 
 	{ "name": "conv62_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_10", "role": "default" }} , 
 	{ "name": "conv62_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_11", "role": "default" }} , 
 	{ "name": "conv62_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_12", "role": "default" }} , 
 	{ "name": "conv62_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_13", "role": "default" }} , 
 	{ "name": "conv62_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv62_14", "role": "default" }} , 
 	{ "name": "conv8525_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "conv8525_out", "role": "default" }} , 
 	{ "name": "conv8525_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv8525_out", "role": "ap_vld" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1424_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1424_out", "role": "default" }} , 
 	{ "name": "conv67_1424_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1424_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1323_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1323_out", "role": "default" }} , 
 	{ "name": "conv67_1323_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1323_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1222_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1222_out", "role": "default" }} , 
 	{ "name": "conv67_1222_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1222_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1121_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1121_out", "role": "default" }} , 
 	{ "name": "conv67_1121_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1121_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1020_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1020_out", "role": "default" }} , 
 	{ "name": "conv67_1020_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1020_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_919_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_919_out", "role": "default" }} , 
 	{ "name": "conv67_919_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_919_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_818_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_818_out", "role": "default" }} , 
 	{ "name": "conv67_818_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_818_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_717_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_717_out", "role": "default" }} , 
 	{ "name": "conv67_717_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_717_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_616_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_616_out", "role": "default" }} , 
 	{ "name": "conv67_616_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_616_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_515_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_515_out", "role": "default" }} , 
 	{ "name": "conv67_515_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_515_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_414_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_414_out", "role": "default" }} , 
 	{ "name": "conv67_414_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_414_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_313_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_313_out", "role": "default" }} , 
 	{ "name": "conv67_313_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_313_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_212_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_212_out", "role": "default" }} , 
 	{ "name": "conv67_212_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_212_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_111_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_111_out", "role": "default" }} , 
 	{ "name": "conv67_111_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_111_out", "role": "ap_vld" }} , 
 	{ "name": "conv6710_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv6710_out", "role": "default" }} , 
 	{ "name": "conv6710_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv6710_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "mul_Pipeline_CIOS_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv46", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv8525_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1424_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1323_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1222_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1020_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_919_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_818_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_717_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_616_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_515_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_414_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_313_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_212_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv6710_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "CIOS_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U12", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U13", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U14", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U15", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U16", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U17", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U18", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U19", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U20", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U21", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U22", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U23", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U24", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U25", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U26", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U27", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U28", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U29", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_CIOS_LOOP {
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		conv13 {Type I LastRead 0 FirstWrite -1}
		conv13_1 {Type I LastRead 0 FirstWrite -1}
		conv13_2 {Type I LastRead 0 FirstWrite -1}
		conv13_3 {Type I LastRead 0 FirstWrite -1}
		conv13_4 {Type I LastRead 0 FirstWrite -1}
		conv13_5 {Type I LastRead 0 FirstWrite -1}
		conv13_6 {Type I LastRead 0 FirstWrite -1}
		conv13_7 {Type I LastRead 0 FirstWrite -1}
		conv13_8 {Type I LastRead 0 FirstWrite -1}
		conv13_9 {Type I LastRead 0 FirstWrite -1}
		conv13_10 {Type I LastRead 0 FirstWrite -1}
		conv13_11 {Type I LastRead 0 FirstWrite -1}
		conv13_12 {Type I LastRead 0 FirstWrite -1}
		conv13_13 {Type I LastRead 0 FirstWrite -1}
		conv13_14 {Type I LastRead 0 FirstWrite -1}
		conv13_15 {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		conv46 {Type I LastRead 0 FirstWrite -1}
		conv62 {Type I LastRead 0 FirstWrite -1}
		conv62_1 {Type I LastRead 0 FirstWrite -1}
		conv62_2 {Type I LastRead 0 FirstWrite -1}
		conv62_3 {Type I LastRead 0 FirstWrite -1}
		conv62_4 {Type I LastRead 0 FirstWrite -1}
		conv62_5 {Type I LastRead 0 FirstWrite -1}
		conv62_6 {Type I LastRead 0 FirstWrite -1}
		conv62_7 {Type I LastRead 0 FirstWrite -1}
		conv62_8 {Type I LastRead 0 FirstWrite -1}
		conv62_9 {Type I LastRead 0 FirstWrite -1}
		conv62_10 {Type I LastRead 0 FirstWrite -1}
		conv62_11 {Type I LastRead 0 FirstWrite -1}
		conv62_12 {Type I LastRead 0 FirstWrite -1}
		conv62_13 {Type I LastRead 0 FirstWrite -1}
		conv62_14 {Type I LastRead 0 FirstWrite -1}
		conv8525_out {Type O LastRead -1 FirstWrite 6}
		p_out {Type O LastRead -1 FirstWrite 6}
		conv67_1424_out {Type O LastRead -1 FirstWrite 6}
		conv67_1323_out {Type O LastRead -1 FirstWrite 6}
		conv67_1222_out {Type O LastRead -1 FirstWrite 6}
		conv67_1121_out {Type O LastRead -1 FirstWrite 6}
		conv67_1020_out {Type O LastRead -1 FirstWrite 6}
		conv67_919_out {Type O LastRead -1 FirstWrite 6}
		conv67_818_out {Type O LastRead -1 FirstWrite 6}
		conv67_717_out {Type O LastRead -1 FirstWrite 6}
		conv67_616_out {Type O LastRead -1 FirstWrite 6}
		conv67_515_out {Type O LastRead -1 FirstWrite 6}
		conv67_414_out {Type O LastRead -1 FirstWrite 6}
		conv67_313_out {Type O LastRead -1 FirstWrite 6}
		conv67_212_out {Type O LastRead -1 FirstWrite 6}
		conv67_111_out {Type O LastRead -1 FirstWrite 6}
		conv6710_out {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "40", "Max" : "40"}
	, {"Name" : "Interval", "Min" : "40", "Max" : "40"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty { ap_none {  { empty in_data 0 5 } } }
	b { ap_memory {  { b_address0 mem_address 1 5 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 32 } } }
	conv13 { ap_none {  { conv13 in_data 0 32 } } }
	conv13_1 { ap_none {  { conv13_1 in_data 0 32 } } }
	conv13_2 { ap_none {  { conv13_2 in_data 0 32 } } }
	conv13_3 { ap_none {  { conv13_3 in_data 0 32 } } }
	conv13_4 { ap_none {  { conv13_4 in_data 0 32 } } }
	conv13_5 { ap_none {  { conv13_5 in_data 0 32 } } }
	conv13_6 { ap_none {  { conv13_6 in_data 0 32 } } }
	conv13_7 { ap_none {  { conv13_7 in_data 0 32 } } }
	conv13_8 { ap_none {  { conv13_8 in_data 0 32 } } }
	conv13_9 { ap_none {  { conv13_9 in_data 0 32 } } }
	conv13_10 { ap_none {  { conv13_10 in_data 0 32 } } }
	conv13_11 { ap_none {  { conv13_11 in_data 0 32 } } }
	conv13_12 { ap_none {  { conv13_12 in_data 0 32 } } }
	conv13_13 { ap_none {  { conv13_13 in_data 0 32 } } }
	conv13_14 { ap_none {  { conv13_14 in_data 0 32 } } }
	conv13_15 { ap_none {  { conv13_15 in_data 0 32 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
	conv46 { ap_none {  { conv46 in_data 0 32 } } }
	conv62 { ap_none {  { conv62 in_data 0 32 } } }
	conv62_1 { ap_none {  { conv62_1 in_data 0 32 } } }
	conv62_2 { ap_none {  { conv62_2 in_data 0 32 } } }
	conv62_3 { ap_none {  { conv62_3 in_data 0 32 } } }
	conv62_4 { ap_none {  { conv62_4 in_data 0 32 } } }
	conv62_5 { ap_none {  { conv62_5 in_data 0 32 } } }
	conv62_6 { ap_none {  { conv62_6 in_data 0 32 } } }
	conv62_7 { ap_none {  { conv62_7 in_data 0 32 } } }
	conv62_8 { ap_none {  { conv62_8 in_data 0 32 } } }
	conv62_9 { ap_none {  { conv62_9 in_data 0 32 } } }
	conv62_10 { ap_none {  { conv62_10 in_data 0 32 } } }
	conv62_11 { ap_none {  { conv62_11 in_data 0 32 } } }
	conv62_12 { ap_none {  { conv62_12 in_data 0 32 } } }
	conv62_13 { ap_none {  { conv62_13 in_data 0 32 } } }
	conv62_14 { ap_none {  { conv62_14 in_data 0 32 } } }
	conv8525_out { ap_vld {  { conv8525_out out_data 1 2 }  { conv8525_out_ap_vld out_vld 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 32 }  { p_out_ap_vld out_vld 1 1 } } }
	conv67_1424_out { ap_vld {  { conv67_1424_out out_data 1 32 }  { conv67_1424_out_ap_vld out_vld 1 1 } } }
	conv67_1323_out { ap_vld {  { conv67_1323_out out_data 1 32 }  { conv67_1323_out_ap_vld out_vld 1 1 } } }
	conv67_1222_out { ap_vld {  { conv67_1222_out out_data 1 32 }  { conv67_1222_out_ap_vld out_vld 1 1 } } }
	conv67_1121_out { ap_vld {  { conv67_1121_out out_data 1 32 }  { conv67_1121_out_ap_vld out_vld 1 1 } } }
	conv67_1020_out { ap_vld {  { conv67_1020_out out_data 1 32 }  { conv67_1020_out_ap_vld out_vld 1 1 } } }
	conv67_919_out { ap_vld {  { conv67_919_out out_data 1 32 }  { conv67_919_out_ap_vld out_vld 1 1 } } }
	conv67_818_out { ap_vld {  { conv67_818_out out_data 1 32 }  { conv67_818_out_ap_vld out_vld 1 1 } } }
	conv67_717_out { ap_vld {  { conv67_717_out out_data 1 32 }  { conv67_717_out_ap_vld out_vld 1 1 } } }
	conv67_616_out { ap_vld {  { conv67_616_out out_data 1 32 }  { conv67_616_out_ap_vld out_vld 1 1 } } }
	conv67_515_out { ap_vld {  { conv67_515_out out_data 1 32 }  { conv67_515_out_ap_vld out_vld 1 1 } } }
	conv67_414_out { ap_vld {  { conv67_414_out out_data 1 32 }  { conv67_414_out_ap_vld out_vld 1 1 } } }
	conv67_313_out { ap_vld {  { conv67_313_out out_data 1 32 }  { conv67_313_out_ap_vld out_vld 1 1 } } }
	conv67_212_out { ap_vld {  { conv67_212_out out_data 1 32 }  { conv67_212_out_ap_vld out_vld 1 1 } } }
	conv67_111_out { ap_vld {  { conv67_111_out out_data 1 32 }  { conv67_111_out_ap_vld out_vld 1 1 } } }
	conv6710_out { ap_vld {  { conv6710_out out_data 1 32 }  { conv6710_out_ap_vld out_vld 1 1 } } }
}
