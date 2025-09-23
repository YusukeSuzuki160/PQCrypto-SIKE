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
    id 9474 \
    name PKB \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename PKB \
    op interface \
    ports { PKB_address0 { O 6 vector } PKB_ce0 { O 1 bit } PKB_q0 { I 64 vector } PKB_address1 { O 6 vector } PKB_ce1 { O 1 bit } PKB_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'PKB'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9466 \
    name c_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read \
    op interface \
    ports { c_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9467 \
    name c_read_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read_92 \
    op interface \
    ports { c_read_92 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9468 \
    name c_read_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read_93 \
    op interface \
    ports { c_read_93 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9469 \
    name c_read_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read_94 \
    op interface \
    ports { c_read_94 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9470 \
    name c_read_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read_95 \
    op interface \
    ports { c_read_95 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9471 \
    name c_read_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read_96 \
    op interface \
    ports { c_read_96 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9472 \
    name c_read_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read_97 \
    op interface \
    ports { c_read_97 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9473 \
    name c_read_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_read_98 \
    op interface \
    ports { c_read_98 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9475 \
    name c_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_0_0_out \
    op interface \
    ports { c_0_0_out { O 64 vector } c_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9476 \
    name c_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_1_0_out \
    op interface \
    ports { c_1_0_out { O 64 vector } c_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9477 \
    name c_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_2_0_out \
    op interface \
    ports { c_2_0_out { O 64 vector } c_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9478 \
    name c_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_3_0_out \
    op interface \
    ports { c_3_0_out { O 64 vector } c_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9479 \
    name c_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_4_0_out \
    op interface \
    ports { c_4_0_out { O 64 vector } c_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9480 \
    name c_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_5_0_out \
    op interface \
    ports { c_5_0_out { O 64 vector } c_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9481 \
    name c_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_6_0_out \
    op interface \
    ports { c_6_0_out { O 64 vector } c_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9482 \
    name c_7_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_7_0_out \
    op interface \
    ports { c_7_0_out { O 64 vector } c_7_0_out_ap_vld { O 1 bit } } \
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


