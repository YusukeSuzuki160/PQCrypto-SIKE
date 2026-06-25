set ModuleHierarchy {[{
"Name" : "test_mul_karatsuba_configurable","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_mul_1_fu_28","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_256_1_fu_363","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_256_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_256_14_fu_370","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_256_1","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_mul_fu_377","ID" : "6","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_mul_sized_8u_s_fu_8","ID" : "7","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_140","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_175_1","ID" : "9","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_187_3_fu_152","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_187_3","ID" : "11","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_160","ID" : "12","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_181_2","ID" : "13","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_4u_s_fu_170","ID" : "14","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_110_1_fu_20","ID" : "15","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_110_1","ID" : "16","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_117_2_fu_30","ID" : "17","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_117_2","ID" : "18","Type" : "pipeline"},]},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_128_1_fu_177","ID" : "19","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_128_1","ID" : "20","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_1_fu_183","ID" : "21","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_91_1","ID" : "22","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_11_fu_191","ID" : "23","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_91_1","ID" : "24","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_128_12_fu_199","ID" : "25","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_128_1","ID" : "26","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_4u_1_fu_205","ID" : "27","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_110_1_fu_34","ID" : "28","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_110_1","ID" : "29","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_117_2_fu_44","ID" : "30","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_117_2","ID" : "31","Type" : "pipeline"},]},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_128_13_fu_213","ID" : "32","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_128_1","ID" : "33","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_148_1_fu_220","ID" : "34","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_148_1","ID" : "35","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_77_1_fu_226","ID" : "36","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_77_1","ID" : "37","Type" : "pipeline"},]},]},]},
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_276_1_fu_384","ID" : "38","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_276_1","ID" : "39","Type" : "pipeline"},]},]},]
}]}