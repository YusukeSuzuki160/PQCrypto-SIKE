set SynModuleInfo {
  {SRCNAME mul_Pipeline_VITIS_LOOP_188_1 MODELNAME mul_Pipeline_VITIS_LOOP_188_1 RTLNAME test_mul_comba_configurable_mul_Pipeline_VITIS_LOOP_188_1
    SUBMODULES {
      {MODELNAME test_mul_comba_configurable_flow_control_loop_pipe_sequential_init RTLNAME test_mul_comba_configurable_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_mul_comba_configurable_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mul_Pipeline_VITIS_LOOP_219_3 MODELNAME mul_Pipeline_VITIS_LOOP_219_3 RTLNAME test_mul_comba_configurable_mul_Pipeline_VITIS_LOOP_219_3
    SUBMODULES {
      {MODELNAME test_mul_comba_configurable_mul_32ns_32ns_64_1_1 RTLNAME test_mul_comba_configurable_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mul_Pipeline_VITIS_LOOP_126_1 MODELNAME mul_Pipeline_VITIS_LOOP_126_1 RTLNAME test_mul_comba_configurable_mul_Pipeline_VITIS_LOOP_126_1}
  {SRCNAME mul_Pipeline_VITIS_LOOP_126_11 MODELNAME mul_Pipeline_VITIS_LOOP_126_11 RTLNAME test_mul_comba_configurable_mul_Pipeline_VITIS_LOOP_126_11}
  {SRCNAME mul_Pipeline_VITIS_LOOP_175_1 MODELNAME mul_Pipeline_VITIS_LOOP_175_1 RTLNAME test_mul_comba_configurable_mul_Pipeline_VITIS_LOOP_175_1}
  {SRCNAME mul MODELNAME mul RTLNAME test_mul_comba_configurable_mul}
  {SRCNAME test_mul_comba_configurable MODELNAME test_mul_comba_configurable RTLNAME test_mul_comba_configurable IS_TOP 1
    SUBMODULES {
      {MODELNAME test_mul_comba_configurable_control_s_axi RTLNAME test_mul_comba_configurable_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
