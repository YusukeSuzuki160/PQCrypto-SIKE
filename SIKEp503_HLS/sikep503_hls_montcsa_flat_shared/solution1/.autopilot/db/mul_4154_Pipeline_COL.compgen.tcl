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
    id 2152 \
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
    id 2150 \
    name acc \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc \
    op interface \
    ports { acc_i { I 64 vector } acc_o { O 64 vector } acc_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2151 \
    name zext_ln69_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln69_4 \
    op interface \
    ports { zext_ln69_4 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2153 \
    name acc_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_14 \
    op interface \
    ports { acc_14_i { I 64 vector } acc_14_o { O 64 vector } acc_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2154 \
    name acc_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_13 \
    op interface \
    ports { acc_13_i { I 64 vector } acc_13_o { O 64 vector } acc_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2155 \
    name acc_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_12 \
    op interface \
    ports { acc_12_i { I 64 vector } acc_12_o { O 64 vector } acc_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2156 \
    name acc_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_11 \
    op interface \
    ports { acc_11_i { I 64 vector } acc_11_o { O 64 vector } acc_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2157 \
    name acc_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_10 \
    op interface \
    ports { acc_10_i { I 64 vector } acc_10_o { O 64 vector } acc_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2158 \
    name acc_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_9 \
    op interface \
    ports { acc_9_i { I 64 vector } acc_9_o { O 64 vector } acc_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2159 \
    name acc_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_8 \
    op interface \
    ports { acc_8_i { I 64 vector } acc_8_o { O 64 vector } acc_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2160 \
    name acc_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_7 \
    op interface \
    ports { acc_7_i { I 64 vector } acc_7_o { O 64 vector } acc_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2161 \
    name acc_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_6 \
    op interface \
    ports { acc_6_i { I 64 vector } acc_6_o { O 64 vector } acc_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2162 \
    name acc_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_5 \
    op interface \
    ports { acc_5_i { I 64 vector } acc_5_o { O 64 vector } acc_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2163 \
    name acc_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_4 \
    op interface \
    ports { acc_4_i { I 64 vector } acc_4_o { O 64 vector } acc_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2164 \
    name acc_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_3 \
    op interface \
    ports { acc_3_i { I 64 vector } acc_3_o { O 64 vector } acc_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2165 \
    name acc_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_2 \
    op interface \
    ports { acc_2_i { I 64 vector } acc_2_o { O 64 vector } acc_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2166 \
    name acc_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_acc_1 \
    op interface \
    ports { acc_1_i { I 64 vector } acc_1_o { O 64 vector } acc_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2167 \
    name i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i \
    op interface \
    ports { i { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2168 \
    name conv \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv \
    op interface \
    ports { conv { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2169 \
    name carry_593_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_carry_593_out \
    op interface \
    ports { carry_593_out { O 64 vector } carry_593_out_ap_vld { O 1 bit } } \
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


