set SynModuleInfo {
  {SRCNAME mp_mul_packed_Pipeline_VITIS_LOOP_30_1 MODELNAME mp_mul_packed_Pipeline_VITIS_LOOP_30_1 RTLNAME mp_mul_packed_mp_mul_packed_Pipeline_VITIS_LOOP_30_1
    SUBMODULES {
      {MODELNAME mp_mul_packed_flow_control_loop_pipe_sequential_init RTLNAME mp_mul_packed_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mp_mul_packed_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mp_mul_packed_Pipeline_VITIS_LOOP_30_11 MODELNAME mp_mul_packed_Pipeline_VITIS_LOOP_30_11 RTLNAME mp_mul_packed_mp_mul_packed_Pipeline_VITIS_LOOP_30_11}
  {SRCNAME mp_mul_packed_Pipeline_VITIS_LOOP_49_1 MODELNAME mp_mul_packed_Pipeline_VITIS_LOOP_49_1 RTLNAME mp_mul_packed_mp_mul_packed_Pipeline_VITIS_LOOP_49_1
    SUBMODULES {
      {MODELNAME mp_mul_packed_partselect_64ns_1024ns_32ns_64_1_1 RTLNAME mp_mul_packed_partselect_64ns_1024ns_32ns_64_1_1 BINDTYPE op TYPE partselect IMPL auto}
    }
  }
  {SRCNAME mp_mul_packed MODELNAME mp_mul_packed RTLNAME mp_mul_packed IS_TOP 1
    SUBMODULES {
      {MODELNAME mp_mul_packed_mul_512ns_512ns_1024_5_1 RTLNAME mp_mul_packed_mul_512ns_512ns_1024_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME mp_mul_packed_gmem_m_axi RTLNAME mp_mul_packed_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mp_mul_packed_control_s_axi RTLNAME mp_mul_packed_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
