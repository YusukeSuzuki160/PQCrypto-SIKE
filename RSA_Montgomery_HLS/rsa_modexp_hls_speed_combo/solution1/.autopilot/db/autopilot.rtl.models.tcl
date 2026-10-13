set SynModuleInfo {
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_49_1 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_49_1 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_49_1
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_flow_control_loop_pipe_sequential_init RTLNAME rsa_modexp_hw_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME rsa_modexp_hw_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mul MODELNAME mul RTLNAME rsa_modexp_hw_mul
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_mul_32ns_32ns_64_1_1 RTLNAME rsa_modexp_hw_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_mul_32s_32s_32_1_1 RTLNAME rsa_modexp_hw_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME montMult_words.5.8.1 MODELNAME montMult_words_5_8_1 RTLNAME rsa_modexp_hw_montMult_words_5_8_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_61_2 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_61_2 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_61_2}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_83_7 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_83_7 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_83_7}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_14_1 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_14_1 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_14_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_95_9 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_95_9 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_95_9}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_109_12 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_109_12 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_109_12}
  {SRCNAME mul.1 MODELNAME mul_1 RTLNAME rsa_modexp_hw_mul_1}
  {SRCNAME montMult_words.9.12.1 MODELNAME montMult_words_9_12_1 RTLNAME rsa_modexp_hw_montMult_words_9_12_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_110_13 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_110_13 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_110_13}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_125_17 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_125_17 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_125_17}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_131_18 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_131_18 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_131_18}
  {SRCNAME mul.2 MODELNAME mul_2 RTLNAME rsa_modexp_hw_mul_2}
  {SRCNAME montMult_words.1 MODELNAME montMult_words_1 RTLNAME rsa_modexp_hw_montMult_words_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_136_20 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_136_20 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_136_20}
  {SRCNAME rsa_modexp_hw MODELNAME rsa_modexp_hw RTLNAME rsa_modexp_hw IS_TOP 1
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_one_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_one_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_table_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_table_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_z_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_z_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_cand_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_cand_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_final_x_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_final_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_final_y_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_final_y_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_final_out_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_final_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_gmem_m_axi RTLNAME rsa_modexp_hw_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME rsa_modexp_hw_control_s_axi RTLNAME rsa_modexp_hw_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME rsa_modexp_hw_control_r_s_axi RTLNAME rsa_modexp_hw_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
