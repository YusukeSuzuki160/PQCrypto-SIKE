# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_get_A_t1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 5485 \
    name PKB \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename PKB \
    op interface \
    ports { PKB_address0 { O 6 vector } PKB_ce0 { O 1 bit } PKB_q0 { I 64 vector } PKB_address1 { O 6 vector } PKB_ce1 { O 1 bit } PKB_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'PKB'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5486 \
    name A_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_0 \
    op interface \
    ports { A_0_address0 { O 1 vector } A_0_ce0 { O 1 bit } A_0_we0 { O 1 bit } A_0_d0 { O 64 vector } A_0_q0 { I 64 vector } A_0_address1 { O 1 vector } A_0_ce1 { O 1 bit } A_0_we1 { O 1 bit } A_0_d1 { O 64 vector } A_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5487 \
    name A_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_1 \
    op interface \
    ports { A_1_address0 { O 1 vector } A_1_ce0 { O 1 bit } A_1_we0 { O 1 bit } A_1_d0 { O 64 vector } A_1_q0 { I 64 vector } A_1_address1 { O 1 vector } A_1_ce1 { O 1 bit } A_1_we1 { O 1 bit } A_1_d1 { O 64 vector } A_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5488 \
    name A_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_2 \
    op interface \
    ports { A_2_address0 { O 1 vector } A_2_ce0 { O 1 bit } A_2_we0 { O 1 bit } A_2_d0 { O 64 vector } A_2_q0 { I 64 vector } A_2_address1 { O 1 vector } A_2_ce1 { O 1 bit } A_2_we1 { O 1 bit } A_2_d1 { O 64 vector } A_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5489 \
    name A_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_3 \
    op interface \
    ports { A_3_address0 { O 1 vector } A_3_ce0 { O 1 bit } A_3_we0 { O 1 bit } A_3_d0 { O 64 vector } A_3_q0 { I 64 vector } A_3_address1 { O 1 vector } A_3_ce1 { O 1 bit } A_3_we1 { O 1 bit } A_3_d1 { O 64 vector } A_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5490 \
    name A_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_4 \
    op interface \
    ports { A_4_address0 { O 1 vector } A_4_ce0 { O 1 bit } A_4_we0 { O 1 bit } A_4_d0 { O 64 vector } A_4_q0 { I 64 vector } A_4_address1 { O 1 vector } A_4_ce1 { O 1 bit } A_4_we1 { O 1 bit } A_4_d1 { O 64 vector } A_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5491 \
    name A_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_5 \
    op interface \
    ports { A_5_address0 { O 1 vector } A_5_ce0 { O 1 bit } A_5_we0 { O 1 bit } A_5_d0 { O 64 vector } A_5_q0 { I 64 vector } A_5_address1 { O 1 vector } A_5_ce1 { O 1 bit } A_5_we1 { O 1 bit } A_5_d1 { O 64 vector } A_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5492 \
    name A_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_6 \
    op interface \
    ports { A_6_address0 { O 1 vector } A_6_ce0 { O 1 bit } A_6_we0 { O 1 bit } A_6_d0 { O 64 vector } A_6_q0 { I 64 vector } A_6_address1 { O 1 vector } A_6_ce1 { O 1 bit } A_6_we1 { O 1 bit } A_6_d1 { O 64 vector } A_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5493 \
    name A_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A_7 \
    op interface \
    ports { A_7_address0 { O 1 vector } A_7_ce0 { O 1 bit } A_7_we0 { O 1 bit } A_7_d0 { O 64 vector } A_7_q0 { I 64 vector } A_7_address1 { O 1 vector } A_7_ce1 { O 1 bit } A_7_we1 { O 1 bit } A_7_d1 { O 64 vector } A_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_7'"
}
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


