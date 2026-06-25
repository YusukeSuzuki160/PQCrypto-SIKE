set ModuleHierarchy {[{
"Name" : "test_mul_karatsuba_configurable","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_mul_1_fu_28","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_256_1_fu_363","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_256_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_256_11_fu_370","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_256_1","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_mul_fu_377","ID" : "6","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_mul_sized_8u_s_fu_8","ID" : "7","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_110_1_fu_20","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_110_1","ID" : "9","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_117_2_fu_30","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_117_2","ID" : "11","Type" : "pipeline"},]},]},]},
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_276_1_fu_384","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_276_1","ID" : "13","Type" : "pipeline"},]},]},]
}]}