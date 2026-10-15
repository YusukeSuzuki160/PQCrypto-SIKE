set moduleName mul_1_Pipeline_CIOS_LOOP
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
set C_modelName {mul.1_Pipeline_CIOS_LOOP}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict b { MEM_WIDTH 1 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ b int 1 regular {array 16 { 1 3 } 1 1 }  }
	{ a_load_cast int 32 regular  }
	{ a_load_1_cast int 32 regular  }
	{ a_load_2_cast int 32 regular  }
	{ a_load_3_cast int 32 regular  }
	{ a_load_4_cast int 32 regular  }
	{ a_load_5_cast int 32 regular  }
	{ a_load_6_cast int 32 regular  }
	{ a_load_7_cast int 32 regular  }
	{ a_load_8_cast int 32 regular  }
	{ a_load_9_cast int 32 regular  }
	{ a_load_10_cast int 32 regular  }
	{ a_load_11_cast int 32 regular  }
	{ a_load_12_cast int 32 regular  }
	{ a_load_13_cast int 32 regular  }
	{ a_load_14_cast int 32 regular  }
	{ a_load_15_cast int 32 regular  }
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
	{ conv8520_out int 1 regular {pointer 1}  }
	{ conv7919_out int 32 regular {pointer 1}  }
	{ conv67_1418_out int 32 regular {pointer 1}  }
	{ conv67_1317_out int 32 regular {pointer 1}  }
	{ conv67_1216_out int 32 regular {pointer 1}  }
	{ conv67_1115_out int 32 regular {pointer 1}  }
	{ conv67_1014_out int 32 regular {pointer 1}  }
	{ conv67_913_out int 32 regular {pointer 1}  }
	{ conv67_812_out int 32 regular {pointer 1}  }
	{ conv67_711_out int 32 regular {pointer 1}  }
	{ conv67_610_out int 32 regular {pointer 1}  }
	{ conv67_59_out int 32 regular {pointer 1}  }
	{ conv67_48_out int 32 regular {pointer 1}  }
	{ conv67_37_out int 32 regular {pointer 1}  }
	{ conv67_26_out int 32 regular {pointer 1}  }
	{ conv67_15_out int 32 regular {pointer 1}  }
	{ conv671_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "b", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_1_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_2_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_3_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_4_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_5_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_6_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_7_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_8_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_9_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_10_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_11_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_12_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_13_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_14_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_load_15_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
 	{ "Name" : "conv8520_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv7919_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1418_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1317_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1216_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1115_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_1014_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_913_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_812_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_711_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_610_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_59_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_48_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_37_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv67_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv671_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ b_address0 sc_out sc_lv 4 signal 0 } 
	{ b_ce0 sc_out sc_logic 1 signal 0 } 
	{ b_q0 sc_in sc_lv 1 signal 0 } 
	{ a_load_cast sc_in sc_lv 32 signal 1 } 
	{ a_load_1_cast sc_in sc_lv 32 signal 2 } 
	{ a_load_2_cast sc_in sc_lv 32 signal 3 } 
	{ a_load_3_cast sc_in sc_lv 32 signal 4 } 
	{ a_load_4_cast sc_in sc_lv 32 signal 5 } 
	{ a_load_5_cast sc_in sc_lv 32 signal 6 } 
	{ a_load_6_cast sc_in sc_lv 32 signal 7 } 
	{ a_load_7_cast sc_in sc_lv 32 signal 8 } 
	{ a_load_8_cast sc_in sc_lv 32 signal 9 } 
	{ a_load_9_cast sc_in sc_lv 32 signal 10 } 
	{ a_load_10_cast sc_in sc_lv 32 signal 11 } 
	{ a_load_11_cast sc_in sc_lv 32 signal 12 } 
	{ a_load_12_cast sc_in sc_lv 32 signal 13 } 
	{ a_load_13_cast sc_in sc_lv 32 signal 14 } 
	{ a_load_14_cast sc_in sc_lv 32 signal 15 } 
	{ a_load_15_cast sc_in sc_lv 32 signal 16 } 
	{ mprime sc_in sc_lv 32 signal 17 } 
	{ conv46 sc_in sc_lv 32 signal 18 } 
	{ conv62 sc_in sc_lv 32 signal 19 } 
	{ conv62_1 sc_in sc_lv 32 signal 20 } 
	{ conv62_2 sc_in sc_lv 32 signal 21 } 
	{ conv62_3 sc_in sc_lv 32 signal 22 } 
	{ conv62_4 sc_in sc_lv 32 signal 23 } 
	{ conv62_5 sc_in sc_lv 32 signal 24 } 
	{ conv62_6 sc_in sc_lv 32 signal 25 } 
	{ conv62_7 sc_in sc_lv 32 signal 26 } 
	{ conv62_8 sc_in sc_lv 32 signal 27 } 
	{ conv62_9 sc_in sc_lv 32 signal 28 } 
	{ conv62_10 sc_in sc_lv 32 signal 29 } 
	{ conv62_11 sc_in sc_lv 32 signal 30 } 
	{ conv62_12 sc_in sc_lv 32 signal 31 } 
	{ conv62_13 sc_in sc_lv 32 signal 32 } 
	{ conv62_14 sc_in sc_lv 32 signal 33 } 
	{ conv8520_out sc_out sc_lv 1 signal 34 } 
	{ conv8520_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ conv7919_out sc_out sc_lv 32 signal 35 } 
	{ conv7919_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ conv67_1418_out sc_out sc_lv 32 signal 36 } 
	{ conv67_1418_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ conv67_1317_out sc_out sc_lv 32 signal 37 } 
	{ conv67_1317_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ conv67_1216_out sc_out sc_lv 32 signal 38 } 
	{ conv67_1216_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ conv67_1115_out sc_out sc_lv 32 signal 39 } 
	{ conv67_1115_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ conv67_1014_out sc_out sc_lv 32 signal 40 } 
	{ conv67_1014_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ conv67_913_out sc_out sc_lv 32 signal 41 } 
	{ conv67_913_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ conv67_812_out sc_out sc_lv 32 signal 42 } 
	{ conv67_812_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ conv67_711_out sc_out sc_lv 32 signal 43 } 
	{ conv67_711_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ conv67_610_out sc_out sc_lv 32 signal 44 } 
	{ conv67_610_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ conv67_59_out sc_out sc_lv 32 signal 45 } 
	{ conv67_59_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ conv67_48_out sc_out sc_lv 32 signal 46 } 
	{ conv67_48_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ conv67_37_out sc_out sc_lv 32 signal 47 } 
	{ conv67_37_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ conv67_26_out sc_out sc_lv 32 signal 48 } 
	{ conv67_26_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ conv67_15_out sc_out sc_lv 32 signal 49 } 
	{ conv67_15_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ conv671_out sc_out sc_lv 32 signal 50 } 
	{ conv671_out_ap_vld sc_out sc_logic 1 outvld 50 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "a_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_cast", "role": "default" }} , 
 	{ "name": "a_load_1_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_1_cast", "role": "default" }} , 
 	{ "name": "a_load_2_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_2_cast", "role": "default" }} , 
 	{ "name": "a_load_3_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_3_cast", "role": "default" }} , 
 	{ "name": "a_load_4_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_4_cast", "role": "default" }} , 
 	{ "name": "a_load_5_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_5_cast", "role": "default" }} , 
 	{ "name": "a_load_6_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_6_cast", "role": "default" }} , 
 	{ "name": "a_load_7_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_7_cast", "role": "default" }} , 
 	{ "name": "a_load_8_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_8_cast", "role": "default" }} , 
 	{ "name": "a_load_9_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_9_cast", "role": "default" }} , 
 	{ "name": "a_load_10_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_10_cast", "role": "default" }} , 
 	{ "name": "a_load_11_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_11_cast", "role": "default" }} , 
 	{ "name": "a_load_12_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_12_cast", "role": "default" }} , 
 	{ "name": "a_load_13_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_13_cast", "role": "default" }} , 
 	{ "name": "a_load_14_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_14_cast", "role": "default" }} , 
 	{ "name": "a_load_15_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_load_15_cast", "role": "default" }} , 
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
 	{ "name": "conv8520_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "conv8520_out", "role": "default" }} , 
 	{ "name": "conv8520_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv8520_out", "role": "ap_vld" }} , 
 	{ "name": "conv7919_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv7919_out", "role": "default" }} , 
 	{ "name": "conv7919_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv7919_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1418_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1418_out", "role": "default" }} , 
 	{ "name": "conv67_1418_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1418_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1317_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1317_out", "role": "default" }} , 
 	{ "name": "conv67_1317_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1317_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1216_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1216_out", "role": "default" }} , 
 	{ "name": "conv67_1216_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1216_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1115_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1115_out", "role": "default" }} , 
 	{ "name": "conv67_1115_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1115_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_1014_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_1014_out", "role": "default" }} , 
 	{ "name": "conv67_1014_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_1014_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_913_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_913_out", "role": "default" }} , 
 	{ "name": "conv67_913_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_913_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_812_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_812_out", "role": "default" }} , 
 	{ "name": "conv67_812_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_812_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_711_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_711_out", "role": "default" }} , 
 	{ "name": "conv67_711_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_711_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_610_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_610_out", "role": "default" }} , 
 	{ "name": "conv67_610_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_610_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_59_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_59_out", "role": "default" }} , 
 	{ "name": "conv67_59_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_59_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_48_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_48_out", "role": "default" }} , 
 	{ "name": "conv67_48_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_48_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_37_out", "role": "default" }} , 
 	{ "name": "conv67_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_37_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_26_out", "role": "default" }} , 
 	{ "name": "conv67_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_26_out", "role": "ap_vld" }} , 
 	{ "name": "conv67_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv67_15_out", "role": "default" }} , 
 	{ "name": "conv67_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv67_15_out", "role": "ap_vld" }} , 
 	{ "name": "conv671_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv671_out", "role": "default" }} , 
 	{ "name": "conv671_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv671_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "mul_1_Pipeline_CIOS_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_4_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_6_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_8_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_10_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_11_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_12_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_14_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_load_15_cast", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "conv8520_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv7919_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1418_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1317_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1216_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1014_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_913_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_812_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_711_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_610_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv671_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "CIOS_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U120", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U121", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U122", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U123", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U124", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U125", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U126", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U127", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U128", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U129", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_1_Pipeline_CIOS_LOOP {
		b {Type I LastRead 0 FirstWrite -1}
		a_load_cast {Type I LastRead 0 FirstWrite -1}
		a_load_1_cast {Type I LastRead 0 FirstWrite -1}
		a_load_2_cast {Type I LastRead 0 FirstWrite -1}
		a_load_3_cast {Type I LastRead 0 FirstWrite -1}
		a_load_4_cast {Type I LastRead 0 FirstWrite -1}
		a_load_5_cast {Type I LastRead 0 FirstWrite -1}
		a_load_6_cast {Type I LastRead 0 FirstWrite -1}
		a_load_7_cast {Type I LastRead 0 FirstWrite -1}
		a_load_8_cast {Type I LastRead 0 FirstWrite -1}
		a_load_9_cast {Type I LastRead 0 FirstWrite -1}
		a_load_10_cast {Type I LastRead 0 FirstWrite -1}
		a_load_11_cast {Type I LastRead 0 FirstWrite -1}
		a_load_12_cast {Type I LastRead 0 FirstWrite -1}
		a_load_13_cast {Type I LastRead 0 FirstWrite -1}
		a_load_14_cast {Type I LastRead 0 FirstWrite -1}
		a_load_15_cast {Type I LastRead 0 FirstWrite -1}
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
		conv8520_out {Type O LastRead -1 FirstWrite 5}
		conv7919_out {Type O LastRead -1 FirstWrite 5}
		conv67_1418_out {Type O LastRead -1 FirstWrite 5}
		conv67_1317_out {Type O LastRead -1 FirstWrite 5}
		conv67_1216_out {Type O LastRead -1 FirstWrite 5}
		conv67_1115_out {Type O LastRead -1 FirstWrite 5}
		conv67_1014_out {Type O LastRead -1 FirstWrite 5}
		conv67_913_out {Type O LastRead -1 FirstWrite 5}
		conv67_812_out {Type O LastRead -1 FirstWrite 5}
		conv67_711_out {Type O LastRead -1 FirstWrite 5}
		conv67_610_out {Type O LastRead -1 FirstWrite 5}
		conv67_59_out {Type O LastRead -1 FirstWrite 5}
		conv67_48_out {Type O LastRead -1 FirstWrite 5}
		conv67_37_out {Type O LastRead -1 FirstWrite 5}
		conv67_26_out {Type O LastRead -1 FirstWrite 5}
		conv67_15_out {Type O LastRead -1 FirstWrite 5}
		conv671_out {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "39", "Max" : "39"}
	, {"Name" : "Interval", "Min" : "39", "Max" : "39"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	b { ap_memory {  { b_address0 mem_address 1 4 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 1 } } }
	a_load_cast { ap_none {  { a_load_cast in_data 0 32 } } }
	a_load_1_cast { ap_none {  { a_load_1_cast in_data 0 32 } } }
	a_load_2_cast { ap_none {  { a_load_2_cast in_data 0 32 } } }
	a_load_3_cast { ap_none {  { a_load_3_cast in_data 0 32 } } }
	a_load_4_cast { ap_none {  { a_load_4_cast in_data 0 32 } } }
	a_load_5_cast { ap_none {  { a_load_5_cast in_data 0 32 } } }
	a_load_6_cast { ap_none {  { a_load_6_cast in_data 0 32 } } }
	a_load_7_cast { ap_none {  { a_load_7_cast in_data 0 32 } } }
	a_load_8_cast { ap_none {  { a_load_8_cast in_data 0 32 } } }
	a_load_9_cast { ap_none {  { a_load_9_cast in_data 0 32 } } }
	a_load_10_cast { ap_none {  { a_load_10_cast in_data 0 32 } } }
	a_load_11_cast { ap_none {  { a_load_11_cast in_data 0 32 } } }
	a_load_12_cast { ap_none {  { a_load_12_cast in_data 0 32 } } }
	a_load_13_cast { ap_none {  { a_load_13_cast in_data 0 32 } } }
	a_load_14_cast { ap_none {  { a_load_14_cast in_data 0 32 } } }
	a_load_15_cast { ap_none {  { a_load_15_cast in_data 0 32 } } }
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
	conv8520_out { ap_vld {  { conv8520_out out_data 1 1 }  { conv8520_out_ap_vld out_vld 1 1 } } }
	conv7919_out { ap_vld {  { conv7919_out out_data 1 32 }  { conv7919_out_ap_vld out_vld 1 1 } } }
	conv67_1418_out { ap_vld {  { conv67_1418_out out_data 1 32 }  { conv67_1418_out_ap_vld out_vld 1 1 } } }
	conv67_1317_out { ap_vld {  { conv67_1317_out out_data 1 32 }  { conv67_1317_out_ap_vld out_vld 1 1 } } }
	conv67_1216_out { ap_vld {  { conv67_1216_out out_data 1 32 }  { conv67_1216_out_ap_vld out_vld 1 1 } } }
	conv67_1115_out { ap_vld {  { conv67_1115_out out_data 1 32 }  { conv67_1115_out_ap_vld out_vld 1 1 } } }
	conv67_1014_out { ap_vld {  { conv67_1014_out out_data 1 32 }  { conv67_1014_out_ap_vld out_vld 1 1 } } }
	conv67_913_out { ap_vld {  { conv67_913_out out_data 1 32 }  { conv67_913_out_ap_vld out_vld 1 1 } } }
	conv67_812_out { ap_vld {  { conv67_812_out out_data 1 32 }  { conv67_812_out_ap_vld out_vld 1 1 } } }
	conv67_711_out { ap_vld {  { conv67_711_out out_data 1 32 }  { conv67_711_out_ap_vld out_vld 1 1 } } }
	conv67_610_out { ap_vld {  { conv67_610_out out_data 1 32 }  { conv67_610_out_ap_vld out_vld 1 1 } } }
	conv67_59_out { ap_vld {  { conv67_59_out out_data 1 32 }  { conv67_59_out_ap_vld out_vld 1 1 } } }
	conv67_48_out { ap_vld {  { conv67_48_out out_data 1 32 }  { conv67_48_out_ap_vld out_vld 1 1 } } }
	conv67_37_out { ap_vld {  { conv67_37_out out_data 1 32 }  { conv67_37_out_ap_vld out_vld 1 1 } } }
	conv67_26_out { ap_vld {  { conv67_26_out out_data 1 32 }  { conv67_26_out_ap_vld out_vld 1 1 } } }
	conv67_15_out { ap_vld {  { conv67_15_out out_data 1 32 }  { conv67_15_out_ap_vld out_vld 1 1 } } }
	conv671_out { ap_vld {  { conv671_out out_data 1 32 }  { conv671_out_ap_vld out_vld 1 1 } } }
}
