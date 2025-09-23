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
    id 5507 \
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
    id 5475 \
    name tt1_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_84 \
    op interface \
    ports { tt1_84 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5476 \
    name tt1_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_85 \
    op interface \
    ports { tt1_85 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5477 \
    name tt1_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_86 \
    op interface \
    ports { tt1_86 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5478 \
    name tt1_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_87 \
    op interface \
    ports { tt1_87 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5479 \
    name tt1_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_88 \
    op interface \
    ports { tt1_88 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5480 \
    name tt1_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_89 \
    op interface \
    ports { tt1_89 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5481 \
    name tt1_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_90 \
    op interface \
    ports { tt1_90 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5482 \
    name tt1_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_91 \
    op interface \
    ports { tt1_91 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5483 \
    name tt1_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_92 \
    op interface \
    ports { tt1_92 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5484 \
    name tt1_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_93 \
    op interface \
    ports { tt1_93 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5485 \
    name tt1_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_94 \
    op interface \
    ports { tt1_94 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5486 \
    name tt1_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_95 \
    op interface \
    ports { tt1_95 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5487 \
    name tt1_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_96 \
    op interface \
    ports { tt1_96 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5488 \
    name tt1_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_97 \
    op interface \
    ports { tt1_97 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5489 \
    name tt1_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_98 \
    op interface \
    ports { tt1_98 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5490 \
    name tt1_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_99 \
    op interface \
    ports { tt1_99 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5491 \
    name tt2_148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_148 \
    op interface \
    ports { tt2_148 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5492 \
    name tt2_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_149 \
    op interface \
    ports { tt2_149 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5493 \
    name tt2_150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_150 \
    op interface \
    ports { tt2_150 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5494 \
    name tt2_151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_151 \
    op interface \
    ports { tt2_151 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5495 \
    name tt2_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_152 \
    op interface \
    ports { tt2_152 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5496 \
    name tt2_153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_153 \
    op interface \
    ports { tt2_153 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5497 \
    name tt2_154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_154 \
    op interface \
    ports { tt2_154 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5498 \
    name tt2_155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_155 \
    op interface \
    ports { tt2_155 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5499 \
    name tt2_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_156 \
    op interface \
    ports { tt2_156 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5500 \
    name tt2_157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_157 \
    op interface \
    ports { tt2_157 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5501 \
    name tt2_158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_158 \
    op interface \
    ports { tt2_158 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5502 \
    name tt2_159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_159 \
    op interface \
    ports { tt2_159 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5503 \
    name tt2_160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_160 \
    op interface \
    ports { tt2_160 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5504 \
    name tt2_161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_161 \
    op interface \
    ports { tt2_161 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5505 \
    name tt2_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_162 \
    op interface \
    ports { tt2_162 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5506 \
    name tt2_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_163 \
    op interface \
    ports { tt2_163 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5508 \
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


