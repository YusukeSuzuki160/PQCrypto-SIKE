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
    id 7835 \
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
    id 7803 \
    name tt1_288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_288 \
    op interface \
    ports { tt1_288 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7804 \
    name tt1_289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_289 \
    op interface \
    ports { tt1_289 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7805 \
    name tt1_290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_290 \
    op interface \
    ports { tt1_290 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7806 \
    name tt1_291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_291 \
    op interface \
    ports { tt1_291 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7807 \
    name tt1_292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_292 \
    op interface \
    ports { tt1_292 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7808 \
    name tt1_293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_293 \
    op interface \
    ports { tt1_293 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7809 \
    name tt1_294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_294 \
    op interface \
    ports { tt1_294 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7810 \
    name tt1_295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_295 \
    op interface \
    ports { tt1_295 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7811 \
    name tt1_296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_296 \
    op interface \
    ports { tt1_296 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7812 \
    name tt1_297 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_297 \
    op interface \
    ports { tt1_297 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7813 \
    name tt1_298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_298 \
    op interface \
    ports { tt1_298 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7814 \
    name tt1_299 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_299 \
    op interface \
    ports { tt1_299 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7815 \
    name tt1_300 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_300 \
    op interface \
    ports { tt1_300 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7816 \
    name tt1_301 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_301 \
    op interface \
    ports { tt1_301 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7817 \
    name tt1_302 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_302 \
    op interface \
    ports { tt1_302 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7818 \
    name tt1_303 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_303 \
    op interface \
    ports { tt1_303 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7819 \
    name tt2_544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_544 \
    op interface \
    ports { tt2_544 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7820 \
    name tt2_545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_545 \
    op interface \
    ports { tt2_545 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7821 \
    name tt2_546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_546 \
    op interface \
    ports { tt2_546 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7822 \
    name tt2_547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_547 \
    op interface \
    ports { tt2_547 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7823 \
    name tt2_548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_548 \
    op interface \
    ports { tt2_548 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7824 \
    name tt2_549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_549 \
    op interface \
    ports { tt2_549 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7825 \
    name tt2_550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_550 \
    op interface \
    ports { tt2_550 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7826 \
    name tt2_551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_551 \
    op interface \
    ports { tt2_551 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7827 \
    name tt2_552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_552 \
    op interface \
    ports { tt2_552 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7828 \
    name tt2_553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_553 \
    op interface \
    ports { tt2_553 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7829 \
    name tt2_554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_554 \
    op interface \
    ports { tt2_554 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7830 \
    name tt2_555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_555 \
    op interface \
    ports { tt2_555 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7831 \
    name tt2_556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_556 \
    op interface \
    ports { tt2_556 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7832 \
    name tt2_557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_557 \
    op interface \
    ports { tt2_557 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7833 \
    name tt2_558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_558 \
    op interface \
    ports { tt2_558 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7834 \
    name tt2_559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_559 \
    op interface \
    ports { tt2_559 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7836 \
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


