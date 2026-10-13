set SynModuleInfo {
  {SRCNAME kernel_top_Pipeline_VITIS_LOOP_18_1 MODELNAME kernel_top_Pipeline_VITIS_LOOP_18_1 RTLNAME kernel_top_kernel_top_Pipeline_VITIS_LOOP_18_1
    SUBMODULES {
      {MODELNAME kernel_top_flow_control_loop_pipe_sequential_init RTLNAME kernel_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME kernel_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mul MODELNAME mul RTLNAME kernel_top_mul
    SUBMODULES {
      {MODELNAME kernel_top_mul_32ns_32ns_64_1_1 RTLNAME kernel_top_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME kernel_top_mul_32s_32s_32_1_1 RTLNAME kernel_top_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME montMult_words MODELNAME montMult_words RTLNAME kernel_top_montMult_words}
  {SRCNAME kernel_top_Pipeline_VITIS_LOOP_20_2 MODELNAME kernel_top_Pipeline_VITIS_LOOP_20_2 RTLNAME kernel_top_kernel_top_Pipeline_VITIS_LOOP_20_2}
  {SRCNAME kernel_top MODELNAME kernel_top RTLNAME kernel_top IS_TOP 1
    SUBMODULES {
      {MODELNAME kernel_top_xl_RAM_AUTO_1R1W RTLNAME kernel_top_xl_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_top_yl_RAM_AUTO_1R1W RTLNAME kernel_top_yl_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_top_ol_RAM_AUTO_1R1W RTLNAME kernel_top_ol_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME kernel_top_gmem_m_axi RTLNAME kernel_top_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME kernel_top_control_s_axi RTLNAME kernel_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME kernel_top_control_r_s_axi RTLNAME kernel_top_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
