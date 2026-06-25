set SynModuleInfo {
  {SRCNAME test_mul_packed_simple_Pipeline_VITIS_LOOP_30_1 MODELNAME test_mul_packed_simple_Pipeline_VITIS_LOOP_30_1 RTLNAME test_mul_packed_simple_test_mul_packed_simple_Pipeline_VITIS_LOOP_30_1
    SUBMODULES {
      {MODELNAME test_mul_packed_simple_flow_control_loop_pipe_sequential_init RTLNAME test_mul_packed_simple_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_mul_packed_simple_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_mul_packed_simple_Pipeline_VITIS_LOOP_30_11 MODELNAME test_mul_packed_simple_Pipeline_VITIS_LOOP_30_11 RTLNAME test_mul_packed_simple_test_mul_packed_simple_Pipeline_VITIS_LOOP_30_11}
  {SRCNAME test_mul_packed_simple_Pipeline_VITIS_LOOP_48_1 MODELNAME test_mul_packed_simple_Pipeline_VITIS_LOOP_48_1 RTLNAME test_mul_packed_simple_test_mul_packed_simple_Pipeline_VITIS_LOOP_48_1
    SUBMODULES {
      {MODELNAME test_mul_packed_simple_partselect_64ns_1024ns_32ns_64_1_1 RTLNAME test_mul_packed_simple_partselect_64ns_1024ns_32ns_64_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME test_mul_packed_simple MODELNAME test_mul_packed_simple RTLNAME test_mul_packed_simple IS_TOP 1
    SUBMODULES {
      {MODELNAME test_mul_packed_simple_mul_512ns_512ns_1024_2_1 RTLNAME test_mul_packed_simple_mul_512ns_512ns_1024_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME test_mul_packed_simple_control_s_axi RTLNAME test_mul_packed_simple_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
