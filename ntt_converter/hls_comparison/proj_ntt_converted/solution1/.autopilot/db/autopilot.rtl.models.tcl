set SynModuleInfo {
  {SRCNAME forward_ntt_Pipeline_VITIS_LOOP_117_1 MODELNAME forward_ntt_Pipeline_VITIS_LOOP_117_1 RTLNAME ntt_forward_converted_forward_ntt_Pipeline_VITIS_LOOP_117_1
    SUBMODULES {
      {MODELNAME ntt_forward_converted_flow_control_loop_pipe_sequential_init RTLNAME ntt_forward_converted_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ntt_forward_converted_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME forward_ntt_Pipeline_VITIS_LOOP_131_4 MODELNAME forward_ntt_Pipeline_VITIS_LOOP_131_4 RTLNAME ntt_forward_converted_forward_ntt_Pipeline_VITIS_LOOP_131_4
    SUBMODULES {
      {MODELNAME ntt_forward_converted_mul_32s_32s_64_1_1 RTLNAME ntt_forward_converted_mul_32s_32s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ntt_forward_converted_mul_64ns_64ns_127_1_1 RTLNAME ntt_forward_converted_mul_64ns_64ns_127_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ntt_forward_converted_mul_64s_32s_64_1_1 RTLNAME ntt_forward_converted_mul_64s_32s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ntt_forward_converted_sparsemux_511_8_32_1_1 RTLNAME ntt_forward_converted_sparsemux_511_8_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME ntt_forward_converted_sparsemux_513_8_32_1_1 RTLNAME ntt_forward_converted_sparsemux_513_8_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME forward_ntt_Pipeline_VITIS_LOOP_145_5 MODELNAME forward_ntt_Pipeline_VITIS_LOOP_145_5 RTLNAME ntt_forward_converted_forward_ntt_Pipeline_VITIS_LOOP_145_5}
  {SRCNAME forward_ntt MODELNAME forward_ntt RTLNAME ntt_forward_converted_forward_ntt
    SUBMODULES {
      {MODELNAME ntt_forward_converted_udiv_64s_64s_64_68_seq_1 RTLNAME ntt_forward_converted_udiv_64s_64s_64_68_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 67 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ntt_forward_converted MODELNAME ntt_forward_converted RTLNAME ntt_forward_converted IS_TOP 1
    SUBMODULES {
      {MODELNAME ntt_forward_converted_control_s_axi RTLNAME ntt_forward_converted_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
