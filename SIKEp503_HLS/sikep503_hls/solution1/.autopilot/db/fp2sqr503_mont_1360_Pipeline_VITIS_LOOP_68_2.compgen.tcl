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
    id 7000 \
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
    id 7001 \
    name t2_77_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_77_reload \
    op interface \
    ports { t2_77_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7002 \
    name t2_76_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_76_reload \
    op interface \
    ports { t2_76_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7003 \
    name t2_75_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_75_reload \
    op interface \
    ports { t2_75_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7004 \
    name t2_74_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_74_reload \
    op interface \
    ports { t2_74_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7005 \
    name t2_73_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_73_reload \
    op interface \
    ports { t2_73_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7006 \
    name t2_72_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_72_reload \
    op interface \
    ports { t2_72_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7007 \
    name t2_71_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_71_reload \
    op interface \
    ports { t2_71_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7008 \
    name t2_78_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_78_reload \
    op interface \
    ports { t2_78_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7009 \
    name t2_load_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_load_8_out \
    op interface \
    ports { t2_load_8_out { O 64 vector } t2_load_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7010 \
    name t2_1_load_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_1_load_7_out \
    op interface \
    ports { t2_1_load_7_out { O 64 vector } t2_1_load_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7011 \
    name t2_2_load_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_2_load_7_out \
    op interface \
    ports { t2_2_load_7_out { O 64 vector } t2_2_load_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7012 \
    name t2_3_load_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_3_load_7_out \
    op interface \
    ports { t2_3_load_7_out { O 64 vector } t2_3_load_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7013 \
    name t2_4_load_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_4_load_7_out \
    op interface \
    ports { t2_4_load_7_out { O 64 vector } t2_4_load_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7014 \
    name t2_5_load_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_5_load_7_out \
    op interface \
    ports { t2_5_load_7_out { O 64 vector } t2_5_load_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7015 \
    name t2_6_load_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_6_load_7_out \
    op interface \
    ports { t2_6_load_7_out { O 64 vector } t2_6_load_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7016 \
    name t2_7_load_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_7_load_7_out \
    op interface \
    ports { t2_7_load_7_out { O 64 vector } t2_7_load_7_out_ap_vld { O 1 bit } } \
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


