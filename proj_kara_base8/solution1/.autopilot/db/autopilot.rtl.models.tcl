set SynModuleInfo {
  {SRCNAME mul_Pipeline_VITIS_LOOP_74_1 MODELNAME mul_Pipeline_VITIS_LOOP_74_1 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_74_1
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_partset_512ns_512ns_64ns_32ns_512_1_1 RTLNAME test_mul_karatsuba_configurable_partset_512ns_512ns_64ns_32ns_512_1_1 BINDTYPE op TYPE partset IMPL auto}
      {MODELNAME test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init RTLNAME test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mul_Pipeline_VITIS_LOOP_81_2 MODELNAME mul_Pipeline_VITIS_LOOP_81_2 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_81_2
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_partselect_64ns_1024ns_32ns_64_1_1 RTLNAME test_mul_karatsuba_configurable_partselect_64ns_1024ns_32ns_64_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME mul MODELNAME mul RTLNAME test_mul_karatsuba_configurable_mul
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_mul_512ns_512ns_1024_2_1 RTLNAME test_mul_karatsuba_configurable_mul_512ns_512ns_1024_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mul.1 MODELNAME mul_1 RTLNAME test_mul_karatsuba_configurable_mul_1}
  {SRCNAME test_mul_karatsuba_configurable MODELNAME test_mul_karatsuba_configurable RTLNAME test_mul_karatsuba_configurable IS_TOP 1
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_control_s_axi RTLNAME test_mul_karatsuba_configurable_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
