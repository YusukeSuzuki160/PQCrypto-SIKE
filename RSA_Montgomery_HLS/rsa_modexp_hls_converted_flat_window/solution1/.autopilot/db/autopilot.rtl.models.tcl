set SynModuleInfo {
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_45_1 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_45_1 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_45_1
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_flow_control_loop_pipe_sequential_init RTLNAME rsa_modexp_hw_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME rsa_modexp_hw_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_54_3 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_54_3 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_54_3}
  {SRCNAME mul.13 MODELNAME mul_13 RTLNAME rsa_modexp_hw_mul_13
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_mul_32ns_32ns_64_1_1 RTLNAME rsa_modexp_hw_mul_32ns_32ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_mul_32s_32s_32_1_1 RTLNAME rsa_modexp_hw_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME montMult_words.2 MODELNAME montMult_words_2 RTLNAME rsa_modexp_hw_montMult_words_2}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_55_4 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_55_4 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_55_4}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_59_5 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_59_5 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_59_5}
  {SRCNAME mul.1 MODELNAME mul_1 RTLNAME rsa_modexp_hw_mul_1}
  {SRCNAME montMult_words.5.8.1 MODELNAME montMult_words_5_8_1 RTLNAME rsa_modexp_hw_montMult_words_5_8_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_63_6 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_63_6 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_63_6}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_72_8 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_72_8 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_72_8}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_11_1 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_11_1 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_11_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_83_10 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_83_10 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_83_10}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_101_13 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_101_13 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_101_13}
  {SRCNAME mul.2 MODELNAME mul_2 RTLNAME rsa_modexp_hw_mul_2}
  {SRCNAME montMult_words.9.12.1 MODELNAME montMult_words_9_12_1 RTLNAME rsa_modexp_hw_montMult_words_9_12_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_102_14 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_102_14 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_102_14}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_117_18 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_117_18 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_117_18}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_122_19 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_122_19 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_122_19}
  {SRCNAME mul MODELNAME mul RTLNAME rsa_modexp_hw_mul}
  {SRCNAME montMult_words.1 MODELNAME montMult_words_1 RTLNAME rsa_modexp_hw_montMult_words_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_127_21 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_127_21 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_127_21}
  {SRCNAME rsa_modexp_hw MODELNAME rsa_modexp_hw RTLNAME rsa_modexp_hw IS_TOP 1
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_one_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_one_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_table_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_table_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_conv_x_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_conv_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_conv_out_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_conv_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_z_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_z_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_cand_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_cand_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_final_x_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_final_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_final_out_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_final_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_gmem_m_axi RTLNAME rsa_modexp_hw_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME rsa_modexp_hw_control_s_axi RTLNAME rsa_modexp_hw_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME rsa_modexp_hw_control_r_s_axi RTLNAME rsa_modexp_hw_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
