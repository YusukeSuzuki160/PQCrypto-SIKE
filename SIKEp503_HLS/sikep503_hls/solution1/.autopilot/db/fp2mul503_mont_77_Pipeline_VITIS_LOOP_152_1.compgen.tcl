# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5031 \
    name tt3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tt3 \
    op interface \
    ports { tt3_address0 { O 4 vector } tt3_ce0 { O 1 bit } tt3_we0 { O 1 bit } tt3_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tt3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4999 \
    name tt1_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_101 \
    op interface \
    ports { tt1_101 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5000 \
    name tt1_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_102 \
    op interface \
    ports { tt1_102 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5001 \
    name tt1_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_103 \
    op interface \
    ports { tt1_103 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5002 \
    name tt1_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_104 \
    op interface \
    ports { tt1_104 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5003 \
    name tt1_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_105 \
    op interface \
    ports { tt1_105 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5004 \
    name tt1_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_106 \
    op interface \
    ports { tt1_106 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5005 \
    name tt1_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_107 \
    op interface \
    ports { tt1_107 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5006 \
    name tt1_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_108 \
    op interface \
    ports { tt1_108 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5007 \
    name tt1_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_109 \
    op interface \
    ports { tt1_109 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5008 \
    name tt1_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_110 \
    op interface \
    ports { tt1_110 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5009 \
    name tt1_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_111 \
    op interface \
    ports { tt1_111 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5010 \
    name tt1_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_112 \
    op interface \
    ports { tt1_112 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5011 \
    name tt1_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_113 \
    op interface \
    ports { tt1_113 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5012 \
    name tt1_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_114 \
    op interface \
    ports { tt1_114 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5013 \
    name tt1_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_115 \
    op interface \
    ports { tt1_115 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5014 \
    name tt1_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_116 \
    op interface \
    ports { tt1_116 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5015 \
    name tt2_181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_181 \
    op interface \
    ports { tt2_181 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5016 \
    name tt2_182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_182 \
    op interface \
    ports { tt2_182 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5017 \
    name tt2_183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_183 \
    op interface \
    ports { tt2_183 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5018 \
    name tt2_184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_184 \
    op interface \
    ports { tt2_184 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5019 \
    name tt2_185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_185 \
    op interface \
    ports { tt2_185 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5020 \
    name tt2_186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_186 \
    op interface \
    ports { tt2_186 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5021 \
    name tt2_187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_187 \
    op interface \
    ports { tt2_187 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5022 \
    name tt2_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_188 \
    op interface \
    ports { tt2_188 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5023 \
    name tt2_189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_189 \
    op interface \
    ports { tt2_189 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5024 \
    name tt2_190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_190 \
    op interface \
    ports { tt2_190 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5025 \
    name tt2_191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_191 \
    op interface \
    ports { tt2_191 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5026 \
    name tt2_192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_192 \
    op interface \
    ports { tt2_192 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5027 \
    name tt2_193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_193 \
    op interface \
    ports { tt2_193 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5028 \
    name tt2_194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_194 \
    op interface \
    ports { tt2_194 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5029 \
    name tt2_195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_195 \
    op interface \
    ports { tt2_195 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5030 \
    name tt2_196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_196 \
    op interface \
    ports { tt2_196 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5032 \
    name borrow_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_borrow_out \
    op interface \
    ports { borrow_out { O 1 vector } borrow_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName sikep503_kem_enc_hw_flow_control_loop_pipe_sequential_init_U
set CompName sikep503_kem_enc_hw_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix sikep503_kem_enc_hw_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


