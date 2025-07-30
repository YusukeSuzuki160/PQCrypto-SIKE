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
    id 2577 \
    name indvars_iv \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_indvars_iv \
    op interface \
    ports { indvars_iv { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2578 \
    name v \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v \
    op interface \
    ports { v { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2579 \
    name zext_ln256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln256 \
    op interface \
    ports { zext_ln256 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2580 \
    name a_read_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_8 \
    op interface \
    ports { a_read_8 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2581 \
    name a_read_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_9 \
    op interface \
    ports { a_read_9 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2582 \
    name a_read_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_10 \
    op interface \
    ports { a_read_10 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2583 \
    name a_read_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_11 \
    op interface \
    ports { a_read_11 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2584 \
    name a_read_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_12 \
    op interface \
    ports { a_read_12 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2585 \
    name a_read_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_13 \
    op interface \
    ports { a_read_13 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2586 \
    name a_read_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_14 \
    op interface \
    ports { a_read_14 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2587 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2588 \
    name t0_i_i_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_i_1_load \
    op interface \
    ports { t0_i_i_1_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2589 \
    name t0_i_i_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_i_2_load \
    op interface \
    ports { t0_i_i_2_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2590 \
    name t0_i_i_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_i_3_load \
    op interface \
    ports { t0_i_i_3_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2591 \
    name t0_i_i_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_i_4_load \
    op interface \
    ports { t0_i_i_4_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2592 \
    name t0_i_i_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_i_5_load \
    op interface \
    ports { t0_i_i_5_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2593 \
    name t0_i_i_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_i_6_load \
    op interface \
    ports { t0_i_i_6_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2594 \
    name t0_i_i_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t0_i_i_7_load \
    op interface \
    ports { t0_i_i_7_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2595 \
    name v_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_35_out \
    op interface \
    ports { v_35_out { O 64 vector } v_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2596 \
    name u_34_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_u_34_out \
    op interface \
    ports { u_34_out_i { I 64 vector } u_34_out_o { O 64 vector } u_34_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2597 \
    name t_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t_33_out \
    op interface \
    ports { t_33_out { O 3 vector } t_33_out_ap_vld { O 1 bit } } \
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


