# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2mul503_mont_15_t1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2mul503_mont_15_tt1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 5024 \
    name a \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a \
    op interface \
    ports { a_address0 { O 4 vector } a_ce0 { O 1 bit } a_q0 { I 64 vector } a_address1 { O 4 vector } a_ce1 { O 1 bit } a_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5025 \
    name phiP_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiP_Z_0 \
    op interface \
    ports { phiP_Z_0_address0 { O 1 vector } phiP_Z_0_ce0 { O 1 bit } phiP_Z_0_q0 { I 64 vector } phiP_Z_0_address1 { O 1 vector } phiP_Z_0_ce1 { O 1 bit } phiP_Z_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5026 \
    name phiP_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiP_Z_1 \
    op interface \
    ports { phiP_Z_1_address0 { O 1 vector } phiP_Z_1_ce0 { O 1 bit } phiP_Z_1_q0 { I 64 vector } phiP_Z_1_address1 { O 1 vector } phiP_Z_1_ce1 { O 1 bit } phiP_Z_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5027 \
    name phiP_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiP_Z_2 \
    op interface \
    ports { phiP_Z_2_address0 { O 1 vector } phiP_Z_2_ce0 { O 1 bit } phiP_Z_2_q0 { I 64 vector } phiP_Z_2_address1 { O 1 vector } phiP_Z_2_ce1 { O 1 bit } phiP_Z_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5028 \
    name phiP_Z_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiP_Z_3 \
    op interface \
    ports { phiP_Z_3_address0 { O 1 vector } phiP_Z_3_ce0 { O 1 bit } phiP_Z_3_q0 { I 64 vector } phiP_Z_3_address1 { O 1 vector } phiP_Z_3_ce1 { O 1 bit } phiP_Z_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5029 \
    name phiP_Z_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiP_Z_4 \
    op interface \
    ports { phiP_Z_4_address0 { O 1 vector } phiP_Z_4_ce0 { O 1 bit } phiP_Z_4_q0 { I 64 vector } phiP_Z_4_address1 { O 1 vector } phiP_Z_4_ce1 { O 1 bit } phiP_Z_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5030 \
    name phiP_Z_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiP_Z_5 \
    op interface \
    ports { phiP_Z_5_address0 { O 1 vector } phiP_Z_5_ce0 { O 1 bit } phiP_Z_5_q0 { I 64 vector } phiP_Z_5_address1 { O 1 vector } phiP_Z_5_ce1 { O 1 bit } phiP_Z_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5031 \
    name phiP_Z_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiP_Z_6 \
    op interface \
    ports { phiP_Z_6_address0 { O 1 vector } phiP_Z_6_ce0 { O 1 bit } phiP_Z_6_q0 { I 64 vector } phiP_Z_6_address1 { O 1 vector } phiP_Z_6_ce1 { O 1 bit } phiP_Z_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5032 \
    name phiP_Z_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename phiP_Z_7 \
    op interface \
    ports { phiP_Z_7_address0 { O 1 vector } phiP_Z_7_ce0 { O 1 bit } phiP_Z_7_q0 { I 64 vector } phiP_Z_7_address1 { O 1 vector } phiP_Z_7_ce1 { O 1 bit } phiP_Z_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5033 \
    name phiQ_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_0 \
    op interface \
    ports { phiQ_Z_0_address0 { O 1 vector } phiQ_Z_0_ce0 { O 1 bit } phiQ_Z_0_we0 { O 1 bit } phiQ_Z_0_d0 { O 64 vector } phiQ_Z_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5034 \
    name phiQ_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_1 \
    op interface \
    ports { phiQ_Z_1_address0 { O 1 vector } phiQ_Z_1_ce0 { O 1 bit } phiQ_Z_1_we0 { O 1 bit } phiQ_Z_1_d0 { O 64 vector } phiQ_Z_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5035 \
    name phiQ_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_2 \
    op interface \
    ports { phiQ_Z_2_address0 { O 1 vector } phiQ_Z_2_ce0 { O 1 bit } phiQ_Z_2_we0 { O 1 bit } phiQ_Z_2_d0 { O 64 vector } phiQ_Z_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5036 \
    name phiQ_Z_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_3 \
    op interface \
    ports { phiQ_Z_3_address0 { O 1 vector } phiQ_Z_3_ce0 { O 1 bit } phiQ_Z_3_we0 { O 1 bit } phiQ_Z_3_d0 { O 64 vector } phiQ_Z_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5037 \
    name phiQ_Z_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_4 \
    op interface \
    ports { phiQ_Z_4_address0 { O 1 vector } phiQ_Z_4_ce0 { O 1 bit } phiQ_Z_4_we0 { O 1 bit } phiQ_Z_4_d0 { O 64 vector } phiQ_Z_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5038 \
    name phiQ_Z_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_5 \
    op interface \
    ports { phiQ_Z_5_address0 { O 1 vector } phiQ_Z_5_ce0 { O 1 bit } phiQ_Z_5_we0 { O 1 bit } phiQ_Z_5_d0 { O 64 vector } phiQ_Z_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5039 \
    name phiQ_Z_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_6 \
    op interface \
    ports { phiQ_Z_6_address0 { O 1 vector } phiQ_Z_6_ce0 { O 1 bit } phiQ_Z_6_we0 { O 1 bit } phiQ_Z_6_d0 { O 64 vector } phiQ_Z_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5040 \
    name phiQ_Z_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_7 \
    op interface \
    ports { phiQ_Z_7_address0 { O 1 vector } phiQ_Z_7_ce0 { O 1 bit } phiQ_Z_7_we0 { O 1 bit } phiQ_Z_7_d0 { O 64 vector } phiQ_Z_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_7'"
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


