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
    id 6106 \
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
    id 6074 \
    name tt1_390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_390 \
    op interface \
    ports { tt1_390 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6075 \
    name tt1_391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_391 \
    op interface \
    ports { tt1_391 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6076 \
    name tt1_392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_392 \
    op interface \
    ports { tt1_392 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6077 \
    name tt1_393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_393 \
    op interface \
    ports { tt1_393 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6078 \
    name tt1_394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_394 \
    op interface \
    ports { tt1_394 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6079 \
    name tt1_395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_395 \
    op interface \
    ports { tt1_395 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6080 \
    name tt1_396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_396 \
    op interface \
    ports { tt1_396 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6081 \
    name tt1_397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_397 \
    op interface \
    ports { tt1_397 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6082 \
    name tt1_398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_398 \
    op interface \
    ports { tt1_398 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6083 \
    name tt1_399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_399 \
    op interface \
    ports { tt1_399 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6084 \
    name tt1_400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_400 \
    op interface \
    ports { tt1_400 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6085 \
    name tt1_401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_401 \
    op interface \
    ports { tt1_401 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6086 \
    name tt1_402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_402 \
    op interface \
    ports { tt1_402 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6087 \
    name tt1_403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_403 \
    op interface \
    ports { tt1_403 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6088 \
    name tt1_404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_404 \
    op interface \
    ports { tt1_404 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6089 \
    name tt1_405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_405 \
    op interface \
    ports { tt1_405 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6090 \
    name tt2_742 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_742 \
    op interface \
    ports { tt2_742 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6091 \
    name tt2_743 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_743 \
    op interface \
    ports { tt2_743 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6092 \
    name tt2_744 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_744 \
    op interface \
    ports { tt2_744 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6093 \
    name tt2_745 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_745 \
    op interface \
    ports { tt2_745 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6094 \
    name tt2_746 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_746 \
    op interface \
    ports { tt2_746 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6095 \
    name tt2_747 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_747 \
    op interface \
    ports { tt2_747 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6096 \
    name tt2_748 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_748 \
    op interface \
    ports { tt2_748 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6097 \
    name tt2_749 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_749 \
    op interface \
    ports { tt2_749 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6098 \
    name tt2_750 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_750 \
    op interface \
    ports { tt2_750 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6099 \
    name tt2_751 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_751 \
    op interface \
    ports { tt2_751 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6100 \
    name tt2_752 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_752 \
    op interface \
    ports { tt2_752 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6101 \
    name tt2_753 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_753 \
    op interface \
    ports { tt2_753 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6102 \
    name tt2_754 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_754 \
    op interface \
    ports { tt2_754 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6103 \
    name tt2_755 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_755 \
    op interface \
    ports { tt2_755 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6104 \
    name tt2_756 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_756 \
    op interface \
    ports { tt2_756 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6105 \
    name tt2_757 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_757 \
    op interface \
    ports { tt2_757 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6107 \
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


