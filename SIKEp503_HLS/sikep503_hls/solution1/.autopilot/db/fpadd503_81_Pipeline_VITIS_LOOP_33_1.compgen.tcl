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
    id 5891 \
    name c \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename c \
    op interface \
    ports { c_address0 { O 7 vector } c_ce0 { O 1 bit } c_we0 { O 1 bit } c_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5890 \
    name zext_ln35_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln35_1 \
    op interface \
    ports { zext_ln35_1 { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5892 \
    name t1_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_0_load \
    op interface \
    ports { t1_0_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5893 \
    name t1_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_1_load \
    op interface \
    ports { t1_1_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5894 \
    name t1_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_2_load \
    op interface \
    ports { t1_2_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5895 \
    name t1_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_3_load \
    op interface \
    ports { t1_3_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5896 \
    name t1_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_4_load \
    op interface \
    ports { t1_4_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5897 \
    name t1_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_5_load \
    op interface \
    ports { t1_5_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5898 \
    name t1_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_6_load \
    op interface \
    ports { t1_6_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5899 \
    name t1_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_7_load \
    op interface \
    ports { t1_7_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5900 \
    name b_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read \
    op interface \
    ports { b_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5901 \
    name b_read_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_106 \
    op interface \
    ports { b_read_106 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5902 \
    name b_read_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_107 \
    op interface \
    ports { b_read_107 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5903 \
    name b_read_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_108 \
    op interface \
    ports { b_read_108 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5904 \
    name b_read_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_109 \
    op interface \
    ports { b_read_109 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5905 \
    name b_read_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_110 \
    op interface \
    ports { b_read_110 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5906 \
    name b_read_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_111 \
    op interface \
    ports { b_read_111 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5907 \
    name b_read_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_112 \
    op interface \
    ports { b_read_112 { I 64 vector } } \
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


