# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4609 \
    name sext_ln58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln58 \
    op interface \
    ports { sext_ln58 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4610 \
    name t2_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_32_reload \
    op interface \
    ports { t2_32_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4611 \
    name t2_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_31_reload \
    op interface \
    ports { t2_31_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4612 \
    name t2_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_30_reload \
    op interface \
    ports { t2_30_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4613 \
    name t2_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_29_reload \
    op interface \
    ports { t2_29_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4614 \
    name t2_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_28_reload \
    op interface \
    ports { t2_28_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4615 \
    name t2_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_27_reload \
    op interface \
    ports { t2_27_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4616 \
    name t2_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_26_reload \
    op interface \
    ports { t2_26_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4617 \
    name t2_33_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_33_reload \
    op interface \
    ports { t2_33_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4618 \
    name t2_load_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_load_3_out \
    op interface \
    ports { t2_load_3_out { O 64 vector } t2_load_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4619 \
    name t2_1_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_1_load_2_out \
    op interface \
    ports { t2_1_load_2_out { O 64 vector } t2_1_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4620 \
    name t2_2_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_2_load_2_out \
    op interface \
    ports { t2_2_load_2_out { O 64 vector } t2_2_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4621 \
    name t2_3_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_3_load_2_out \
    op interface \
    ports { t2_3_load_2_out { O 64 vector } t2_3_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4622 \
    name t2_4_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_4_load_2_out \
    op interface \
    ports { t2_4_load_2_out { O 64 vector } t2_4_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4623 \
    name t2_5_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_5_load_2_out \
    op interface \
    ports { t2_5_load_2_out { O 64 vector } t2_5_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4624 \
    name t2_6_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_6_load_2_out \
    op interface \
    ports { t2_6_load_2_out { O 64 vector } t2_6_load_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4625 \
    name t2_7_load_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_7_load_2_out \
    op interface \
    ports { t2_7_load_2_out { O 64 vector } t2_7_load_2_out_ap_vld { O 1 bit } } \
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


