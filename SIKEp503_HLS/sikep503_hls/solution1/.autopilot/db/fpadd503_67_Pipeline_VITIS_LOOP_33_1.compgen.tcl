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
    id 10274 \
    name PKB \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename PKB \
    op interface \
    ports { PKB_address0 { O 6 vector } PKB_ce0 { O 1 bit } PKB_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'PKB'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10265 \
    name a_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read \
    op interface \
    ports { a_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10266 \
    name a_read_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_162 \
    op interface \
    ports { a_read_162 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10267 \
    name a_read_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_163 \
    op interface \
    ports { a_read_163 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10268 \
    name a_read_164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_164 \
    op interface \
    ports { a_read_164 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10269 \
    name a_read_165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_165 \
    op interface \
    ports { a_read_165 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10270 \
    name a_read_166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_166 \
    op interface \
    ports { a_read_166 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10271 \
    name a_read_167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_167 \
    op interface \
    ports { a_read_167 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10272 \
    name a_read_168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_168 \
    op interface \
    ports { a_read_168 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10273 \
    name b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b \
    op interface \
    ports { b { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10275 \
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
    id 10276 \
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
    id 10277 \
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
    id 10278 \
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
    id 10279 \
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
    id 10280 \
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
    id 10281 \
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
    id 10282 \
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


