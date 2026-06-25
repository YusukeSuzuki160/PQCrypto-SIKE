set SynModuleInfo {
  {SRCNAME mul.1_Pipeline_VITIS_LOOP_256_1 MODELNAME mul_1_Pipeline_VITIS_LOOP_256_1 RTLNAME test_mul_karatsuba_configurable_mul_1_Pipeline_VITIS_LOOP_256_1
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init RTLNAME test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mul.1_Pipeline_VITIS_LOOP_256_11 MODELNAME mul_1_Pipeline_VITIS_LOOP_256_11 RTLNAME test_mul_karatsuba_configurable_mul_1_Pipeline_VITIS_LOOP_256_11}
  {SRCNAME mul_sized<8u>_Pipeline_VITIS_LOOP_110_1 MODELNAME mul_sized_8u_Pipeline_VITIS_LOOP_110_1 RTLNAME test_mul_karatsuba_configurable_mul_sized_8u_Pipeline_VITIS_LOOP_110_1}
  {SRCNAME mul_sized<8u>_Pipeline_VITIS_LOOP_117_2 MODELNAME mul_sized_8u_Pipeline_VITIS_LOOP_117_2 RTLNAME test_mul_karatsuba_configurable_mul_sized_8u_Pipeline_VITIS_LOOP_117_2
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_partselect_64ns_1024ns_32ns_64_1_1 RTLNAME test_mul_karatsuba_configurable_partselect_64ns_1024ns_32ns_64_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME mul_sized<8u> MODELNAME mul_sized_8u_s RTLNAME test_mul_karatsuba_configurable_mul_sized_8u_s
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_mul_512ns_512ns_1024_2_1 RTLNAME test_mul_karatsuba_configurable_mul_512ns_512ns_1024_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mul MODELNAME mul RTLNAME test_mul_karatsuba_configurable_mul}
  {SRCNAME mul.1_Pipeline_VITIS_LOOP_276_1 MODELNAME mul_1_Pipeline_VITIS_LOOP_276_1 RTLNAME test_mul_karatsuba_configurable_mul_1_Pipeline_VITIS_LOOP_276_1}
  {SRCNAME mul.1 MODELNAME mul_1 RTLNAME test_mul_karatsuba_configurable_mul_1
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_mul_1_la_RAM_AUTO_1R1W RTLNAME test_mul_karatsuba_configurable_mul_1_la_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME test_mul_karatsuba_configurable_mul_1_lc_RAM_AUTO_1R1W RTLNAME test_mul_karatsuba_configurable_mul_1_lc_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME test_mul_karatsuba_configurable MODELNAME test_mul_karatsuba_configurable RTLNAME test_mul_karatsuba_configurable IS_TOP 1
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_control_s_axi RTLNAME test_mul_karatsuba_configurable_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
