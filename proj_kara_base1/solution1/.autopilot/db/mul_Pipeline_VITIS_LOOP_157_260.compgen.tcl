# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_mul_karatsuba_configurable_sparsemux_7_2_64_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name or_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln \
    op interface \
    ports { or_ln { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name Sal_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Sal_11_reload \
    op interface \
    ports { Sal_11_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name Sal_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Sal_10_reload \
    op interface \
    ports { Sal_10_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name zext_ln65_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln65_4 \
    op interface \
    ports { zext_ln65_4 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name Sbl_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Sbl_5_reload \
    op interface \
    ports { Sbl_5_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name Sbl_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Sbl_reload \
    op interface \
    ports { Sbl_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name zext_ln65_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln65_5 \
    op interface \
    ports { zext_ln65_5 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name Ah_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ah_25_out \
    op interface \
    ports { Ah_25_out { O 64 vector } Ah_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name Ah_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ah_24_out \
    op interface \
    ports { Ah_24_out { O 64 vector } Ah_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name Bh_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Bh_25_out \
    op interface \
    ports { Bh_25_out { O 64 vector } Bh_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name Bh_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Bh_24_out \
    op interface \
    ports { Bh_24_out { O 64 vector } Bh_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name Bh_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Bh_38_out \
    op interface \
    ports { Bh_38_out { O 64 vector } Bh_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name Ah_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ah_38_out \
    op interface \
    ports { Ah_38_out { O 64 vector } Ah_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name B_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_32_out \
    op interface \
    ports { B_32_out { O 64 vector } B_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name A_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_A_31_out \
    op interface \
    ports { A_31_out { O 64 vector } A_31_out_ap_vld { O 1 bit } } \
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
set InstName test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init_U
set CompName test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix test_mul_karatsuba_configurable_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


