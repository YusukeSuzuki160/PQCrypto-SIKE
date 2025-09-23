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
    id 11125 \
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
    id 11093 \
    name tt1_373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_373 \
    op interface \
    ports { tt1_373 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11094 \
    name tt1_374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_374 \
    op interface \
    ports { tt1_374 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11095 \
    name tt1_375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_375 \
    op interface \
    ports { tt1_375 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11096 \
    name tt1_376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_376 \
    op interface \
    ports { tt1_376 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11097 \
    name tt1_377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_377 \
    op interface \
    ports { tt1_377 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11098 \
    name tt1_378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_378 \
    op interface \
    ports { tt1_378 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11099 \
    name tt1_379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_379 \
    op interface \
    ports { tt1_379 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11100 \
    name tt1_380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_380 \
    op interface \
    ports { tt1_380 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11101 \
    name tt1_381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_381 \
    op interface \
    ports { tt1_381 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11102 \
    name tt1_382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_382 \
    op interface \
    ports { tt1_382 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11103 \
    name tt1_383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_383 \
    op interface \
    ports { tt1_383 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11104 \
    name tt1_384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_384 \
    op interface \
    ports { tt1_384 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11105 \
    name tt1_385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_385 \
    op interface \
    ports { tt1_385 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11106 \
    name tt1_386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_386 \
    op interface \
    ports { tt1_386 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11107 \
    name tt1_387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_387 \
    op interface \
    ports { tt1_387 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11108 \
    name tt1_388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_388 \
    op interface \
    ports { tt1_388 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11109 \
    name tt2_709 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_709 \
    op interface \
    ports { tt2_709 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11110 \
    name tt2_710 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_710 \
    op interface \
    ports { tt2_710 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11111 \
    name tt2_711 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_711 \
    op interface \
    ports { tt2_711 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11112 \
    name tt2_712 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_712 \
    op interface \
    ports { tt2_712 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11113 \
    name tt2_713 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_713 \
    op interface \
    ports { tt2_713 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11114 \
    name tt2_714 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_714 \
    op interface \
    ports { tt2_714 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11115 \
    name tt2_715 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_715 \
    op interface \
    ports { tt2_715 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11116 \
    name tt2_716 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_716 \
    op interface \
    ports { tt2_716 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11117 \
    name tt2_717 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_717 \
    op interface \
    ports { tt2_717 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11118 \
    name tt2_718 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_718 \
    op interface \
    ports { tt2_718 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11119 \
    name tt2_719 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_719 \
    op interface \
    ports { tt2_719 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11120 \
    name tt2_720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_720 \
    op interface \
    ports { tt2_720 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11121 \
    name tt2_721 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_721 \
    op interface \
    ports { tt2_721 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11122 \
    name tt2_722 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_722 \
    op interface \
    ports { tt2_722 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11123 \
    name tt2_723 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_723 \
    op interface \
    ports { tt2_723 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11124 \
    name tt2_724 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_724 \
    op interface \
    ports { tt2_724 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11126 \
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


