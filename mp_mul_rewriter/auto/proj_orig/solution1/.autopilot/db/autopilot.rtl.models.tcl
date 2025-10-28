set SynModuleInfo {
  {SRCNAME test_mul_orig_Pipeline_VITIS_LOOP_41_2 MODELNAME test_mul_orig_Pipeline_VITIS_LOOP_41_2 RTLNAME test_mul_orig_test_mul_orig_Pipeline_VITIS_LOOP_41_2
    SUBMODULES {
      {MODELNAME test_mul_orig_mul_64ns_64ns_128_1_1 RTLNAME test_mul_orig_mul_64ns_64ns_128_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_mul_orig_flow_control_loop_pipe_sequential_init RTLNAME test_mul_orig_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_mul_orig_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_mul_orig_Pipeline_VITIS_LOOP_59_7 MODELNAME test_mul_orig_Pipeline_VITIS_LOOP_59_7 RTLNAME test_mul_orig_test_mul_orig_Pipeline_VITIS_LOOP_59_7}
  {SRCNAME test_mul_orig MODELNAME test_mul_orig RTLNAME test_mul_orig IS_TOP 1
    SUBMODULES {
      {MODELNAME test_mul_orig_control_s_axi RTLNAME test_mul_orig_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
