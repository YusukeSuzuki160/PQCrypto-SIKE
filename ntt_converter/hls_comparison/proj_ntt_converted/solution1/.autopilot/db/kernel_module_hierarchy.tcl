set ModuleHierarchy {[{
"Name" : "ntt_forward_converted","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_forward_ntt_fu_42","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_forward_ntt_Pipeline_VITIS_LOOP_117_1_fu_2124","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_117_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_forward_ntt_Pipeline_VITIS_LOOP_145_5_fu_2643","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_145_5","ID" : "5","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_127_2","ID" : "6","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_129_3","ID" : "7","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_forward_ntt_Pipeline_VITIS_LOOP_131_4_fu_2905","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_131_4","ID" : "9","Type" : "pipeline"},]},]},]},]},]
}]}