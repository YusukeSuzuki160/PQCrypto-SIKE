set moduleName montMult_words_Pipeline_VITIS_LOOP_33_2
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
set cdfgNum 11
set C_modelName {montMult_words_Pipeline_VITIS_LOOP_33_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict x { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ t_load_17 int 32 regular  }
	{ t_load_16 int 32 regular  }
	{ t_load_15 int 32 regular  }
	{ t_load_14 int 32 regular  }
	{ t_load_13 int 32 regular  }
	{ t_load_12 int 32 regular  }
	{ t_load_11 int 32 regular  }
	{ t_load_10 int 32 regular  }
	{ t_load_9 int 32 regular  }
	{ t_load_8 int 32 regular  }
	{ t_load_7 int 32 regular  }
	{ t_load_6 int 32 regular  }
	{ t_load_5 int 32 regular  }
	{ t_load_4 int 32 regular  }
	{ t_load_3 int 32 regular  }
	{ t_load_2 int 32 regular  }
	{ t_load_1 int 32 regular  }
	{ t_load int 32 regular  }
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
	{ conv48 int 32 regular  }
	{ conv48_1 int 32 regular  }
	{ conv48_2 int 32 regular  }
	{ conv48_3 int 32 regular  }
	{ conv48_4 int 32 regular  }
	{ conv48_5 int 32 regular  }
	{ conv48_6 int 32 regular  }
	{ conv48_7 int 32 regular  }
	{ conv48_8 int 32 regular  }
	{ conv48_9 int 32 regular  }
	{ conv48_10 int 32 regular  }
	{ conv48_11 int 32 regular  }
	{ conv48_12 int 32 regular  }
	{ conv48_13 int 32 regular  }
	{ conv48_14 int 32 regular  }
	{ conv48_15 int 32 regular  }
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
	{ "Name" : "t_load_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "t_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
 	{ "Name" : "conv48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv48_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
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
set portNum 94
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_load_17 sc_in sc_lv 32 signal 0 } 
	{ t_load_16 sc_in sc_lv 32 signal 1 } 
	{ t_load_15 sc_in sc_lv 32 signal 2 } 
	{ t_load_14 sc_in sc_lv 32 signal 3 } 
	{ t_load_13 sc_in sc_lv 32 signal 4 } 
	{ t_load_12 sc_in sc_lv 32 signal 5 } 
	{ t_load_11 sc_in sc_lv 32 signal 6 } 
	{ t_load_10 sc_in sc_lv 32 signal 7 } 
	{ t_load_9 sc_in sc_lv 32 signal 8 } 
	{ t_load_8 sc_in sc_lv 32 signal 9 } 
	{ t_load_7 sc_in sc_lv 32 signal 10 } 
	{ t_load_6 sc_in sc_lv 32 signal 11 } 
	{ t_load_5 sc_in sc_lv 32 signal 12 } 
	{ t_load_4 sc_in sc_lv 32 signal 13 } 
	{ t_load_3 sc_in sc_lv 32 signal 14 } 
	{ t_load_2 sc_in sc_lv 32 signal 15 } 
	{ t_load_1 sc_in sc_lv 32 signal 16 } 
	{ t_load sc_in sc_lv 32 signal 17 } 
	{ x_address0 sc_out sc_lv 4 signal 18 } 
	{ x_ce0 sc_out sc_logic 1 signal 18 } 
	{ x_q0 sc_in sc_lv 32 signal 18 } 
	{ conv16 sc_in sc_lv 32 signal 19 } 
	{ conv16_1 sc_in sc_lv 32 signal 20 } 
	{ conv16_2 sc_in sc_lv 32 signal 21 } 
	{ conv16_3 sc_in sc_lv 32 signal 22 } 
	{ conv16_4 sc_in sc_lv 32 signal 23 } 
	{ conv16_5 sc_in sc_lv 32 signal 24 } 
	{ conv16_6 sc_in sc_lv 32 signal 25 } 
	{ conv16_7 sc_in sc_lv 32 signal 26 } 
	{ conv16_8 sc_in sc_lv 32 signal 27 } 
	{ conv16_9 sc_in sc_lv 32 signal 28 } 
	{ conv16_10 sc_in sc_lv 32 signal 29 } 
	{ conv16_11 sc_in sc_lv 32 signal 30 } 
	{ conv16_12 sc_in sc_lv 32 signal 31 } 
	{ conv16_13 sc_in sc_lv 32 signal 32 } 
	{ conv16_14 sc_in sc_lv 32 signal 33 } 
	{ conv16_15 sc_in sc_lv 32 signal 34 } 
	{ mprime sc_in sc_lv 32 signal 35 } 
	{ conv48 sc_in sc_lv 32 signal 36 } 
	{ conv48_1 sc_in sc_lv 32 signal 37 } 
	{ conv48_2 sc_in sc_lv 32 signal 38 } 
	{ conv48_3 sc_in sc_lv 32 signal 39 } 
	{ conv48_4 sc_in sc_lv 32 signal 40 } 
	{ conv48_5 sc_in sc_lv 32 signal 41 } 
	{ conv48_6 sc_in sc_lv 32 signal 42 } 
	{ conv48_7 sc_in sc_lv 32 signal 43 } 
	{ conv48_8 sc_in sc_lv 32 signal 44 } 
	{ conv48_9 sc_in sc_lv 32 signal 45 } 
	{ conv48_10 sc_in sc_lv 32 signal 46 } 
	{ conv48_11 sc_in sc_lv 32 signal 47 } 
	{ conv48_12 sc_in sc_lv 32 signal 48 } 
	{ conv48_13 sc_in sc_lv 32 signal 49 } 
	{ conv48_14 sc_in sc_lv 32 signal 50 } 
	{ conv48_15 sc_in sc_lv 32 signal 51 } 
	{ add6822_out sc_out sc_lv 32 signal 52 } 
	{ add6822_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ conv6321_out sc_out sc_lv 32 signal 53 } 
	{ conv6321_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ conv52_1520_out sc_out sc_lv 32 signal 54 } 
	{ conv52_1520_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ conv52_1419_out sc_out sc_lv 32 signal 55 } 
	{ conv52_1419_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ conv52_1318_out sc_out sc_lv 32 signal 56 } 
	{ conv52_1318_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ conv52_1217_out sc_out sc_lv 32 signal 57 } 
	{ conv52_1217_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ conv52_1116_out sc_out sc_lv 32 signal 58 } 
	{ conv52_1116_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ conv52_1015_out sc_out sc_lv 32 signal 59 } 
	{ conv52_1015_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ conv52_914_out sc_out sc_lv 32 signal 60 } 
	{ conv52_914_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ conv52_813_out sc_out sc_lv 32 signal 61 } 
	{ conv52_813_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ conv52_712_out sc_out sc_lv 32 signal 62 } 
	{ conv52_712_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ conv52_611_out sc_out sc_lv 32 signal 63 } 
	{ conv52_611_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ conv52_510_out sc_out sc_lv 32 signal 64 } 
	{ conv52_510_out_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ conv52_49_out sc_out sc_lv 32 signal 65 } 
	{ conv52_49_out_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ conv52_38_out sc_out sc_lv 32 signal 66 } 
	{ conv52_38_out_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ conv52_27_out sc_out sc_lv 32 signal 67 } 
	{ conv52_27_out_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ conv52_16_out sc_out sc_lv 32 signal 68 } 
	{ conv52_16_out_ap_vld sc_out sc_logic 1 outvld 68 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_load_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_17", "role": "default" }} , 
 	{ "name": "t_load_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_16", "role": "default" }} , 
 	{ "name": "t_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_15", "role": "default" }} , 
 	{ "name": "t_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_14", "role": "default" }} , 
 	{ "name": "t_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_13", "role": "default" }} , 
 	{ "name": "t_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_12", "role": "default" }} , 
 	{ "name": "t_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_11", "role": "default" }} , 
 	{ "name": "t_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_10", "role": "default" }} , 
 	{ "name": "t_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_9", "role": "default" }} , 
 	{ "name": "t_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_8", "role": "default" }} , 
 	{ "name": "t_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_7", "role": "default" }} , 
 	{ "name": "t_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_6", "role": "default" }} , 
 	{ "name": "t_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_5", "role": "default" }} , 
 	{ "name": "t_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_4", "role": "default" }} , 
 	{ "name": "t_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_3", "role": "default" }} , 
 	{ "name": "t_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_2", "role": "default" }} , 
 	{ "name": "t_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load_1", "role": "default" }} , 
 	{ "name": "t_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_load", "role": "default" }} , 
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
 	{ "name": "conv48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48", "role": "default" }} , 
 	{ "name": "conv48_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_1", "role": "default" }} , 
 	{ "name": "conv48_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_2", "role": "default" }} , 
 	{ "name": "conv48_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_3", "role": "default" }} , 
 	{ "name": "conv48_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_4", "role": "default" }} , 
 	{ "name": "conv48_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_5", "role": "default" }} , 
 	{ "name": "conv48_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_6", "role": "default" }} , 
 	{ "name": "conv48_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_7", "role": "default" }} , 
 	{ "name": "conv48_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_8", "role": "default" }} , 
 	{ "name": "conv48_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_9", "role": "default" }} , 
 	{ "name": "conv48_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_10", "role": "default" }} , 
 	{ "name": "conv48_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_11", "role": "default" }} , 
 	{ "name": "conv48_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_12", "role": "default" }} , 
 	{ "name": "conv48_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_13", "role": "default" }} , 
 	{ "name": "conv48_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_14", "role": "default" }} , 
 	{ "name": "conv48_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv48_15", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "montMult_words_Pipeline_VITIS_LOOP_33_2",
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
			{"Name" : "conv48", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_15", "Type" : "None", "Direction" : "I"},
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
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U9", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U10", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U11", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U12", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U13", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U14", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U15", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U16", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U17", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U18", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U19", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U20", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U21", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U22", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U23", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U24", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U25", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U26", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	montMult_words_Pipeline_VITIS_LOOP_33_2 {
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
		conv48 {Type I LastRead 0 FirstWrite -1}
		conv48_1 {Type I LastRead 0 FirstWrite -1}
		conv48_2 {Type I LastRead 0 FirstWrite -1}
		conv48_3 {Type I LastRead 0 FirstWrite -1}
		conv48_4 {Type I LastRead 0 FirstWrite -1}
		conv48_5 {Type I LastRead 0 FirstWrite -1}
		conv48_6 {Type I LastRead 0 FirstWrite -1}
		conv48_7 {Type I LastRead 0 FirstWrite -1}
		conv48_8 {Type I LastRead 0 FirstWrite -1}
		conv48_9 {Type I LastRead 0 FirstWrite -1}
		conv48_10 {Type I LastRead 0 FirstWrite -1}
		conv48_11 {Type I LastRead 0 FirstWrite -1}
		conv48_12 {Type I LastRead 0 FirstWrite -1}
		conv48_13 {Type I LastRead 0 FirstWrite -1}
		conv48_14 {Type I LastRead 0 FirstWrite -1}
		conv48_15 {Type I LastRead 0 FirstWrite -1}
		add6822_out {Type O LastRead -1 FirstWrite 6}
		conv6321_out {Type O LastRead -1 FirstWrite 6}
		conv52_1520_out {Type O LastRead -1 FirstWrite 6}
		conv52_1419_out {Type O LastRead -1 FirstWrite 6}
		conv52_1318_out {Type O LastRead -1 FirstWrite 6}
		conv52_1217_out {Type O LastRead -1 FirstWrite 6}
		conv52_1116_out {Type O LastRead -1 FirstWrite 6}
		conv52_1015_out {Type O LastRead -1 FirstWrite 6}
		conv52_914_out {Type O LastRead -1 FirstWrite 6}
		conv52_813_out {Type O LastRead -1 FirstWrite 6}
		conv52_712_out {Type O LastRead -1 FirstWrite 6}
		conv52_611_out {Type O LastRead -1 FirstWrite 6}
		conv52_510_out {Type O LastRead -1 FirstWrite 6}
		conv52_49_out {Type O LastRead -1 FirstWrite 6}
		conv52_38_out {Type O LastRead -1 FirstWrite 6}
		conv52_27_out {Type O LastRead -1 FirstWrite 6}
		conv52_16_out {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "40", "Max" : "40"}
	, {"Name" : "Interval", "Min" : "40", "Max" : "40"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t_load_17 { ap_none {  { t_load_17 in_data 0 32 } } }
	t_load_16 { ap_none {  { t_load_16 in_data 0 32 } } }
	t_load_15 { ap_none {  { t_load_15 in_data 0 32 } } }
	t_load_14 { ap_none {  { t_load_14 in_data 0 32 } } }
	t_load_13 { ap_none {  { t_load_13 in_data 0 32 } } }
	t_load_12 { ap_none {  { t_load_12 in_data 0 32 } } }
	t_load_11 { ap_none {  { t_load_11 in_data 0 32 } } }
	t_load_10 { ap_none {  { t_load_10 in_data 0 32 } } }
	t_load_9 { ap_none {  { t_load_9 in_data 0 32 } } }
	t_load_8 { ap_none {  { t_load_8 in_data 0 32 } } }
	t_load_7 { ap_none {  { t_load_7 in_data 0 32 } } }
	t_load_6 { ap_none {  { t_load_6 in_data 0 32 } } }
	t_load_5 { ap_none {  { t_load_5 in_data 0 32 } } }
	t_load_4 { ap_none {  { t_load_4 in_data 0 32 } } }
	t_load_3 { ap_none {  { t_load_3 in_data 0 32 } } }
	t_load_2 { ap_none {  { t_load_2 in_data 0 32 } } }
	t_load_1 { ap_none {  { t_load_1 in_data 0 32 } } }
	t_load { ap_none {  { t_load in_data 0 32 } } }
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
	conv48 { ap_none {  { conv48 in_data 0 32 } } }
	conv48_1 { ap_none {  { conv48_1 in_data 0 32 } } }
	conv48_2 { ap_none {  { conv48_2 in_data 0 32 } } }
	conv48_3 { ap_none {  { conv48_3 in_data 0 32 } } }
	conv48_4 { ap_none {  { conv48_4 in_data 0 32 } } }
	conv48_5 { ap_none {  { conv48_5 in_data 0 32 } } }
	conv48_6 { ap_none {  { conv48_6 in_data 0 32 } } }
	conv48_7 { ap_none {  { conv48_7 in_data 0 32 } } }
	conv48_8 { ap_none {  { conv48_8 in_data 0 32 } } }
	conv48_9 { ap_none {  { conv48_9 in_data 0 32 } } }
	conv48_10 { ap_none {  { conv48_10 in_data 0 32 } } }
	conv48_11 { ap_none {  { conv48_11 in_data 0 32 } } }
	conv48_12 { ap_none {  { conv48_12 in_data 0 32 } } }
	conv48_13 { ap_none {  { conv48_13 in_data 0 32 } } }
	conv48_14 { ap_none {  { conv48_14 in_data 0 32 } } }
	conv48_15 { ap_none {  { conv48_15 in_data 0 32 } } }
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
