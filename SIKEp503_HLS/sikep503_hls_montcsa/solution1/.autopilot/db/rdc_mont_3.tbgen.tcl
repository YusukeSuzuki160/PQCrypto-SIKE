set moduleName rdc_mont_3
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
set cdfgNum 655
set C_modelName {rdc_mont.3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ma_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict ma_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ ma_0 int 64 regular {array 8 { 1 } 1 1 }  }
	{ ma_1 int 64 regular {array 8 { 1 } 1 1 }  }
	{ mc int 64 regular {array 16 { 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ma_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ma_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mc", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
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
	{ mc_address0 sc_out sc_lv 4 signal 2 } 
	{ mc_ce0 sc_out sc_logic 1 signal 2 } 
	{ mc_we0 sc_out sc_logic 1 signal 2 } 
	{ mc_d0 sc_out sc_lv 64 signal 2 } 
	{ grp_digit_x_digit_fu_200_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_200_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_200_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_200_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_200_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_200_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_200_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_200_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_205_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_205_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_205_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_205_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_205_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_205_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_205_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_205_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_210_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_210_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_210_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_210_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_210_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_210_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_210_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_210_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_215_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_215_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_215_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_215_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_215_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_215_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_215_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_215_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_220_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_220_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_220_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_220_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_220_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_220_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_220_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_220_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_225_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_225_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_225_p_dout0_0 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_225_p_dout0_1 sc_in sc_lv 64 signal -1 } 
	{ grp_digit_x_digit_fu_225_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_225_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_225_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_digit_x_digit_fu_225_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_230_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_230_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_230_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_230_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_235_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_235_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_235_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_235_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_240_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_240_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_240_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_240_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_245_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_245_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_245_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_245_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_250_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_250_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_250_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_250_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_255_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_255_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_255_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_255_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_260_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_260_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_260_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_260_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_265_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_265_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_265_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_265_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_270_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_270_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_270_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_270_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_275_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_275_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_275_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_275_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_280_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_280_p_din2 sc_out sc_lv 64 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_280_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_is_digit_lessthan_ct_fu_280_p_ready sc_in sc_logic 1 signal -1 } 
	{ tmp_261_is_digit_lessthan_ct_fu_285_p_din1 sc_out sc_lv 64 signal -1 } 
	{ tmp_261_is_digit_lessthan_ct_fu_285_p_din2 sc_out sc_lv 64 signal -1 } 
	{ tmp_261_is_digit_lessthan_ct_fu_285_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ tmp_261_is_digit_lessthan_ct_fu_285_p_ready sc_in sc_logic 1 signal -1 } 
	{ tmp_262_is_digit_lessthan_ct_fu_290_p_din1 sc_out sc_lv 64 signal -1 } 
	{ tmp_262_is_digit_lessthan_ct_fu_290_p_din2 sc_out sc_lv 64 signal -1 } 
	{ tmp_262_is_digit_lessthan_ct_fu_290_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ tmp_262_is_digit_lessthan_ct_fu_290_p_ready sc_in sc_logic 1 signal -1 } 
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
 	{ "name": "mc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc", "role": "address0" }} , 
 	{ "name": "mc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce0" }} , 
 	{ "name": "mc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "we0" }} , 
 	{ "name": "mc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "d0" }} , 
 	{ "name": "grp_digit_x_digit_fu_200_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_200_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_200_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_200_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_200_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_200_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_200_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_200_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_200_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_200_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_200_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_200_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_200_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_200_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_200_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_200_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_205_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_205_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_205_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_205_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_205_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_205_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_205_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_205_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_205_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_205_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_205_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_205_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_205_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_205_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_205_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_205_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_210_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_210_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_210_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_210_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_210_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_210_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_210_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_210_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_210_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_210_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_210_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_210_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_210_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_210_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_210_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_210_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_215_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_215_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_215_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_215_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_215_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_215_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_215_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_215_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_215_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_215_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_215_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_215_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_215_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_215_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_215_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_215_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_220_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_220_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_220_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_220_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_220_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_220_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_220_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_220_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_220_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_220_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_220_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_220_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_220_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_220_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_220_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_220_p_idle", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_225_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_225_p_din1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_225_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_225_p_din2", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_225_p_dout0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_225_p_dout0_0", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_225_p_dout0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_225_p_dout0_1", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_225_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_225_p_start", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_225_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_225_p_ready", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_225_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_225_p_done", "role": "default" }} , 
 	{ "name": "grp_digit_x_digit_fu_225_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_digit_x_digit_fu_225_p_idle", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_230_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_230_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_230_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_230_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_230_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_230_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_230_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_230_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_235_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_235_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_235_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_235_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_235_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_235_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_235_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_235_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_240_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_240_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_240_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_240_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_240_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_240_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_240_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_240_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_245_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_245_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_245_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_245_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_245_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_245_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_245_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_245_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_250_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_250_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_250_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_250_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_250_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_250_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_250_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_250_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_255_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_255_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_255_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_255_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_255_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_255_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_255_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_255_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_260_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_260_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_260_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_260_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_260_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_260_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_260_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_260_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_265_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_265_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_265_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_265_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_265_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_265_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_265_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_265_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_270_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_270_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_270_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_270_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_270_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_270_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_270_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_270_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_275_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_275_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_275_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_275_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_275_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_275_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_275_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_275_p_ready", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_280_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_280_p_din1", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_280_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_280_p_din2", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_280_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_280_p_dout0", "role": "default" }} , 
 	{ "name": "grp_is_digit_lessthan_ct_fu_280_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_is_digit_lessthan_ct_fu_280_p_ready", "role": "default" }} , 
 	{ "name": "tmp_261_is_digit_lessthan_ct_fu_285_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_261_is_digit_lessthan_ct_fu_285_p_din1", "role": "default" }} , 
 	{ "name": "tmp_261_is_digit_lessthan_ct_fu_285_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_261_is_digit_lessthan_ct_fu_285_p_din2", "role": "default" }} , 
 	{ "name": "tmp_261_is_digit_lessthan_ct_fu_285_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_261_is_digit_lessthan_ct_fu_285_p_dout0", "role": "default" }} , 
 	{ "name": "tmp_261_is_digit_lessthan_ct_fu_285_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_261_is_digit_lessthan_ct_fu_285_p_ready", "role": "default" }} , 
 	{ "name": "tmp_262_is_digit_lessthan_ct_fu_290_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_262_is_digit_lessthan_ct_fu_290_p_din1", "role": "default" }} , 
 	{ "name": "tmp_262_is_digit_lessthan_ct_fu_290_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tmp_262_is_digit_lessthan_ct_fu_290_p_din2", "role": "default" }} , 
 	{ "name": "tmp_262_is_digit_lessthan_ct_fu_290_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_262_is_digit_lessthan_ct_fu_290_p_dout0", "role": "default" }} , 
 	{ "name": "tmp_262_is_digit_lessthan_ct_fu_290_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp_262_is_digit_lessthan_ct_fu_290_p_ready", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rdc_mont_3",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_306_1_fu_293", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_3_Pipeline_VITIS_LOOP_306_1_fu_293", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "rdc_mont_3_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_3_Pipeline_VITIS_LOOP_306_1_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	rdc_mont_3 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_3_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}}

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
	mc { ap_memory {  { mc_address0 mem_address 1 4 }  { mc_ce0 mem_ce 1 1 }  { mc_we0 mem_we 1 1 }  { mc_d0 mem_din 1 64 } } }
}
