# This script segment is generated automatically by AutoPilot

set name rsa_modexp_hw_mul_32ns_32ns_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name rsa_modexp_hw_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


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
    id 33 \
    name b \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b \
    op interface \
    ports { b_address0 { O 5 vector } b_ce0 { O 1 bit } b_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name conv13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13 \
    op interface \
    ports { conv13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name conv13_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_1 \
    op interface \
    ports { conv13_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name conv13_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_2 \
    op interface \
    ports { conv13_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name conv13_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_3 \
    op interface \
    ports { conv13_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name conv13_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_4 \
    op interface \
    ports { conv13_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name conv13_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_5 \
    op interface \
    ports { conv13_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name conv13_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_6 \
    op interface \
    ports { conv13_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name conv13_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_7 \
    op interface \
    ports { conv13_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name conv13_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_8 \
    op interface \
    ports { conv13_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name conv13_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_9 \
    op interface \
    ports { conv13_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name conv13_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_10 \
    op interface \
    ports { conv13_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name conv13_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_11 \
    op interface \
    ports { conv13_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name conv13_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_12 \
    op interface \
    ports { conv13_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name conv13_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_13 \
    op interface \
    ports { conv13_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name conv13_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_14 \
    op interface \
    ports { conv13_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name conv13_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv13_15 \
    op interface \
    ports { conv13_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name mprime \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mprime \
    op interface \
    ports { mprime { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name conv46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv46 \
    op interface \
    ports { conv46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name conv62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62 \
    op interface \
    ports { conv62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name conv62_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_1 \
    op interface \
    ports { conv62_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name conv62_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_2 \
    op interface \
    ports { conv62_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name conv62_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_3 \
    op interface \
    ports { conv62_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name conv62_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_4 \
    op interface \
    ports { conv62_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name conv62_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_5 \
    op interface \
    ports { conv62_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name conv62_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_6 \
    op interface \
    ports { conv62_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name conv62_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_7 \
    op interface \
    ports { conv62_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name conv62_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_8 \
    op interface \
    ports { conv62_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name conv62_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_9 \
    op interface \
    ports { conv62_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name conv62_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_10 \
    op interface \
    ports { conv62_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name conv62_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_11 \
    op interface \
    ports { conv62_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name conv62_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_12 \
    op interface \
    ports { conv62_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name conv62_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_13 \
    op interface \
    ports { conv62_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name conv62_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_14 \
    op interface \
    ports { conv62_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name conv8525_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv8525_out \
    op interface \
    ports { conv8525_out { O 2 vector } conv8525_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 32 vector } p_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name conv67_1424_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1424_out \
    op interface \
    ports { conv67_1424_out { O 32 vector } conv67_1424_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name conv67_1323_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1323_out \
    op interface \
    ports { conv67_1323_out { O 32 vector } conv67_1323_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name conv67_1222_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1222_out \
    op interface \
    ports { conv67_1222_out { O 32 vector } conv67_1222_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name conv67_1121_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1121_out \
    op interface \
    ports { conv67_1121_out { O 32 vector } conv67_1121_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name conv67_1020_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1020_out \
    op interface \
    ports { conv67_1020_out { O 32 vector } conv67_1020_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name conv67_919_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_919_out \
    op interface \
    ports { conv67_919_out { O 32 vector } conv67_919_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name conv67_818_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_818_out \
    op interface \
    ports { conv67_818_out { O 32 vector } conv67_818_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name conv67_717_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_717_out \
    op interface \
    ports { conv67_717_out { O 32 vector } conv67_717_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name conv67_616_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_616_out \
    op interface \
    ports { conv67_616_out { O 32 vector } conv67_616_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name conv67_515_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_515_out \
    op interface \
    ports { conv67_515_out { O 32 vector } conv67_515_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name conv67_414_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_414_out \
    op interface \
    ports { conv67_414_out { O 32 vector } conv67_414_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name conv67_313_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_313_out \
    op interface \
    ports { conv67_313_out { O 32 vector } conv67_313_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name conv67_212_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_212_out \
    op interface \
    ports { conv67_212_out { O 32 vector } conv67_212_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name conv67_111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_111_out \
    op interface \
    ports { conv67_111_out { O 32 vector } conv67_111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name conv6710_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv6710_out \
    op interface \
    ports { conv6710_out { O 32 vector } conv6710_out_ap_vld { O 1 bit } } \
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
set InstName rsa_modexp_hw_flow_control_loop_pipe_sequential_init_U
set CompName rsa_modexp_hw_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix rsa_modexp_hw_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


