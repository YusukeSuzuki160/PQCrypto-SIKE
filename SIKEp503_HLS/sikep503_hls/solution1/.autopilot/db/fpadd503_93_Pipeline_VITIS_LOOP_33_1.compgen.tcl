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
    id 2330 \
    name c \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename c \
    op interface \
    ports { c_address0 { O 3 vector } c_ce0 { O 1 bit } c_we0 { O 1 bit } c_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2331 \
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
    id 2332 \
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
    id 2333 \
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
    id 2334 \
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
    id 2335 \
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
    id 2336 \
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
    id 2337 \
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
    id 2338 \
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
    id 2339 \
    name t1_i_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_i_0_load \
    op interface \
    ports { t1_i_0_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2340 \
    name t1_i_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_i_1_load \
    op interface \
    ports { t1_i_1_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2341 \
    name t1_i_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_i_2_load \
    op interface \
    ports { t1_i_2_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2342 \
    name t1_i_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_i_3_load \
    op interface \
    ports { t1_i_3_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2343 \
    name t1_i_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_i_4_load \
    op interface \
    ports { t1_i_4_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2344 \
    name t1_i_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_i_5_load \
    op interface \
    ports { t1_i_5_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2345 \
    name t1_i_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_i_6_load \
    op interface \
    ports { t1_i_6_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2346 \
    name t1_i_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_i_7_load \
    op interface \
    ports { t1_i_7_load { I 64 vector } } \
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


