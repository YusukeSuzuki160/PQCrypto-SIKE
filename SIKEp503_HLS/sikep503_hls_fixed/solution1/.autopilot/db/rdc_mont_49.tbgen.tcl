set moduleName rdc_mont_49
set isTopModule 0
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
set cdfgNum 607
set C_modelName {rdc_mont.49}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ma_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict ma_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict coeff { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ ma_0 int 64 regular {array 8 { 1 } 1 1 }  }
	{ ma_1 int 64 regular {array 8 { 1 } 1 1 }  }
	{ coeff int 64 regular {array 48 { 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ma_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "coeff", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 116
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ma_0_address0 sc_out sc_lv 3 signal 0 } 
	{ ma_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ ma_0_q0 sc_in sc_lv 64 signal 0 } 
	{ ma_1_address0 sc_out sc_lv 3 signal 1 } 
	{ ma_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ ma_1_q0 sc_in sc_lv 64 signal 1 } 
	{ coeff_address0 sc_out sc_lv 6 signal 2 } 
	{ coeff_ce0 sc_out sc_logic 1 signal 2 } 
	{ coeff_we0 sc_out sc_logic 1 signal 2 } 
	{ coeff_d0 sc_out sc_lv 64 signal 2 } 
	{ grp_digit_x_digit_fu_162_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_162_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_162_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_162_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_162_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_162_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_162_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_162_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_167_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_167_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_167_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_167_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_167_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_167_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_167_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_167_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_172_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_172_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_172_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_172_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_172_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_172_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_172_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_172_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_177_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_177_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_177_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_177_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_177_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_177_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_177_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_177_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_182_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_182_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_182_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_182_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_182_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_182_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_182_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_182_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_187_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_187_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_187_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_187_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_187_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_187_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_187_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_187_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_192_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_192_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_192_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_192_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_197_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_197_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_197_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_197_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_202_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_202_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_202_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_202_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_207_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_207_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_207_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_207_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_212_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_212_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_212_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_212_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_217_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_217_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_217_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_217_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_222_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_222_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_222_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_222_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_227_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_227_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_227_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_227_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_232_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_232_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_232_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_232_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_237_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_237_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_237_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_237_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_242_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_242_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_242_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_242_p_ready sc_in sc_logic 1 signal -1 } 
	{ tmp_45_is_digit_lessthan_ct_fu_247_p_din1 sc_out sc_lv 64 signal -1 } 
	{ tmp_45_is_digit_lessthan_ct_fu_247_p_din2 sc_out sc_lv 64 signal -1 } 
	{ tmp_45_is_digit_lessthan_ct_fu_247_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ tmp_45_is_digit_lessthan_ct_fu_247_p_ready sc_in sc_logic 1 signal -1 } 
	{ tmp_46_is_digit_lessthan_ct_fu_252_p_din1 sc_out sc_lv 64 signal -1 } 
	{ tmp_46_is_digit_lessthan_ct_fu_252_p_din2 sc_out sc_lv 64 signal -1 } 
	{ tmp_46_is_digit_lessthan_ct_fu_252_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ tmp_46_is_digit_lessthan_ct_fu_252_p_ready sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ma_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ma_0", "role": "address0" }} , 
 	{ "name": "ma_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ma_0", "role": "ce0" }} , 
 	{ "name": "ma_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_0", "role": "q0" }} , 
 	{ "name": "ma_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ma_1", "role": "address0" }} , 
 	{ "name": "ma_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ma_1", "role": "ce0" }} , 
 	{ "name": "ma_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma_1", "role": "q0" }} , 
 	{ "name": "coeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coeff", "role": "address0" }} , 
 	{ "name": "coeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff", "role": "ce0" }} , 
 	{ "name": "coeff_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff", "role": "we0" }} , 
 	{ "name": "coeff_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeff", "role": "d0" }} , 
 	{ "name": "grp_digit_x_digit_fu_162_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_162_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_162_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_162_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_162_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_162_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_162_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_162_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_162_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_162_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_162_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_162_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_162_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_162_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_162_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_162_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_167_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_167_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_167_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_167_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_167_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_167_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_167_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_167_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_167_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_167_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_167_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_167_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_167_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_167_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_167_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_167_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_172_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_172_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_172_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_172_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_172_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_172_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_172_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_172_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_172_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_172_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_172_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_172_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_172_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_172_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_172_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_172_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_177_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_177_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_177_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_177_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_177_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_177_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_177_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_177_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_177_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_177_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_177_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_177_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_177_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_177_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_177_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_177_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_182_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_182_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_182_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_182_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_182_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_182_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_182_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_182_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_182_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_182_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_182_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_182_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_182_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_182_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_182_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_182_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_187_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_187_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_187_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_187_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_187_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_187_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_187_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_187_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_187_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_187_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_187_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_187_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_187_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_187_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_187_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_187_p_idle", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_192_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_192_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_192_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_192_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_192_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_192_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_192_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_192_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_197_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_197_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_197_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_197_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_197_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_197_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_197_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_197_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_202_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_202_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_202_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_202_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_202_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_202_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_202_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_202_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_207_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_207_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_207_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_207_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_207_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_207_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_207_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_207_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_212_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_212_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_212_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_212_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_212_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_212_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_212_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_212_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_217_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_217_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_217_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_217_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_217_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_217_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_217_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_217_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_222_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_222_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_222_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_222_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_222_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_222_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_222_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_222_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_227_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_227_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_227_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_227_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_227_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_227_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_227_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_227_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_232_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_232_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_232_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_232_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_232_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_232_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_232_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_232_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_237_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_237_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_237_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_237_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_237_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_237_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_237_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_237_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_242_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_242_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_242_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_242_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_242_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_242_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_242_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_242_p_ready", "role": "default" }} , 
 	{ "name": "tmp_45_is_digit_lessthan_ct_fu_247_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_45_is_digit_lessthan_ct_fu_247_p_din1", "role": "default" }} , 
 	{ "name": "tmp_45_is_digit_lessthan_ct_fu_247_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_45_is_digit_lessthan_ct_fu_247_p_din2", "role": "default" }} , 
 	{ "name": "tmp_45_is_digit_lessthan_ct_fu_247_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_45_is_digit_lessthan_ct_fu_247_p_dout0", "role": "default" }} , 
 	{ "name": "tmp_45_is_digit_lessthan_ct_fu_247_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_45_is_digit_lessthan_ct_fu_247_p_ready", "role": "default" }} , 
 	{ "name": "tmp_46_is_digit_lessthan_ct_fu_252_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_46_is_digit_lessthan_ct_fu_252_p_din1", "role": "default" }} , 
 	{ "name": "tmp_46_is_digit_lessthan_ct_fu_252_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_46_is_digit_lessthan_ct_fu_252_p_din2", "role": "default" }} , 
 	{ "name": "tmp_46_is_digit_lessthan_ct_fu_252_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_46_is_digit_lessthan_ct_fu_252_p_dout0", "role": "default" }} , 
 	{ "name": "tmp_46_is_digit_lessthan_ct_fu_252_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_46_is_digit_lessthan_ct_fu_252_p_ready", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rdc_mont_49",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "236", "EstimateLatencyMax" : "236",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rdc_mont_49_Pipeline_VITIS_LOOP_306_1_fu_293", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_49_Pipeline_VITIS_LOOP_306_1_fu_293", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "rdc_mont_49_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_49_Pipeline_VITIS_LOOP_306_1_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	rdc_mont_49 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		coeff {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_49_Pipeline_VITIS_LOOP_306_1 {
		coeff {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "236", "Max" : "236"}
	, {"Name" : "Interval", "Min" : "236", "Max" : "236"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ma_0 { ap_memory {  { ma_0_address0 mem_address 1 3 }  { ma_0_ce0 mem_ce 1 1 }  { ma_0_q0 mem_dout 0 64 } } }
	ma_1 { ap_memory {  { ma_1_address0 mem_address 1 3 }  { ma_1_ce0 mem_ce 1 1 }  { ma_1_q0 mem_dout 0 64 } } }
	coeff { ap_memory {  { coeff_address0 mem_address 1 6 }  { coeff_ce0 mem_ce 1 1 }  { coeff_we0 mem_we 1 1 }  { coeff_d0 mem_din 1 64 } } }
}
