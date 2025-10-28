set ModuleHierarchy {[{
"Name" : "test_mul_comba_configurable","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_mul_fu_28","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_mul_Pipeline_VITIS_LOOP_188_1_fu_91","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_188_1","ID" : "3","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_210_2","ID" : "4","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_mul_Pipeline_VITIS_LOOP_219_3_fu_97","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_219_3","ID" : "6","Type" : "pipeline"},]},]},]},]
}]}