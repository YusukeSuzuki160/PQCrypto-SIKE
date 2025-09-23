# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2mul503_mont_14_tt3_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 2220 \
    name a_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_0 \
    op interface \
    ports { a_0_address0 { O 1 vector } a_0_ce0 { O 1 bit } a_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2221 \
    name a_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_1 \
    op interface \
    ports { a_1_address0 { O 1 vector } a_1_ce0 { O 1 bit } a_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2222 \
    name a_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_2 \
    op interface \
    ports { a_2_address0 { O 1 vector } a_2_ce0 { O 1 bit } a_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2223 \
    name a_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_3 \
    op interface \
    ports { a_3_address0 { O 1 vector } a_3_ce0 { O 1 bit } a_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2224 \
    name a_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_4 \
    op interface \
    ports { a_4_address0 { O 1 vector } a_4_ce0 { O 1 bit } a_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2225 \
    name a_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_5 \
    op interface \
    ports { a_5_address0 { O 1 vector } a_5_ce0 { O 1 bit } a_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2226 \
    name a_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_6 \
    op interface \
    ports { a_6_address0 { O 1 vector } a_6_ce0 { O 1 bit } a_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2227 \
    name a_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename a_7 \
    op interface \
    ports { a_7_address0 { O 1 vector } a_7_ce0 { O 1 bit } a_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'a_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2228 \
    name A24_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_0 \
    op interface \
    ports { A24_0_address0 { O 1 vector } A24_0_ce0 { O 1 bit } A24_0_q0 { I 64 vector } A24_0_address1 { O 1 vector } A24_0_ce1 { O 1 bit } A24_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2229 \
    name A24_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_1 \
    op interface \
    ports { A24_1_address0 { O 1 vector } A24_1_ce0 { O 1 bit } A24_1_q0 { I 64 vector } A24_1_address1 { O 1 vector } A24_1_ce1 { O 1 bit } A24_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2230 \
    name A24_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_2 \
    op interface \
    ports { A24_2_address0 { O 1 vector } A24_2_ce0 { O 1 bit } A24_2_q0 { I 64 vector } A24_2_address1 { O 1 vector } A24_2_ce1 { O 1 bit } A24_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2231 \
    name A24_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_3 \
    op interface \
    ports { A24_3_address0 { O 1 vector } A24_3_ce0 { O 1 bit } A24_3_q0 { I 64 vector } A24_3_address1 { O 1 vector } A24_3_ce1 { O 1 bit } A24_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2232 \
    name A24_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_4 \
    op interface \
    ports { A24_4_address0 { O 1 vector } A24_4_ce0 { O 1 bit } A24_4_q0 { I 64 vector } A24_4_address1 { O 1 vector } A24_4_ce1 { O 1 bit } A24_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2233 \
    name A24_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_5 \
    op interface \
    ports { A24_5_address0 { O 1 vector } A24_5_ce0 { O 1 bit } A24_5_q0 { I 64 vector } A24_5_address1 { O 1 vector } A24_5_ce1 { O 1 bit } A24_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2234 \
    name A24_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_6 \
    op interface \
    ports { A24_6_address0 { O 1 vector } A24_6_ce0 { O 1 bit } A24_6_q0 { I 64 vector } A24_6_address1 { O 1 vector } A24_6_ce1 { O 1 bit } A24_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2235 \
    name A24_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_7 \
    op interface \
    ports { A24_7_address0 { O 1 vector } A24_7_ce0 { O 1 bit } A24_7_q0 { I 64 vector } A24_7_address1 { O 1 vector } A24_7_ce1 { O 1 bit } A24_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2236 \
    name c_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0 \
    op interface \
    ports { c_0_address0 { O 3 vector } c_0_ce0 { O 1 bit } c_0_we0 { O 1 bit } c_0_d0 { O 64 vector } c_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2237 \
    name c_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1 \
    op interface \
    ports { c_1_address0 { O 3 vector } c_1_ce0 { O 1 bit } c_1_we0 { O 1 bit } c_1_d0 { O 64 vector } c_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1'"
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


