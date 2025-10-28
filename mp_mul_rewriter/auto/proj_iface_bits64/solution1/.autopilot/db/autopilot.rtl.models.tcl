set SynModuleInfo {
  {SRCNAME mul_Pipeline_VITIS_LOOP_65_1 MODELNAME mul_Pipeline_VITIS_LOOP_65_1 RTLNAME test_mul_iface_configurable_mul_Pipeline_VITIS_LOOP_65_1
    SUBMODULES {
      {MODELNAME test_mul_iface_configurable_flow_control_loop_pipe_sequential_init RTLNAME test_mul_iface_configurable_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_mul_iface_configurable_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mul_Pipeline_VITIS_LOOP_35_1 MODELNAME mul_Pipeline_VITIS_LOOP_35_1 RTLNAME test_mul_iface_configurable_mul_Pipeline_VITIS_LOOP_35_1
    SUBMODULES {
      {MODELNAME test_mul_iface_configurable_partset_512ns_512ns_64ns_32ns_512_1_1 RTLNAME test_mul_iface_configurable_partset_512ns_512ns_64ns_32ns_512_1_1 BINDTYPE op TYPE partset IMPL auto}
    }
  }
  {SRCNAME mul_Pipeline_VITIS_LOOP_35_11 MODELNAME mul_Pipeline_VITIS_LOOP_35_11 RTLNAME test_mul_iface_configurable_mul_Pipeline_VITIS_LOOP_35_11}
  {SRCNAME mul_Pipeline_VITIS_LOOP_84_2_VITIS_LOOP_98_3 MODELNAME mul_Pipeline_VITIS_LOOP_84_2_VITIS_LOOP_98_3 RTLNAME test_mul_iface_configurable_mul_Pipeline_VITIS_LOOP_84_2_VITIS_LOOP_98_3
    SUBMODULES {
      {MODELNAME test_mul_iface_configurable_mul_64ns_64ns_128_1_1 RTLNAME test_mul_iface_configurable_mul_64ns_64ns_128_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME test_mul_iface_configurable_partselect_64ns_512ns_32ns_64_1_1 RTLNAME test_mul_iface_configurable_partselect_64ns_512ns_32ns_64_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME mul_Pipeline_VITIS_LOOP_131_4 MODELNAME mul_Pipeline_VITIS_LOOP_131_4 RTLNAME test_mul_iface_configurable_mul_Pipeline_VITIS_LOOP_131_4
    SUBMODULES {
      {MODELNAME test_mul_iface_configurable_partselect_64ns_1024ns_32ns_64_1_1 RTLNAME test_mul_iface_configurable_partselect_64ns_1024ns_32ns_64_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME mul MODELNAME mul RTLNAME test_mul_iface_configurable_mul}
  {SRCNAME test_mul_iface_configurable MODELNAME test_mul_iface_configurable RTLNAME test_mul_iface_configurable IS_TOP 1
    SUBMODULES {
      {MODELNAME test_mul_iface_configurable_control_s_axi RTLNAME test_mul_iface_configurable_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
