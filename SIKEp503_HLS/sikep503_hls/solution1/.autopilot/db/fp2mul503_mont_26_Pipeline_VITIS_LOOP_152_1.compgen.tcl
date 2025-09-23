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
    id 8034 \
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
    id 8002 \
    name tt1_271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_271 \
    op interface \
    ports { tt1_271 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8003 \
    name tt1_272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_272 \
    op interface \
    ports { tt1_272 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8004 \
    name tt1_273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_273 \
    op interface \
    ports { tt1_273 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8005 \
    name tt1_274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_274 \
    op interface \
    ports { tt1_274 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8006 \
    name tt1_275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_275 \
    op interface \
    ports { tt1_275 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8007 \
    name tt1_276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_276 \
    op interface \
    ports { tt1_276 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8008 \
    name tt1_277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_277 \
    op interface \
    ports { tt1_277 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8009 \
    name tt1_278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_278 \
    op interface \
    ports { tt1_278 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8010 \
    name tt1_279 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_279 \
    op interface \
    ports { tt1_279 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8011 \
    name tt1_280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_280 \
    op interface \
    ports { tt1_280 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8012 \
    name tt1_281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_281 \
    op interface \
    ports { tt1_281 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8013 \
    name tt1_282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_282 \
    op interface \
    ports { tt1_282 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8014 \
    name tt1_283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_283 \
    op interface \
    ports { tt1_283 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8015 \
    name tt1_284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_284 \
    op interface \
    ports { tt1_284 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8016 \
    name tt1_285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_285 \
    op interface \
    ports { tt1_285 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8017 \
    name tt1_286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_286 \
    op interface \
    ports { tt1_286 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8018 \
    name tt2_511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_511 \
    op interface \
    ports { tt2_511 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8019 \
    name tt2_512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_512 \
    op interface \
    ports { tt2_512 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8020 \
    name tt2_513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_513 \
    op interface \
    ports { tt2_513 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8021 \
    name tt2_514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_514 \
    op interface \
    ports { tt2_514 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8022 \
    name tt2_515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_515 \
    op interface \
    ports { tt2_515 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8023 \
    name tt2_516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_516 \
    op interface \
    ports { tt2_516 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8024 \
    name tt2_517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_517 \
    op interface \
    ports { tt2_517 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8025 \
    name tt2_518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_518 \
    op interface \
    ports { tt2_518 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8026 \
    name tt2_519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_519 \
    op interface \
    ports { tt2_519 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8027 \
    name tt2_520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_520 \
    op interface \
    ports { tt2_520 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8028 \
    name tt2_521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_521 \
    op interface \
    ports { tt2_521 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8029 \
    name tt2_522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_522 \
    op interface \
    ports { tt2_522 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8030 \
    name tt2_523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_523 \
    op interface \
    ports { tt2_523 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8031 \
    name tt2_524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_524 \
    op interface \
    ports { tt2_524 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8032 \
    name tt2_525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_525 \
    op interface \
    ports { tt2_525 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8033 \
    name tt2_526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_526 \
    op interface \
    ports { tt2_526 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8035 \
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


