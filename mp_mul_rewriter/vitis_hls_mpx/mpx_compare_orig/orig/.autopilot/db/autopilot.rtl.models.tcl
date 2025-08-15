set SynModuleInfo {
  {SRCNAME mp_mul_orig_Pipeline_outer1 MODELNAME mp_mul_orig_Pipeline_outer1 RTLNAME mp_mul_orig_mp_mul_orig_Pipeline_outer1
    SUBMODULES {
      {MODELNAME mp_mul_orig_flow_control_loop_pipe_sequential_init RTLNAME mp_mul_orig_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mp_mul_orig_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mp_mul_orig_Pipeline_outer2 MODELNAME mp_mul_orig_Pipeline_outer2 RTLNAME mp_mul_orig_mp_mul_orig_Pipeline_outer2}
  {SRCNAME mp_mul_orig MODELNAME mp_mul_orig RTLNAME mp_mul_orig IS_TOP 1
    SUBMODULES {
      {MODELNAME mp_mul_orig_mul_64ns_64ns_128_5_1 RTLNAME mp_mul_orig_mul_64ns_64ns_128_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME mp_mul_orig_gmem_m_axi RTLNAME mp_mul_orig_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mp_mul_orig_control_s_axi RTLNAME mp_mul_orig_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
