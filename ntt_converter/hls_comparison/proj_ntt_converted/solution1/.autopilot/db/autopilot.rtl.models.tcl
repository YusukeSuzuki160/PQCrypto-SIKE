set SynModuleInfo {
  {SRCNAME forward_ntt_Pipeline_VITIS_LOOP_77_3 MODELNAME forward_ntt_Pipeline_VITIS_LOOP_77_3 RTLNAME ntt_forward_converted_forward_ntt_Pipeline_VITIS_LOOP_77_3
    SUBMODULES {
      {MODELNAME ntt_forward_converted_mul_32s_32s_64_1_1 RTLNAME ntt_forward_converted_mul_32s_32s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ntt_forward_converted_srem_64ns_32s_32_68_1 RTLNAME ntt_forward_converted_srem_64ns_32s_32_68_1 BINDTYPE op TYPE srem IMPL auto LATENCY 67 ALLOW_PRAGMA 1}
      {MODELNAME ntt_forward_converted_flow_control_loop_pipe_sequential_init RTLNAME ntt_forward_converted_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ntt_forward_converted_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME forward_ntt MODELNAME forward_ntt RTLNAME ntt_forward_converted_forward_ntt}
  {SRCNAME ntt_forward_converted MODELNAME ntt_forward_converted RTLNAME ntt_forward_converted IS_TOP 1
    SUBMODULES {
      {MODELNAME ntt_forward_converted_control_s_axi RTLNAME ntt_forward_converted_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
