set SynModuleInfo {
  {SRCNAME ntt_forward_orig_Pipeline_VITIS_LOOP_46_3 MODELNAME ntt_forward_orig_Pipeline_VITIS_LOOP_46_3 RTLNAME ntt_forward_orig_ntt_forward_orig_Pipeline_VITIS_LOOP_46_3
    SUBMODULES {
      {MODELNAME ntt_forward_orig_mul_32s_32s_64_1_1 RTLNAME ntt_forward_orig_mul_32s_32s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ntt_forward_orig_srem_64ns_32s_32_68_1 RTLNAME ntt_forward_orig_srem_64ns_32s_32_68_1 BINDTYPE op TYPE srem IMPL auto LATENCY 67 ALLOW_PRAGMA 1}
      {MODELNAME ntt_forward_orig_flow_control_loop_pipe_sequential_init RTLNAME ntt_forward_orig_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ntt_forward_orig_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME ntt_forward_orig MODELNAME ntt_forward_orig RTLNAME ntt_forward_orig IS_TOP 1
    SUBMODULES {
      {MODELNAME ntt_forward_orig_control_s_axi RTLNAME ntt_forward_orig_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
