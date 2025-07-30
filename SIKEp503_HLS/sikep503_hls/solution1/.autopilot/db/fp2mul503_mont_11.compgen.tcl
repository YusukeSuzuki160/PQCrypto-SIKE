# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2mul503_mont_11_t1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2mul503_mont_11_tt1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 4539 \
    name phiR_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiR_Z_0 \
    op interface \
    ports { phiR_Z_0_address0 { O 1 vector } phiR_Z_0_ce0 { O 1 bit } phiR_Z_0_q0 { I 64 vector } phiR_Z_0_address1 { O 1 vector } phiR_Z_0_ce1 { O 1 bit } phiR_Z_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4540 \
    name phiR_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiR_Z_1 \
    op interface \
    ports { phiR_Z_1_address0 { O 1 vector } phiR_Z_1_ce0 { O 1 bit } phiR_Z_1_q0 { I 64 vector } phiR_Z_1_address1 { O 1 vector } phiR_Z_1_ce1 { O 1 bit } phiR_Z_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4541 \
    name phiR_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiR_Z_2 \
    op interface \
    ports { phiR_Z_2_address0 { O 1 vector } phiR_Z_2_ce0 { O 1 bit } phiR_Z_2_q0 { I 64 vector } phiR_Z_2_address1 { O 1 vector } phiR_Z_2_ce1 { O 1 bit } phiR_Z_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4542 \
    name phiR_Z_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiR_Z_3 \
    op interface \
    ports { phiR_Z_3_address0 { O 1 vector } phiR_Z_3_ce0 { O 1 bit } phiR_Z_3_q0 { I 64 vector } phiR_Z_3_address1 { O 1 vector } phiR_Z_3_ce1 { O 1 bit } phiR_Z_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4543 \
    name phiR_Z_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiR_Z_4 \
    op interface \
    ports { phiR_Z_4_address0 { O 1 vector } phiR_Z_4_ce0 { O 1 bit } phiR_Z_4_q0 { I 64 vector } phiR_Z_4_address1 { O 1 vector } phiR_Z_4_ce1 { O 1 bit } phiR_Z_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4544 \
    name phiR_Z_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiR_Z_5 \
    op interface \
    ports { phiR_Z_5_address0 { O 1 vector } phiR_Z_5_ce0 { O 1 bit } phiR_Z_5_q0 { I 64 vector } phiR_Z_5_address1 { O 1 vector } phiR_Z_5_ce1 { O 1 bit } phiR_Z_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4545 \
    name phiR_Z_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiR_Z_6 \
    op interface \
    ports { phiR_Z_6_address0 { O 1 vector } phiR_Z_6_ce0 { O 1 bit } phiR_Z_6_q0 { I 64 vector } phiR_Z_6_address1 { O 1 vector } phiR_Z_6_ce1 { O 1 bit } phiR_Z_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4546 \
    name phiR_Z_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiR_Z_7 \
    op interface \
    ports { phiR_Z_7_address0 { O 1 vector } phiR_Z_7_ce0 { O 1 bit } phiR_Z_7_q0 { I 64 vector } phiR_Z_7_address1 { O 1 vector } phiR_Z_7_ce1 { O 1 bit } phiR_Z_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4547 \
    name b \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b \
    op interface \
    ports { b_address0 { O 4 vector } b_ce0 { O 1 bit } b_q0 { I 64 vector } b_address1 { O 4 vector } b_ce1 { O 1 bit } b_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4548 \
    name c_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0 \
    op interface \
    ports { c_0_address0 { O 1 vector } c_0_ce0 { O 1 bit } c_0_we0 { O 1 bit } c_0_d0 { O 64 vector } c_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4549 \
    name c_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1 \
    op interface \
    ports { c_1_address0 { O 1 vector } c_1_ce0 { O 1 bit } c_1_we0 { O 1 bit } c_1_d0 { O 64 vector } c_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4550 \
    name c_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_2 \
    op interface \
    ports { c_2_address0 { O 1 vector } c_2_ce0 { O 1 bit } c_2_we0 { O 1 bit } c_2_d0 { O 64 vector } c_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4551 \
    name c_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_3 \
    op interface \
    ports { c_3_address0 { O 1 vector } c_3_ce0 { O 1 bit } c_3_we0 { O 1 bit } c_3_d0 { O 64 vector } c_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4552 \
    name c_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_4 \
    op interface \
    ports { c_4_address0 { O 1 vector } c_4_ce0 { O 1 bit } c_4_we0 { O 1 bit } c_4_d0 { O 64 vector } c_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4553 \
    name c_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_5 \
    op interface \
    ports { c_5_address0 { O 1 vector } c_5_ce0 { O 1 bit } c_5_we0 { O 1 bit } c_5_d0 { O 64 vector } c_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4554 \
    name c_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_6 \
    op interface \
    ports { c_6_address0 { O 1 vector } c_6_ce0 { O 1 bit } c_6_we0 { O 1 bit } c_6_d0 { O 64 vector } c_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4555 \
    name c_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_7 \
    op interface \
    ports { c_7_address0 { O 1 vector } c_7_ce0 { O 1 bit } c_7_we0 { O 1 bit } c_7_d0 { O 64 vector } c_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_7'"
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


