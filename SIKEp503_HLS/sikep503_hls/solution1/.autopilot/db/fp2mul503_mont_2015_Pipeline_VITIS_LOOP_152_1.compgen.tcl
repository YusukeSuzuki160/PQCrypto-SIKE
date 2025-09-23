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
    id 8540 \
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
    id 8508 \
    name tt1_305 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_305 \
    op interface \
    ports { tt1_305 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8509 \
    name tt1_306 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_306 \
    op interface \
    ports { tt1_306 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8510 \
    name tt1_307 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_307 \
    op interface \
    ports { tt1_307 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8511 \
    name tt1_308 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_308 \
    op interface \
    ports { tt1_308 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8512 \
    name tt1_309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_309 \
    op interface \
    ports { tt1_309 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8513 \
    name tt1_310 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_310 \
    op interface \
    ports { tt1_310 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8514 \
    name tt1_311 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_311 \
    op interface \
    ports { tt1_311 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8515 \
    name tt1_312 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_312 \
    op interface \
    ports { tt1_312 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8516 \
    name tt1_313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_313 \
    op interface \
    ports { tt1_313 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8517 \
    name tt1_314 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_314 \
    op interface \
    ports { tt1_314 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8518 \
    name tt1_315 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_315 \
    op interface \
    ports { tt1_315 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8519 \
    name tt1_316 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_316 \
    op interface \
    ports { tt1_316 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8520 \
    name tt1_317 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_317 \
    op interface \
    ports { tt1_317 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8521 \
    name tt1_318 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_318 \
    op interface \
    ports { tt1_318 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8522 \
    name tt1_319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_319 \
    op interface \
    ports { tt1_319 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8523 \
    name tt1_320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_320 \
    op interface \
    ports { tt1_320 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8524 \
    name tt2_577 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_577 \
    op interface \
    ports { tt2_577 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8525 \
    name tt2_578 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_578 \
    op interface \
    ports { tt2_578 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8526 \
    name tt2_579 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_579 \
    op interface \
    ports { tt2_579 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8527 \
    name tt2_580 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_580 \
    op interface \
    ports { tt2_580 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8528 \
    name tt2_581 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_581 \
    op interface \
    ports { tt2_581 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8529 \
    name tt2_582 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_582 \
    op interface \
    ports { tt2_582 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8530 \
    name tt2_583 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_583 \
    op interface \
    ports { tt2_583 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8531 \
    name tt2_584 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_584 \
    op interface \
    ports { tt2_584 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8532 \
    name tt2_585 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_585 \
    op interface \
    ports { tt2_585 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8533 \
    name tt2_586 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_586 \
    op interface \
    ports { tt2_586 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8534 \
    name tt2_587 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_587 \
    op interface \
    ports { tt2_587 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8535 \
    name tt2_588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_588 \
    op interface \
    ports { tt2_588 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8536 \
    name tt2_589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_589 \
    op interface \
    ports { tt2_589 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8537 \
    name tt2_590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_590 \
    op interface \
    ports { tt2_590 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8538 \
    name tt2_591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_591 \
    op interface \
    ports { tt2_591 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8539 \
    name tt2_592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_592 \
    op interface \
    ports { tt2_592 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8541 \
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


