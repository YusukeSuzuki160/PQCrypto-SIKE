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
    id 7474 \
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
    id 7442 \
    name tt1_458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_458 \
    op interface \
    ports { tt1_458 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7443 \
    name tt1_459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_459 \
    op interface \
    ports { tt1_459 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7444 \
    name tt1_460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_460 \
    op interface \
    ports { tt1_460 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7445 \
    name tt1_461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_461 \
    op interface \
    ports { tt1_461 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7446 \
    name tt1_462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_462 \
    op interface \
    ports { tt1_462 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7447 \
    name tt1_463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_463 \
    op interface \
    ports { tt1_463 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7448 \
    name tt1_464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_464 \
    op interface \
    ports { tt1_464 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7449 \
    name tt1_465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_465 \
    op interface \
    ports { tt1_465 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7450 \
    name tt1_466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_466 \
    op interface \
    ports { tt1_466 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7451 \
    name tt1_467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_467 \
    op interface \
    ports { tt1_467 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7452 \
    name tt1_468 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_468 \
    op interface \
    ports { tt1_468 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7453 \
    name tt1_469 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_469 \
    op interface \
    ports { tt1_469 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7454 \
    name tt1_470 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_470 \
    op interface \
    ports { tt1_470 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7455 \
    name tt1_471 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_471 \
    op interface \
    ports { tt1_471 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7456 \
    name tt1_472 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_472 \
    op interface \
    ports { tt1_472 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7457 \
    name tt1_473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_473 \
    op interface \
    ports { tt1_473 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7458 \
    name tt2_874 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_874 \
    op interface \
    ports { tt2_874 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7459 \
    name tt2_875 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_875 \
    op interface \
    ports { tt2_875 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7460 \
    name tt2_876 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_876 \
    op interface \
    ports { tt2_876 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7461 \
    name tt2_877 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_877 \
    op interface \
    ports { tt2_877 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7462 \
    name tt2_878 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_878 \
    op interface \
    ports { tt2_878 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7463 \
    name tt2_879 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_879 \
    op interface \
    ports { tt2_879 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7464 \
    name tt2_880 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_880 \
    op interface \
    ports { tt2_880 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7465 \
    name tt2_881 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_881 \
    op interface \
    ports { tt2_881 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7466 \
    name tt2_882 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_882 \
    op interface \
    ports { tt2_882 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7467 \
    name tt2_883 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_883 \
    op interface \
    ports { tt2_883 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7468 \
    name tt2_884 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_884 \
    op interface \
    ports { tt2_884 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7469 \
    name tt2_885 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_885 \
    op interface \
    ports { tt2_885 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7470 \
    name tt2_886 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_886 \
    op interface \
    ports { tt2_886 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7471 \
    name tt2_887 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_887 \
    op interface \
    ports { tt2_887 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7472 \
    name tt2_888 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_888 \
    op interface \
    ports { tt2_888 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7473 \
    name tt2_889 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_889 \
    op interface \
    ports { tt2_889 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7475 \
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


