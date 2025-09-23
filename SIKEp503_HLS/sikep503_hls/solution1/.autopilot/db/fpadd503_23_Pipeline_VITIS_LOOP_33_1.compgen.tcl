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
    id 6216 \
    name b \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b \
    op interface \
    ports { b_address0 { O 4 vector } b_ce0 { O 1 bit } b_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6215 \
    name zext_ln35_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln35_16 \
    op interface \
    ports { zext_ln35_16 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6217 \
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
    id 6218 \
    name a_read_204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_204 \
    op interface \
    ports { a_read_204 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6219 \
    name a_read_205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_205 \
    op interface \
    ports { a_read_205 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6220 \
    name a_read_206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_206 \
    op interface \
    ports { a_read_206 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6221 \
    name a_read_207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_207 \
    op interface \
    ports { a_read_207 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6222 \
    name a_read_208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_208 \
    op interface \
    ports { a_read_208 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6223 \
    name a_read_209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_209 \
    op interface \
    ports { a_read_209 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6224 \
    name a_read_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_210 \
    op interface \
    ports { a_read_210 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6225 \
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
    id 6226 \
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
    id 6227 \
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
    id 6228 \
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
    id 6229 \
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
    id 6230 \
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
    id 6231 \
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
    id 6232 \
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


