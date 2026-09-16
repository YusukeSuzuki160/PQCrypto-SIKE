set SynModuleInfo {
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_27_1
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_flow_control_loop_pipe_sequential_init RTLNAME rsa_modexp_hw_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME rsa_modexp_hw_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_42_2}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_43_3}
  {SRCNAME mul MODELNAME mul RTLNAME rsa_modexp_hw_mul
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_mul_32ns_32ns_64_1_1 RTLNAME rsa_modexp_hw_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_mul_32s_32s_32_1_1 RTLNAME rsa_modexp_hw_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME montMult_words.1.1 MODELNAME montMult_words_1_1 RTLNAME rsa_modexp_hw_montMult_words_1_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_44_4}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_48_5 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_48_5 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_48_5}
  {SRCNAME mul.1.1 MODELNAME mul_1_1 RTLNAME rsa_modexp_hw_mul_1_1}
  {SRCNAME montMult_words.1.9.12.1.1 MODELNAME montMult_words_1_9_12_1_1 RTLNAME rsa_modexp_hw_montMult_words_1_9_12_1_1}
  {SRCNAME mul.1 MODELNAME mul_1 RTLNAME rsa_modexp_hw_mul_1}
  {SRCNAME montMult_words.1.9.12.1 MODELNAME montMult_words_1_9_12_1 RTLNAME rsa_modexp_hw_montMult_words_1_9_12_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_6}
  {SRCNAME mul.2 MODELNAME mul_2 RTLNAME rsa_modexp_hw_mul_2}
  {SRCNAME montMult_words.1.2 MODELNAME montMult_words_1_2 RTLNAME rsa_modexp_hw_montMult_words_1_2}
  {SRCNAME rsa_modexp_hw MODELNAME rsa_modexp_hw RTLNAME rsa_modexp_hw IS_TOP 1
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_one_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_one_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_zarr1_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_zarr1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_conv_x_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_conv_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_conv_out_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_conv_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_gmem_m_axi RTLNAME rsa_modexp_hw_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME rsa_modexp_hw_control_s_axi RTLNAME rsa_modexp_hw_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME rsa_modexp_hw_control_r_s_axi RTLNAME rsa_modexp_hw_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
