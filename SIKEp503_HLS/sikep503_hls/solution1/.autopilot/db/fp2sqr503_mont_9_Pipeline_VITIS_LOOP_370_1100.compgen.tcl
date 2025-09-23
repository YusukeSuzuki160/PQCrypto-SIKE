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
    id 754 \
    name t0_i_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_0_load \
    op interface \
    ports { t0_i_0_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name t0_i_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_1_load \
    op interface \
    ports { t0_i_1_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name t0_i_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_2_load \
    op interface \
    ports { t0_i_2_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name t0_i_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_3_load \
    op interface \
    ports { t0_i_3_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name t0_i_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_4_load \
    op interface \
    ports { t0_i_4_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name t0_i_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_5_load \
    op interface \
    ports { t0_i_5_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name t0_i_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_6_load \
    op interface \
    ports { t0_i_6_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name t0_i_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_7_load \
    op interface \
    ports { t0_i_7_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name t3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t3_out \
    op interface \
    ports { t3_out { O 64 vector } t3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name t3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t3_1_out \
    op interface \
    ports { t3_1_out { O 64 vector } t3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name t3_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t3_2_out \
    op interface \
    ports { t3_2_out { O 64 vector } t3_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name t3_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t3_3_out \
    op interface \
    ports { t3_3_out { O 64 vector } t3_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 766 \
    name t3_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t3_4_out \
    op interface \
    ports { t3_4_out { O 64 vector } t3_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name t3_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t3_5_out \
    op interface \
    ports { t3_5_out { O 64 vector } t3_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name t3_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t3_6_out \
    op interface \
    ports { t3_6_out { O 64 vector } t3_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name t3_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t3_7_out \
    op interface \
    ports { t3_7_out { O 64 vector } t3_7_out_ap_vld { O 1 bit } } \
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


