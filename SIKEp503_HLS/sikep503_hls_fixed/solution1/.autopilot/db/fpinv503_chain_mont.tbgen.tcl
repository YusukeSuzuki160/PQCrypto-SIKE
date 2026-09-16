set moduleName fpinv503_chain_mont
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
set C_modelName {fpinv503_chain_mont}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 64 regular {array 8 { 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_address0 sc_out sc_lv 3 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_we0 sc_out sc_logic 1 signal 0 } 
	{ a_d0 sc_out sc_lv 64 signal 0 } 
	{ a_q0 sc_in sc_lv 64 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "we0" }} , 
 	{ "name": "a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "d0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "74", "145", "216", "218", "289", "360", "431"],
		"CDFG" : "fpinv503_chain_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "253292", "EstimateLatencyMax" : "253292",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_fpsqr503_mont_fu_521", "Port" : "ma", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "74", "SubInstance" : "grp_fpmul503_mont_5_fu_529", "Port" : "ma", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "216", "SubInstance" : "grp_fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_1_fu_545", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "7"},
					{"ID" : "289", "SubInstance" : "grp_fpmul503_mont_3_266_fu_557", "Port" : "ma", "Inst_start_state" : "116", "Inst_end_state" : "118"},
					{"ID" : "431", "SubInstance" : "grp_fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_196_fu_586", "Port" : "a", "Inst_start_state" : "134", "Inst_end_state" : "138"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_218_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_222_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_225_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state11", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state11"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_228_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state16"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_231_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_234_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state22"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_237_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state23", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state23"], "PreState" : ["ap_ST_fsm_state22"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_240_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state26", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state26"], "PreState" : ["ap_ST_fsm_state25"], "PostState" : ["ap_ST_fsm_state28"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_243_9", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state29", "LastState" : ["ap_ST_fsm_state30"], "QuitState" : ["ap_ST_fsm_state29"], "PreState" : ["ap_ST_fsm_state28"], "PostState" : ["ap_ST_fsm_state31"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_246_10", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state32", "LastState" : ["ap_ST_fsm_state33"], "QuitState" : ["ap_ST_fsm_state32"], "PreState" : ["ap_ST_fsm_state31"], "PostState" : ["ap_ST_fsm_state34"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_249_11", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state35", "LastState" : ["ap_ST_fsm_state36"], "QuitState" : ["ap_ST_fsm_state35"], "PreState" : ["ap_ST_fsm_state34"], "PostState" : ["ap_ST_fsm_state37"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_252_12", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state38", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state38"], "PreState" : ["ap_ST_fsm_state37"], "PostState" : ["ap_ST_fsm_state40"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_255_13", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state41", "LastState" : ["ap_ST_fsm_state42"], "QuitState" : ["ap_ST_fsm_state41"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state43"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_258_14", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state44", "LastState" : ["ap_ST_fsm_state45"], "QuitState" : ["ap_ST_fsm_state44"], "PreState" : ["ap_ST_fsm_state43"], "PostState" : ["ap_ST_fsm_state46"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_261_15", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state47", "LastState" : ["ap_ST_fsm_state48"], "QuitState" : ["ap_ST_fsm_state47"], "PreState" : ["ap_ST_fsm_state46"], "PostState" : ["ap_ST_fsm_state49"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_264_16", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state50", "LastState" : ["ap_ST_fsm_state51"], "QuitState" : ["ap_ST_fsm_state50"], "PreState" : ["ap_ST_fsm_state49"], "PostState" : ["ap_ST_fsm_state52"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_267_17", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state53", "LastState" : ["ap_ST_fsm_state54"], "QuitState" : ["ap_ST_fsm_state53"], "PreState" : ["ap_ST_fsm_state52"], "PostState" : ["ap_ST_fsm_state55"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_270_18", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state56", "LastState" : ["ap_ST_fsm_state57"], "QuitState" : ["ap_ST_fsm_state56"], "PreState" : ["ap_ST_fsm_state55"], "PostState" : ["ap_ST_fsm_state58"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_273_19", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state59", "LastState" : ["ap_ST_fsm_state60"], "QuitState" : ["ap_ST_fsm_state59"], "PreState" : ["ap_ST_fsm_state58"], "PostState" : ["ap_ST_fsm_state61"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_276_20", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state62", "LastState" : ["ap_ST_fsm_state63"], "QuitState" : ["ap_ST_fsm_state62"], "PreState" : ["ap_ST_fsm_state61"], "PostState" : ["ap_ST_fsm_state64"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_279_21", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state65", "LastState" : ["ap_ST_fsm_state66"], "QuitState" : ["ap_ST_fsm_state65"], "PreState" : ["ap_ST_fsm_state64"], "PostState" : ["ap_ST_fsm_state67"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_282_22", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state68", "LastState" : ["ap_ST_fsm_state69"], "QuitState" : ["ap_ST_fsm_state68"], "PreState" : ["ap_ST_fsm_state67"], "PostState" : ["ap_ST_fsm_state70"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_285_23", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state71", "LastState" : ["ap_ST_fsm_state72"], "QuitState" : ["ap_ST_fsm_state71"], "PreState" : ["ap_ST_fsm_state70"], "PostState" : ["ap_ST_fsm_state73"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_288_24", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state74", "LastState" : ["ap_ST_fsm_state75"], "QuitState" : ["ap_ST_fsm_state74"], "PreState" : ["ap_ST_fsm_state73"], "PostState" : ["ap_ST_fsm_state76"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_291_25", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state77", "LastState" : ["ap_ST_fsm_state78"], "QuitState" : ["ap_ST_fsm_state77"], "PreState" : ["ap_ST_fsm_state76"], "PostState" : ["ap_ST_fsm_state79"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_294_26", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state80", "LastState" : ["ap_ST_fsm_state81"], "QuitState" : ["ap_ST_fsm_state80"], "PreState" : ["ap_ST_fsm_state79"], "PostState" : ["ap_ST_fsm_state82"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_297_27", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state83", "LastState" : ["ap_ST_fsm_state84"], "QuitState" : ["ap_ST_fsm_state83"], "PreState" : ["ap_ST_fsm_state82"], "PostState" : ["ap_ST_fsm_state85"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_300_28", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state86", "LastState" : ["ap_ST_fsm_state87"], "QuitState" : ["ap_ST_fsm_state86"], "PreState" : ["ap_ST_fsm_state85"], "PostState" : ["ap_ST_fsm_state88"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_303_29", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state89", "LastState" : ["ap_ST_fsm_state90"], "QuitState" : ["ap_ST_fsm_state89"], "PreState" : ["ap_ST_fsm_state88"], "PostState" : ["ap_ST_fsm_state91"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_306_30", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state92", "LastState" : ["ap_ST_fsm_state93"], "QuitState" : ["ap_ST_fsm_state92"], "PreState" : ["ap_ST_fsm_state91"], "PostState" : ["ap_ST_fsm_state94"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_309_31", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state95", "LastState" : ["ap_ST_fsm_state96"], "QuitState" : ["ap_ST_fsm_state95"], "PreState" : ["ap_ST_fsm_state94"], "PostState" : ["ap_ST_fsm_state97"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_312_32", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state98", "LastState" : ["ap_ST_fsm_state99"], "QuitState" : ["ap_ST_fsm_state98"], "PreState" : ["ap_ST_fsm_state97"], "PostState" : ["ap_ST_fsm_state100"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_315_33", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state101", "LastState" : ["ap_ST_fsm_state102"], "QuitState" : ["ap_ST_fsm_state101"], "PreState" : ["ap_ST_fsm_state100"], "PostState" : ["ap_ST_fsm_state103"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_318_34", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state104", "LastState" : ["ap_ST_fsm_state105"], "QuitState" : ["ap_ST_fsm_state104"], "PreState" : ["ap_ST_fsm_state103"], "PostState" : ["ap_ST_fsm_state106"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_321_35", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state107", "LastState" : ["ap_ST_fsm_state108"], "QuitState" : ["ap_ST_fsm_state107"], "PreState" : ["ap_ST_fsm_state106"], "PostState" : ["ap_ST_fsm_state109"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_324_36", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state110", "LastState" : ["ap_ST_fsm_state111"], "QuitState" : ["ap_ST_fsm_state110"], "PreState" : ["ap_ST_fsm_state109"], "PostState" : ["ap_ST_fsm_state112"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_327_37", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state113", "LastState" : ["ap_ST_fsm_state114"], "QuitState" : ["ap_ST_fsm_state113"], "PreState" : ["ap_ST_fsm_state112"], "PostState" : ["ap_ST_fsm_state115"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_330_38", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state116", "LastState" : ["ap_ST_fsm_state117"], "QuitState" : ["ap_ST_fsm_state116"], "PreState" : ["ap_ST_fsm_state115"], "PostState" : ["ap_ST_fsm_state118"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_333_39", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state119", "LastState" : ["ap_ST_fsm_state120"], "QuitState" : ["ap_ST_fsm_state119"], "PreState" : ["ap_ST_fsm_state118"], "PostState" : ["ap_ST_fsm_state121"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_336_40", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state122", "LastState" : ["ap_ST_fsm_state123"], "QuitState" : ["ap_ST_fsm_state122"], "PreState" : ["ap_ST_fsm_state121"], "PostState" : ["ap_ST_fsm_state124"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_339_41", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state125", "LastState" : ["ap_ST_fsm_state126"], "QuitState" : ["ap_ST_fsm_state125"], "PreState" : ["ap_ST_fsm_state124"], "PostState" : ["ap_ST_fsm_state127"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_342_42", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state128", "LastState" : ["ap_ST_fsm_state129"], "QuitState" : ["ap_ST_fsm_state128"], "PreState" : ["ap_ST_fsm_state127"], "PostState" : ["ap_ST_fsm_state130"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_345_43", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state131", "LastState" : ["ap_ST_fsm_state132"], "QuitState" : ["ap_ST_fsm_state131"], "PreState" : ["ap_ST_fsm_state130"], "PostState" : ["ap_ST_fsm_state133"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_350_45", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state135", "LastState" : ["ap_ST_fsm_state136"], "QuitState" : ["ap_ST_fsm_state135"], "PreState" : ["ap_ST_fsm_state134"], "PostState" : ["ap_ST_fsm_state137"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_348_44", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "138", "FirstState" : "ap_ST_fsm_state134", "LastState" : ["ap_ST_fsm_state137"], "QuitState" : ["ap_ST_fsm_state134"], "PreState" : ["ap_ST_fsm_state133"], "PostState" : ["ap_ST_fsm_state138"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tt_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521", "Parent" : "0", "Child" : ["4", "5", "6", "28"],
		"CDFG" : "fpsqr503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "414", "EstimateLatencyMax" : "414",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mp_mul_3_1_fu_84", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_rdc_mont_6_fu_92", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.temp_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.temp_1_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84", "Parent" : "3", "Child" : ["7"],
		"CDFG" : "mp_mul_3_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mul_3_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mul_3_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mul_3_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18", "Parent" : "6", "Child" : ["8", "9", "10", "12", "15", "17", "20", "23"],
		"CDFG" : "mul_3_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "266", "EstimateLatencyMax" : "266",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_mul_3_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "17", "SubInstance" : "grp_mul_3_1_Pipeline_VITIS_LOOP_38_189_fu_71", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mul_3_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "23", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_mul_3_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "23", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.acc_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.acc_1_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "7", "Child" : ["11"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "7", "Child" : ["13", "14"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U1201", "Parent" : "12"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_85_2_fu_63", "Parent" : "7", "Child" : ["16"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_85_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_189_fu_71", "Parent" : "7", "Child" : ["18", "19"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_38_189",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_189_fu_71.partset_512ns_512ns_64ns_32ns_512_1_1_U1204", "Parent" : "17"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_189_fu_71.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "7", "Child" : ["21", "22"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U1209", "Parent" : "20"},
	{"ID" : "22", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "7", "Child" : ["24", "26"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "24", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "23", "Child" : ["25"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "23", "Child" : ["27"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_mp_mul_3_1_fu_84.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92", "Parent" : "3", "Child" : ["29", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "49", "54", "59", "64", "69"],
		"CDFG" : "rdc_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "126",
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
					{"ID" : "29", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "28", "Child" : ["30"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_283", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_290", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_297", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_303", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_309", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_316", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_323", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_329", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_336", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_345", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_is_digit_lessthan_ct_fu_352", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "28",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_372", "Parent" : "28", "Child" : ["45", "46", "47", "48"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "44"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "44"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "44"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "44"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_379", "Parent" : "28", "Child" : ["50", "51", "52", "53"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "49"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "49"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "49"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "49"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_386", "Parent" : "28", "Child" : ["55", "56", "57", "58"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "54"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "54"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "54"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "54"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_393", "Parent" : "28", "Child" : ["60", "61", "62", "63"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "59"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "59"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "59"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "59"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_400", "Parent" : "28", "Child" : ["65", "66", "67", "68"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "64"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "64"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "64"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_407", "Parent" : "28", "Child" : ["70", "71", "72", "73"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "69"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "69"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "69"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_fu_521.grp_rdc_mont_6_fu_92.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "69"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529", "Parent" : "0", "Child" : ["75", "76", "77", "99"],
		"CDFG" : "fpmul503_mont_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "534", "EstimateLatencyMax" : "534",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_mp_mul_586_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_mp_mul_586_fu_88", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_rdc_mont_2_fu_98", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.temp_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.temp_1_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88", "Parent" : "74", "Child" : ["78"],
		"CDFG" : "mp_mul_586",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20", "Parent" : "77", "Child" : ["79", "80", "81", "83", "86", "89", "91", "94"],
		"CDFG" : "mul_491",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "94", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "94", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.acc_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.acc_1_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "78", "Child" : ["82"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "78", "Child" : ["84", "85"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "83"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "78", "Child" : ["87", "88"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_184",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "86"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "78", "Child" : ["90"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "78", "Child" : ["92", "93"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "91"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "78", "Child" : ["95", "97"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "97", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "97", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "94", "Child" : ["96"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "94", "Child" : ["98"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98", "Parent" : "74", "Child" : ["100", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "120", "125", "130", "135", "140"],
		"CDFG" : "rdc_mont_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
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
					{"ID" : "100", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_297", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_297", "Parent" : "99", "Child" : ["101"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_297.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_304", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_311", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_318", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_324", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_330", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_337", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_344", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_350", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_357", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_366", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_is_digit_lessthan_ct_fu_373", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.tmp_693_is_digit_lessthan_ct_fu_379", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.tmp_694_is_digit_lessthan_ct_fu_386", "Parent" : "99",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_393", "Parent" : "99", "Child" : ["116", "117", "118", "119"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "115"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "115"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "115"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "115"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_400", "Parent" : "99", "Child" : ["121", "122", "123", "124"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "120"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "120"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "120"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "120"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_407", "Parent" : "99", "Child" : ["126", "127", "128", "129"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "125"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "125"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "125"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "125"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_414", "Parent" : "99", "Child" : ["131", "132", "133", "134"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_414.mul_32ns_32ns_64_1_1_U266", "Parent" : "130"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_414.mul_32ns_32ns_64_1_1_U267", "Parent" : "130"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_414.mul_32ns_32ns_64_1_1_U268", "Parent" : "130"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_414.mul_32ns_32ns_64_1_1_U269", "Parent" : "130"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_421", "Parent" : "99", "Child" : ["136", "137", "138", "139"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_421.mul_32ns_32ns_64_1_1_U266", "Parent" : "135"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_421.mul_32ns_32ns_64_1_1_U267", "Parent" : "135"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_421.mul_32ns_32ns_64_1_1_U268", "Parent" : "135"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_421.mul_32ns_32ns_64_1_1_U269", "Parent" : "135"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_428", "Parent" : "99", "Child" : ["141", "142", "143", "144"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_428.mul_32ns_32ns_64_1_1_U266", "Parent" : "140"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_428.mul_32ns_32ns_64_1_1_U267", "Parent" : "140"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_428.mul_32ns_32ns_64_1_1_U268", "Parent" : "140"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_529.grp_rdc_mont_2_fu_98.grp_digit_x_digit_fu_428.mul_32ns_32ns_64_1_1_U269", "Parent" : "140"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537", "Parent" : "0", "Child" : ["146", "147", "148", "170"],
		"CDFG" : "fpmul503_mont_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "534", "EstimateLatencyMax" : "534",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_mp_mul_4_fu_102", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "170", "SubInstance" : "grp_rdc_mont_2_fu_113", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ma_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_mp_mul_4_fu_102", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.temp_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.temp_1_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102", "Parent" : "145", "Child" : ["149"],
		"CDFG" : "mp_mul_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_mul_489_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_mul_489_fu_30", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_mul_489_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_mul_489_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30", "Parent" : "148", "Child" : ["150", "151", "152", "154", "157", "160", "162", "165"],
		"CDFG" : "mul_489",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_mul_489_Pipeline_VITIS_LOOP_38_1_fu_72", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_mul_489_Pipeline_VITIS_LOOP_38_186_fu_80", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_mul_489_Pipeline_VITIS_LOOP_63_1_fu_64", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "165", "SubInstance" : "grp_convert_blocks_to_digits_fu_103", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_mul_489_Pipeline_VITIS_LOOP_63_1_fu_64", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "165", "SubInstance" : "grp_convert_blocks_to_digits_fu_103", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.acc_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.acc_1_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_63_1_fu_64", "Parent" : "149", "Child" : ["153"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_63_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_1_fu_72", "Parent" : "149", "Child" : ["155", "156"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "zext_ln41", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_1_fu_72.partset_512ns_512ns_64ns_32ns_512_1_1_U1241", "Parent" : "154"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "154"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_186_fu_80", "Parent" : "149", "Child" : ["158", "159"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_38_186",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_186_fu_80.partset_512ns_512ns_64ns_32ns_512_1_1_U1245", "Parent" : "157"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_186_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_85_2_fu_87", "Parent" : "149", "Child" : ["161"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_85_2_fu_87.flow_control_loop_pipe_sequential_init_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_95", "Parent" : "149", "Child" : ["163", "164"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload75", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_95.mul_64ns_64ns_128_1_1_U1250", "Parent" : "162"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_95.flow_control_loop_pipe_sequential_init_U", "Parent" : "162"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103", "Parent" : "149", "Child" : ["166", "168"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "168", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "168", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "165", "Child" : ["167"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "167", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "166"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "165", "Child" : ["169"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "169", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_mp_mul_4_fu_102.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113", "Parent" : "145", "Child" : ["171", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "191", "196", "201", "206", "211"],
		"CDFG" : "rdc_mont_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
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
					{"ID" : "171", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_297", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_297", "Parent" : "170", "Child" : ["172"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln308", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_297.flow_control_loop_pipe_sequential_init_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_304", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_311", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_318", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_324", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_330", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_337", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_344", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_350", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_357", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_366", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_is_digit_lessthan_ct_fu_373", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.tmp_693_is_digit_lessthan_ct_fu_379", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.tmp_694_is_digit_lessthan_ct_fu_386", "Parent" : "170",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_393", "Parent" : "170", "Child" : ["187", "188", "189", "190"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "186"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "186"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "186"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "186"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_400", "Parent" : "170", "Child" : ["192", "193", "194", "195"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "191"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "191"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "191"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "191"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_407", "Parent" : "170", "Child" : ["197", "198", "199", "200"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "196"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "196"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "196"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "196"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_414", "Parent" : "170", "Child" : ["202", "203", "204", "205"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_414.mul_32ns_32ns_64_1_1_U266", "Parent" : "201"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_414.mul_32ns_32ns_64_1_1_U267", "Parent" : "201"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_414.mul_32ns_32ns_64_1_1_U268", "Parent" : "201"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_414.mul_32ns_32ns_64_1_1_U269", "Parent" : "201"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_421", "Parent" : "170", "Child" : ["207", "208", "209", "210"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_421.mul_32ns_32ns_64_1_1_U266", "Parent" : "206"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_421.mul_32ns_32ns_64_1_1_U267", "Parent" : "206"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_421.mul_32ns_32ns_64_1_1_U268", "Parent" : "206"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_421.mul_32ns_32ns_64_1_1_U269", "Parent" : "206"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_428", "Parent" : "170", "Child" : ["212", "213", "214", "215"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_428.mul_32ns_32ns_64_1_1_U266", "Parent" : "211"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_428.mul_32ns_32ns_64_1_1_U267", "Parent" : "211"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_428.mul_32ns_32ns_64_1_1_U268", "Parent" : "211"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_4_fu_537.grp_rdc_mont_2_fu_113.grp_digit_x_digit_fu_428.mul_32ns_32ns_64_1_1_U269", "Parent" : "211"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_1_fu_545", "Parent" : "0", "Child" : ["217"],
		"CDFG" : "fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_1_fu_545.flow_control_loop_pipe_sequential_init_U", "Parent" : "216"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552", "Parent" : "0", "Child" : ["219", "220", "221", "243"],
		"CDFG" : "fpsqr503_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "414", "EstimateLatencyMax" : "414",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_mp_mul_3_1_fu_82", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "243", "SubInstance" : "grp_rdc_mont_6_fu_90", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.temp_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.temp_1_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82", "Parent" : "218", "Child" : ["222"],
		"CDFG" : "mp_mul_3_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_mul_3_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_mul_3_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_mul_3_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18", "Parent" : "221", "Child" : ["223", "224", "225", "227", "230", "232", "235", "238"],
		"CDFG" : "mul_3_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "266", "EstimateLatencyMax" : "266",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_mul_3_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "232", "SubInstance" : "grp_mul_3_1_Pipeline_VITIS_LOOP_38_189_fu_71", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_mul_3_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "238", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_mul_3_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "238", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.acc_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.acc_1_U", "Parent" : "222"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "222", "Child" : ["226"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "222", "Child" : ["228", "229"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U1201", "Parent" : "227"},
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "227"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_85_2_fu_63", "Parent" : "222", "Child" : ["231"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_85_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_189_fu_71", "Parent" : "222", "Child" : ["233", "234"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_38_189",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_189_fu_71.partset_512ns_512ns_64ns_32ns_512_1_1_U1204", "Parent" : "232"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_38_189_fu_71.flow_control_loop_pipe_sequential_init_U", "Parent" : "232"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "222", "Child" : ["236", "237"],
		"CDFG" : "mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U1209", "Parent" : "235"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "222", "Child" : ["239", "241"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "241", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "241", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "241", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "238", "Child" : ["240"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "240", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "239"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "238", "Child" : ["242"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_mp_mul_3_1_fu_82.grp_mul_3_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90", "Parent" : "218", "Child" : ["244", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "264", "269", "274", "279", "284"],
		"CDFG" : "rdc_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "126",
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
					{"ID" : "244", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "243", "Child" : ["245"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_283", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_290", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_297", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_303", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_309", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_316", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_323", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_329", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_336", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_345", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_is_digit_lessthan_ct_fu_352", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "243",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_372", "Parent" : "243", "Child" : ["260", "261", "262", "263"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "259"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "259"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "259"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "259"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_379", "Parent" : "243", "Child" : ["265", "266", "267", "268"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "264"},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "264"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "264"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "264"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_386", "Parent" : "243", "Child" : ["270", "271", "272", "273"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "269"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "269"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "269"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "269"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_393", "Parent" : "243", "Child" : ["275", "276", "277", "278"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "274"},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "274"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "274"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "274"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_400", "Parent" : "243", "Child" : ["280", "281", "282", "283"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "279"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "279"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "279"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "279"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_407", "Parent" : "243", "Child" : ["285", "286", "287", "288"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "284"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "284"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "284"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_552.grp_rdc_mont_6_fu_90.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "284"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557", "Parent" : "0", "Child" : ["290", "291", "292", "314"],
		"CDFG" : "fpmul503_mont_3_266",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "402",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_mp_mul_586_fu_84", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_mp_mul_586_fu_84", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "314", "SubInstance" : "grp_rdc_mont_6_fu_94", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.temp_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.temp_1_U", "Parent" : "289"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84", "Parent" : "289", "Child" : ["293"],
		"CDFG" : "mp_mul_586",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20", "Parent" : "292", "Child" : ["294", "295", "296", "298", "301", "304", "306", "309"],
		"CDFG" : "mul_491",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "309", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "309", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.acc_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.acc_1_U", "Parent" : "293"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "293", "Child" : ["297"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "293", "Child" : ["299", "300"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "298"},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "298"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "293", "Child" : ["302", "303"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_184",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "301"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "293", "Child" : ["305"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "293", "Child" : ["307", "308"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "306"},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "293", "Child" : ["310", "312"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "310", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "312", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "310", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "312", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "309", "Child" : ["311"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "311", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "309", "Child" : ["313"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "313", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94", "Parent" : "289", "Child" : ["315", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "335", "340", "345", "350", "355"],
		"CDFG" : "rdc_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "126",
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
					{"ID" : "315", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "314", "Child" : ["316"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_283", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_290", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_297", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_303", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_309", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_316", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_323", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_329", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_336", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_345", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_352", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "314",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372", "Parent" : "314", "Child" : ["331", "332", "333", "334"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "330"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "330"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "330"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "330"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379", "Parent" : "314", "Child" : ["336", "337", "338", "339"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "335"},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "335"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "335"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "335"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386", "Parent" : "314", "Child" : ["341", "342", "343", "344"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "340"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "340"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "340"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "340"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393", "Parent" : "314", "Child" : ["346", "347", "348", "349"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "345"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "345"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "345"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "345"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400", "Parent" : "314", "Child" : ["351", "352", "353", "354"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "350"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "350"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "350"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "350"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407", "Parent" : "314", "Child" : ["356", "357", "358", "359"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "355"},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "355"},
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "355"},
	{"ID" : "359", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_266_fu_557.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "355"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564", "Parent" : "0", "Child" : ["361", "362", "363", "385"],
		"CDFG" : "fpmul503_mont_3_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "402",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "363", "SubInstance" : "grp_mp_mul_4_fu_94", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ma_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "363", "SubInstance" : "grp_mp_mul_4_fu_94", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "385", "SubInstance" : "grp_rdc_mont_6_fu_105", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.temp_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.temp_1_U", "Parent" : "360"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94", "Parent" : "360", "Child" : ["364"],
		"CDFG" : "mp_mul_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_489_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_489_fu_30", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_489_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mul_489_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30", "Parent" : "363", "Child" : ["365", "366", "367", "369", "372", "375", "377", "380"],
		"CDFG" : "mul_489",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "369", "SubInstance" : "grp_mul_489_Pipeline_VITIS_LOOP_38_1_fu_72", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_mul_489_Pipeline_VITIS_LOOP_38_186_fu_80", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_mul_489_Pipeline_VITIS_LOOP_63_1_fu_64", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "380", "SubInstance" : "grp_convert_blocks_to_digits_fu_103", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_mul_489_Pipeline_VITIS_LOOP_63_1_fu_64", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "380", "SubInstance" : "grp_convert_blocks_to_digits_fu_103", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.acc_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.acc_1_U", "Parent" : "364"},
	{"ID" : "367", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_63_1_fu_64", "Parent" : "364", "Child" : ["368"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_63_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_1_fu_72", "Parent" : "364", "Child" : ["370", "371"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "zext_ln41", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_1_fu_72.partset_512ns_512ns_64ns_32ns_512_1_1_U1241", "Parent" : "369"},
	{"ID" : "371", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "369"},
	{"ID" : "372", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_186_fu_80", "Parent" : "364", "Child" : ["373", "374"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_38_186",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_186_fu_80.partset_512ns_512ns_64ns_32ns_512_1_1_U1245", "Parent" : "372"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_38_186_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_85_2_fu_87", "Parent" : "364", "Child" : ["376"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_85_2_fu_87.flow_control_loop_pipe_sequential_init_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_95", "Parent" : "364", "Child" : ["378", "379"],
		"CDFG" : "mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload75", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_95.mul_64ns_64ns_128_1_1_U1250", "Parent" : "377"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_95.flow_control_loop_pipe_sequential_init_U", "Parent" : "377"},
	{"ID" : "380", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103", "Parent" : "364", "Child" : ["381", "383"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "383", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "383", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "381", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "383", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "381", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "383", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "380", "Child" : ["382"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "380", "Child" : ["384"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_mp_mul_4_fu_94.grp_mul_489_fu_30.grp_convert_blocks_to_digits_fu_103.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105", "Parent" : "360", "Child" : ["386", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "406", "411", "416", "421", "426"],
		"CDFG" : "rdc_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "126",
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
					{"ID" : "386", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "385", "Child" : ["387"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "386"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_283", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_290", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_297", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_303", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_309", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_316", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_323", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_329", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_336", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_345", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_is_digit_lessthan_ct_fu_352", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "385",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_372", "Parent" : "385", "Child" : ["402", "403", "404", "405"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "401"},
	{"ID" : "403", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "401"},
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "401"},
	{"ID" : "405", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "401"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_379", "Parent" : "385", "Child" : ["407", "408", "409", "410"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "406"},
	{"ID" : "408", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "406"},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "406"},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "406"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_386", "Parent" : "385", "Child" : ["412", "413", "414", "415"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "411"},
	{"ID" : "413", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "411"},
	{"ID" : "414", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "411"},
	{"ID" : "415", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "411"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_393", "Parent" : "385", "Child" : ["417", "418", "419", "420"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "416"},
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "416"},
	{"ID" : "419", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "416"},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "416"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_400", "Parent" : "385", "Child" : ["422", "423", "424", "425"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "421"},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "421"},
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "421"},
	{"ID" : "425", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "421"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_407", "Parent" : "385", "Child" : ["427", "428", "429", "430"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "426"},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "426"},
	{"ID" : "429", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "426"},
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_3_1_fu_564.grp_rdc_mont_6_fu_105.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "426"},
	{"ID" : "431", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_196_fu_586", "Parent" : "0", "Child" : ["432"],
		"CDFG" : "fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_196",
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
			{"Name" : "tt", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_196_fu_586.flow_control_loop_pipe_sequential_init_U", "Parent" : "431"}]}


set ArgLastReadFirstWriteLatency {
	fpinv503_chain_mont {
		a {Type IO LastRead 0 FirstWrite -1}}
	fpsqr503_mont {
		ma {Type I LastRead 0 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	mp_mul_3_1 {
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_3_1 {
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_38_1 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_38_189 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	rdc_mont_6 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpmul503_mont_5 {
		ma {Type I LastRead 0 FirstWrite -1}
		mb {Type I LastRead 0 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	mp_mul_586 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_184 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	rdc_mont_2 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpmul503_mont_4 {
		mc {Type IO LastRead 0 FirstWrite -1}
		ma_offset {Type I LastRead 0 FirstWrite -1}
		mb {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	mp_mul_4 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_489 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_38_1 {
		zext_ln41 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_38_186 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload75 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	rdc_mont_2 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_2_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln308 {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_1 {
		a {Type I LastRead 0 FirstWrite -1}
		tt {Type O LastRead -1 FirstWrite 1}}
	fpsqr503_mont_1 {
		mc {Type IO LastRead 0 FirstWrite -1}}
	mp_mul_3_1 {
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_3_1 {
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_38_1 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_38_189 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_3_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	rdc_mont_6 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpmul503_mont_3_266 {
		ma {Type I LastRead 0 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}}
	mp_mul_586 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_184 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	rdc_mont_6 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpmul503_mont_3_1 {
		ma {Type I LastRead 0 FirstWrite -1}
		ma_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}}
	mp_mul_4 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_489 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_38_1 {
		zext_ln41 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_38_186 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_489_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload75 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	rdc_mont_6 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpinv503_chain_mont_Pipeline_VITIS_LOOP_13_196 {
		tt {Type I LastRead 0 FirstWrite -1}
		a {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "253292", "Max" : "253292"}
	, {"Name" : "Interval", "Min" : "253292", "Max" : "253292"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 3 }  { a_ce0 mem_ce 1 1 }  { a_we0 mem_we 1 1 }  { a_d0 mem_din 1 64 }  { a_q0 mem_dout 0 64 } } }
}
