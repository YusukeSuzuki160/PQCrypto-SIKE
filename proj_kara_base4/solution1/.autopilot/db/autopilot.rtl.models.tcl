set SynModuleInfo {
  {SRCNAME mul_Pipeline_VITIS_LOOP_151_1 MODELNAME mul_Pipeline_VITIS_LOOP_151_1 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_151_1
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init RTLNAME test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mul_Pipeline_VITIS_LOOP_157_2 MODELNAME mul_Pipeline_VITIS_LOOP_157_2 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_157_2}
  {SRCNAME mul_Pipeline_VITIS_LOOP_74_1 MODELNAME mul_Pipeline_VITIS_LOOP_74_1 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_74_1
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_sparsemux_9_2_64_1_1 RTLNAME test_mul_karatsuba_configurable_sparsemux_9_2_64_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME test_mul_karatsuba_configurable_partset_256ns_256ns_64ns_32ns_256_1_1 RTLNAME test_mul_karatsuba_configurable_partset_256ns_256ns_64ns_32ns_256_1_1 BINDTYPE op TYPE partset IMPL auto}
    }
  }
  {SRCNAME mul_Pipeline_VITIS_LOOP_81_2 MODELNAME mul_Pipeline_VITIS_LOOP_81_2 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_81_2
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_partselect_64ns_512ns_32ns_64_1_1 RTLNAME test_mul_karatsuba_configurable_partselect_64ns_512ns_32ns_64_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME mul_Pipeline_VITIS_LOOP_74_11 MODELNAME mul_Pipeline_VITIS_LOOP_74_11 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_74_11}
  {SRCNAME mul_Pipeline_VITIS_LOOP_81_22 MODELNAME mul_Pipeline_VITIS_LOOP_81_22 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_81_22}
  {SRCNAME mul_Pipeline_VITIS_LOOP_56_1 MODELNAME mul_Pipeline_VITIS_LOOP_56_1 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_56_1}
  {SRCNAME mul_Pipeline_VITIS_LOOP_56_13 MODELNAME mul_Pipeline_VITIS_LOOP_56_13 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_56_13}
  {SRCNAME mul_Pipeline_VITIS_LOOP_74_14 MODELNAME mul_Pipeline_VITIS_LOOP_74_14 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_74_14}
  {SRCNAME mul_Pipeline_VITIS_LOOP_81_25 MODELNAME mul_Pipeline_VITIS_LOOP_81_25 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_81_25}
  {SRCNAME mul_Pipeline_VITIS_LOOP_97_1 MODELNAME mul_Pipeline_VITIS_LOOP_97_1 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_97_1}
  {SRCNAME mul_Pipeline_VITIS_LOOP_103_2 MODELNAME mul_Pipeline_VITIS_LOOP_103_2 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_103_2}
  {SRCNAME mul_Pipeline_VITIS_LOOP_113_3 MODELNAME mul_Pipeline_VITIS_LOOP_113_3 RTLNAME test_mul_karatsuba_configurable_mul_Pipeline_VITIS_LOOP_113_3
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_partselect_64ns_1056s_32ns_64_1_1 RTLNAME test_mul_karatsuba_configurable_partselect_64ns_1056s_32ns_64_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME mul MODELNAME mul RTLNAME test_mul_karatsuba_configurable_mul
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_mul_256ns_256ns_512_2_1 RTLNAME test_mul_karatsuba_configurable_mul_256ns_256ns_512_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME test_mul_karatsuba_configurable_mul_z0_RAM_AUTO_1R1W RTLNAME test_mul_karatsuba_configurable_mul_z0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME test_mul_karatsuba_configurable_mul_z1_RAM_AUTO_1R1W RTLNAME test_mul_karatsuba_configurable_mul_z1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mul.1 MODELNAME mul_1 RTLNAME test_mul_karatsuba_configurable_mul_1}
  {SRCNAME test_mul_karatsuba_configurable MODELNAME test_mul_karatsuba_configurable RTLNAME test_mul_karatsuba_configurable IS_TOP 1
    SUBMODULES {
      {MODELNAME test_mul_karatsuba_configurable_control_s_axi RTLNAME test_mul_karatsuba_configurable_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
