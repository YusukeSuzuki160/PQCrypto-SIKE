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
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_175_1","ID" : "9","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_187_3_fu_118","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_187_3","ID" : "11","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126","ID" : "12","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_181_2","ID" : "13","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_4u_s_fu_136","ID" : "14","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108","ID" : "15","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_175_1","ID" : "16","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_187_3_fu_120","ID" : "17","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_187_3","ID" : "18","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128","ID" : "19","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_181_2","ID" : "20","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_2u_s_fu_138","ID" : "21","Type" : "sequential",
						"SubInsts" : [
						{"Name" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34","ID" : "22","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_110_1","ID" : "23","Type" : "pipeline"},]},
						{"Name" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44","ID" : "24","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_117_2","ID" : "25","Type" : "pipeline"},]},]},
					{"Name" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_1_fu_147","ID" : "26","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_91_1","ID" : "27","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_13_fu_155","ID" : "28","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_91_1","ID" : "29","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_2u_2_fu_163","ID" : "30","Type" : "sequential",
						"SubInsts" : [
						{"Name" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34","ID" : "31","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_110_1","ID" : "32","Type" : "pipeline"},]},
						{"Name" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44","ID" : "33","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_117_2","ID" : "34","Type" : "pipeline"},]},]},
					{"Name" : "grp_karatsuba_combine_fu_171","ID" : "35","Type" : "sequential",
						"SubInsts" : [
						{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86","ID" : "36","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_128_1","ID" : "37","Type" : "pipeline"},]},
						{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_17_fu_94","ID" : "38","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_128_1","ID" : "39","Type" : "pipeline"},]},
						{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_18_fu_102","ID" : "40","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_128_1","ID" : "41","Type" : "pipeline"},]},
						{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110","ID" : "42","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_148_1","ID" : "43","Type" : "pipeline"},]},
						{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117","ID" : "44","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_77_1","ID" : "45","Type" : "pipeline"},]},]},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_1_fu_143","ID" : "46","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_91_1","ID" : "47","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_11_fu_151","ID" : "48","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_91_1","ID" : "49","Type" : "pipeline"},]},
				{"Name" : "grp_mul_sized_4u_1_fu_159","ID" : "50","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112","ID" : "51","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_175_1","ID" : "52","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3_fu_124","ID" : "53","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_187_3","ID" : "54","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132","ID" : "55","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_181_2","ID" : "56","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_2u_s_fu_143","ID" : "57","Type" : "sequential",
						"SubInsts" : [
						{"Name" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34","ID" : "58","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_110_1","ID" : "59","Type" : "pipeline"},]},
						{"Name" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44","ID" : "60","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_117_2","ID" : "61","Type" : "pipeline"},]},]},
					{"Name" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1_fu_152","ID" : "62","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_91_1","ID" : "63","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12_fu_161","ID" : "64","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_91_1","ID" : "65","Type" : "pipeline"},]},
					{"Name" : "grp_mul_sized_2u_2_fu_170","ID" : "66","Type" : "sequential",
						"SubInsts" : [
						{"Name" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34","ID" : "67","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_110_1","ID" : "68","Type" : "pipeline"},]},
						{"Name" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44","ID" : "69","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_117_2","ID" : "70","Type" : "pipeline"},]},]},
					{"Name" : "grp_karatsuba_combine_3_fu_178","ID" : "71","Type" : "sequential",
						"SubInsts" : [
						{"Name" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_78","ID" : "72","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_128_1","ID" : "73","Type" : "pipeline"},]},
						{"Name" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_15_fu_85","ID" : "74","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_128_1","ID" : "75","Type" : "pipeline"},]},
						{"Name" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_16_fu_93","ID" : "76","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_128_1","ID" : "77","Type" : "pipeline"},]},
						{"Name" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_101","ID" : "78","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_148_1","ID" : "79","Type" : "pipeline"},]},
						{"Name" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_108","ID" : "80","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_77_1","ID" : "81","Type" : "pipeline"},]},]},]},
				{"Name" : "grp_karatsuba_combine_fu_167","ID" : "82","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86","ID" : "83","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_128_1","ID" : "84","Type" : "pipeline"},]},
					{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_17_fu_94","ID" : "85","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_128_1","ID" : "86","Type" : "pipeline"},]},
					{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_18_fu_102","ID" : "87","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_128_1","ID" : "88","Type" : "pipeline"},]},
					{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110","ID" : "89","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_148_1","ID" : "90","Type" : "pipeline"},]},
					{"Name" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117","ID" : "91","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_77_1","ID" : "92","Type" : "pipeline"},]},]},]},]},
		{"Name" : "grp_mul_1_Pipeline_VITIS_LOOP_276_1_fu_384","ID" : "93","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_276_1","ID" : "94","Type" : "pipeline"},]},]},]
}]}