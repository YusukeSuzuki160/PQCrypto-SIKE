set ModuleHierarchy {[{
"Name" : "kernel_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_kernel_top_Pipeline_VITIS_LOOP_18_1_fu_132","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_18_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_montMult_words_fu_147","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_mul_fu_20","ID" : "4","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_mul_Pipeline_CIOS_LOOP_fu_585","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "CIOS_LOOP","ID" : "6","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_kernel_top_Pipeline_VITIS_LOOP_20_2_fu_156","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_20_2","ID" : "8","Type" : "pipeline"},]},]
}]}