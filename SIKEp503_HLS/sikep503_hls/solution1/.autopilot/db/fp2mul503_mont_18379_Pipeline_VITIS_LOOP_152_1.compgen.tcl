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
    id 2535 \
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
    id 2503 \
    name tt1_356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_356 \
    op interface \
    ports { tt1_356 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2504 \
    name tt1_357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_357 \
    op interface \
    ports { tt1_357 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2505 \
    name tt1_358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_358 \
    op interface \
    ports { tt1_358 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2506 \
    name tt1_359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_359 \
    op interface \
    ports { tt1_359 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2507 \
    name tt1_360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_360 \
    op interface \
    ports { tt1_360 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2508 \
    name tt1_361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_361 \
    op interface \
    ports { tt1_361 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2509 \
    name tt1_362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_362 \
    op interface \
    ports { tt1_362 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2510 \
    name tt1_363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_363 \
    op interface \
    ports { tt1_363 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2511 \
    name tt1_364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_364 \
    op interface \
    ports { tt1_364 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2512 \
    name tt1_365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_365 \
    op interface \
    ports { tt1_365 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2513 \
    name tt1_366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_366 \
    op interface \
    ports { tt1_366 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2514 \
    name tt1_367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_367 \
    op interface \
    ports { tt1_367 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2515 \
    name tt1_368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_368 \
    op interface \
    ports { tt1_368 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2516 \
    name tt1_369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_369 \
    op interface \
    ports { tt1_369 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2517 \
    name tt1_370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_370 \
    op interface \
    ports { tt1_370 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2518 \
    name tt1_371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_371 \
    op interface \
    ports { tt1_371 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2519 \
    name tt2_676 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_676 \
    op interface \
    ports { tt2_676 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2520 \
    name tt2_677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_677 \
    op interface \
    ports { tt2_677 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2521 \
    name tt2_678 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_678 \
    op interface \
    ports { tt2_678 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2522 \
    name tt2_679 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_679 \
    op interface \
    ports { tt2_679 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2523 \
    name tt2_680 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_680 \
    op interface \
    ports { tt2_680 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2524 \
    name tt2_681 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_681 \
    op interface \
    ports { tt2_681 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2525 \
    name tt2_682 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_682 \
    op interface \
    ports { tt2_682 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2526 \
    name tt2_683 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_683 \
    op interface \
    ports { tt2_683 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2527 \
    name tt2_684 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_684 \
    op interface \
    ports { tt2_684 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2528 \
    name tt2_685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_685 \
    op interface \
    ports { tt2_685 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2529 \
    name tt2_686 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_686 \
    op interface \
    ports { tt2_686 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2530 \
    name tt2_687 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_687 \
    op interface \
    ports { tt2_687 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2531 \
    name tt2_688 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_688 \
    op interface \
    ports { tt2_688 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2532 \
    name tt2_689 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_689 \
    op interface \
    ports { tt2_689 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2533 \
    name tt2_690 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_690 \
    op interface \
    ports { tt2_690 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2534 \
    name tt2_691 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_691 \
    op interface \
    ports { tt2_691 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2536 \
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


