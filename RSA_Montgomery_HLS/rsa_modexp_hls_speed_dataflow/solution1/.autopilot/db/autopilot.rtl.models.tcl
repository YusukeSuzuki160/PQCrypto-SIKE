set SynModuleInfo {
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_41_1 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_41_1 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_41_1
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
  {SRCNAME montMult_words.6.9.1 MODELNAME montMult_words_6_9_1 RTLNAME rsa_modexp_hw_montMult_words_6_9_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_53_2}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_75_7 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_75_7 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_75_7}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_77_8.1_Block_newFuncRoot_proc17 MODELNAME dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_proc17 RTLNAME rsa_modexp_hw_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_proc17}
  {SRCNAME get_window MODELNAME get_window RTLNAME rsa_modexp_hw_get_window}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_77_8.1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a.1 MODELNAME dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1 RTLNAME rsa_modexp_hw_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_77_8.1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a.3 MODELNAME dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_3 RTLNAME rsa_modexp_hw_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_3}
  {SRCNAME mul.2 MODELNAME mul_2 RTLNAME rsa_modexp_hw_mul_2}
  {SRCNAME montMult_words.10.13.1 MODELNAME montMult_words_10_13_1 RTLNAME rsa_modexp_hw_montMult_words_10_13_1}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_77_8.1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a.2 MODELNAME dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2 RTLNAME rsa_modexp_hw_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_2}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_77_8.1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a.1.1 MODELNAME dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1_1 RTLNAME rsa_modexp_hw_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_1_1}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_77_8.1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a.4 MODELNAME dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4 RTLNAME rsa_modexp_hw_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_z_a_4
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_bkb RTLNAME rsa_modexp_hw_dataflow_in_loop_VITIS_LOOP_77_8_1_Block_newFuncRoot_zrun_wr_cand_wr_gmem_rd_bkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_in_loop_VITIS_LOOP_77_8.1 MODELNAME dataflow_in_loop_VITIS_LOOP_77_8_1 RTLNAME rsa_modexp_hw_dataflow_in_loop_VITIS_LOOP_77_8_1
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_fifo_w7_d2_S RTLNAME rsa_modexp_hw_fifo_w7_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME tmp_2408_U}
    }
  }
  {SRCNAME dataflow_parent_loop_proc MODELNAME dataflow_parent_loop_proc RTLNAME rsa_modexp_hw_dataflow_parent_loop_proc}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_129_18 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_129_18 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_129_18}
  {SRCNAME mul.1 MODELNAME mul_1 RTLNAME rsa_modexp_hw_mul_1}
  {SRCNAME montMult_words.1 MODELNAME montMult_words_1 RTLNAME rsa_modexp_hw_montMult_words_1}
  {SRCNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_134_20 MODELNAME rsa_modexp_hw_Pipeline_VITIS_LOOP_134_20 RTLNAME rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_134_20}
  {SRCNAME rsa_modexp_hw MODELNAME rsa_modexp_hw RTLNAME rsa_modexp_hw IS_TOP 1
    SUBMODULES {
      {MODELNAME rsa_modexp_hw_one_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_one_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_table_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_table_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_z_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_z_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_final_x_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_final_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_final_y_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_final_y_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_final_out_RAM_AUTO_1R1W RTLNAME rsa_modexp_hw_final_out_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME rsa_modexp_hw_gmem_m_axi RTLNAME rsa_modexp_hw_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME rsa_modexp_hw_control_s_axi RTLNAME rsa_modexp_hw_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME rsa_modexp_hw_control_r_s_axi RTLNAME rsa_modexp_hw_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
