set ModuleHierarchy {[{
"Name" : "test_mul_karatsuba_synth","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_mul_1_fu_28","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_253_1_fu_363","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_253_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_253_112_fu_370","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_253_1","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_mul_fu_377","ID" : "6","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_mul_upto8_fu_8","ID" : "7","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_131_1_fu_178","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_131_1","ID" : "9","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_143_3_fu_190","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_143_3","ID" : "11","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_137_2_fu_198","ID" : "12","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_137_2","ID" : "13","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_32_1_fu_208","ID" : "14","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_32_1","ID" : "15","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_32_11_fu_214","ID" : "16","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_32_1","ID" : "17","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_48_1_fu_220","ID" : "18","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_48_1","ID" : "19","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_32_12_fu_226","ID" : "20","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_32_1","ID" : "21","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_32_13_fu_232","ID" : "22","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_32_1","ID" : "23","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_48_14_fu_238","ID" : "24","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_48_1","ID" : "25","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_62_1_fu_244","ID" : "26","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_62_1","ID" : "27","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_62_15_fu_252","ID" : "28","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_62_1","ID" : "29","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_88_1_fu_260","ID" : "30","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_88_1","ID" : "31","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_32_16_fu_266","ID" : "32","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_32_1","ID" : "33","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_32_17_fu_273","ID" : "34","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_32_1","ID" : "35","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_88_19_fu_280","ID" : "36","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_88_1","ID" : "37","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_48_18_fu_286","ID" : "38","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_48_1","ID" : "39","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_88_110_fu_293","ID" : "40","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_88_1","ID" : "41","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_108_1_fu_300","ID" : "42","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_108_1","ID" : "43","Type" : "pipeline"},]},
				{"Name" : "grp_mul_upto8_Pipeline_VITIS_LOOP_48_111_fu_306","ID" : "44","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_48_1","ID" : "45","Type" : "pipeline"},]},]},]},
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_273_1_fu_384","ID" : "46","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_273_1","ID" : "47","Type" : "pipeline"},]},]},]
}]}