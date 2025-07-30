# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2sqr503_mont_8_temp_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2sqr503_mont_8_t1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 2167 \
    name c_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_0 \
    op interface \
    ports { c_0_0_address0 { O 1 vector } c_0_0_ce0 { O 1 bit } c_0_0_we0 { O 1 bit } c_0_0_d0 { O 64 vector } c_0_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2168 \
    name c_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_1 \
    op interface \
    ports { c_0_1_address0 { O 1 vector } c_0_1_ce0 { O 1 bit } c_0_1_we0 { O 1 bit } c_0_1_d0 { O 64 vector } c_0_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2169 \
    name c_0_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_2 \
    op interface \
    ports { c_0_2_address0 { O 1 vector } c_0_2_ce0 { O 1 bit } c_0_2_we0 { O 1 bit } c_0_2_d0 { O 64 vector } c_0_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2170 \
    name c_0_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_3 \
    op interface \
    ports { c_0_3_address0 { O 1 vector } c_0_3_ce0 { O 1 bit } c_0_3_we0 { O 1 bit } c_0_3_d0 { O 64 vector } c_0_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2171 \
    name c_0_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_4 \
    op interface \
    ports { c_0_4_address0 { O 1 vector } c_0_4_ce0 { O 1 bit } c_0_4_we0 { O 1 bit } c_0_4_d0 { O 64 vector } c_0_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2172 \
    name c_0_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_5 \
    op interface \
    ports { c_0_5_address0 { O 1 vector } c_0_5_ce0 { O 1 bit } c_0_5_we0 { O 1 bit } c_0_5_d0 { O 64 vector } c_0_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2173 \
    name c_0_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_6 \
    op interface \
    ports { c_0_6_address0 { O 1 vector } c_0_6_ce0 { O 1 bit } c_0_6_we0 { O 1 bit } c_0_6_d0 { O 64 vector } c_0_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2174 \
    name c_0_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_7 \
    op interface \
    ports { c_0_7_address0 { O 1 vector } c_0_7_ce0 { O 1 bit } c_0_7_we0 { O 1 bit } c_0_7_d0 { O 64 vector } c_0_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2175 \
    name c_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_0 \
    op interface \
    ports { c_1_0_address0 { O 1 vector } c_1_0_ce0 { O 1 bit } c_1_0_we0 { O 1 bit } c_1_0_d0 { O 64 vector } c_1_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2176 \
    name c_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_1 \
    op interface \
    ports { c_1_1_address0 { O 1 vector } c_1_1_ce0 { O 1 bit } c_1_1_we0 { O 1 bit } c_1_1_d0 { O 64 vector } c_1_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2177 \
    name c_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_2 \
    op interface \
    ports { c_1_2_address0 { O 1 vector } c_1_2_ce0 { O 1 bit } c_1_2_we0 { O 1 bit } c_1_2_d0 { O 64 vector } c_1_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2178 \
    name c_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_3 \
    op interface \
    ports { c_1_3_address0 { O 1 vector } c_1_3_ce0 { O 1 bit } c_1_3_we0 { O 1 bit } c_1_3_d0 { O 64 vector } c_1_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2179 \
    name c_1_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_4 \
    op interface \
    ports { c_1_4_address0 { O 1 vector } c_1_4_ce0 { O 1 bit } c_1_4_we0 { O 1 bit } c_1_4_d0 { O 64 vector } c_1_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2180 \
    name c_1_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_5 \
    op interface \
    ports { c_1_5_address0 { O 1 vector } c_1_5_ce0 { O 1 bit } c_1_5_we0 { O 1 bit } c_1_5_d0 { O 64 vector } c_1_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2181 \
    name c_1_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_6 \
    op interface \
    ports { c_1_6_address0 { O 1 vector } c_1_6_ce0 { O 1 bit } c_1_6_we0 { O 1 bit } c_1_6_d0 { O 64 vector } c_1_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2182 \
    name c_1_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_7 \
    op interface \
    ports { c_1_7_address0 { O 1 vector } c_1_7_ce0 { O 1 bit } c_1_7_we0 { O 1 bit } c_1_7_d0 { O 64 vector } c_1_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_7'"
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


