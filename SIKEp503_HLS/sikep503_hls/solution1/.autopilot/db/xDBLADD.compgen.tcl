# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_xDBLADD_t0_RAM_1P_AUTO_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 2322 \
    name P_X_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_0 \
    op interface \
    ports { P_X_0_address0 { O 1 vector } P_X_0_ce0 { O 1 bit } P_X_0_we0 { O 1 bit } P_X_0_d0 { O 64 vector } P_X_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2323 \
    name P_X_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_1 \
    op interface \
    ports { P_X_1_address0 { O 1 vector } P_X_1_ce0 { O 1 bit } P_X_1_we0 { O 1 bit } P_X_1_d0 { O 64 vector } P_X_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2324 \
    name P_X_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_2 \
    op interface \
    ports { P_X_2_address0 { O 1 vector } P_X_2_ce0 { O 1 bit } P_X_2_we0 { O 1 bit } P_X_2_d0 { O 64 vector } P_X_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2325 \
    name P_X_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_3 \
    op interface \
    ports { P_X_3_address0 { O 1 vector } P_X_3_ce0 { O 1 bit } P_X_3_we0 { O 1 bit } P_X_3_d0 { O 64 vector } P_X_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2326 \
    name P_X_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_4 \
    op interface \
    ports { P_X_4_address0 { O 1 vector } P_X_4_ce0 { O 1 bit } P_X_4_we0 { O 1 bit } P_X_4_d0 { O 64 vector } P_X_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2327 \
    name P_X_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_5 \
    op interface \
    ports { P_X_5_address0 { O 1 vector } P_X_5_ce0 { O 1 bit } P_X_5_we0 { O 1 bit } P_X_5_d0 { O 64 vector } P_X_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2328 \
    name P_X_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_6 \
    op interface \
    ports { P_X_6_address0 { O 1 vector } P_X_6_ce0 { O 1 bit } P_X_6_we0 { O 1 bit } P_X_6_d0 { O 64 vector } P_X_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2329 \
    name P_X_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_7 \
    op interface \
    ports { P_X_7_address0 { O 1 vector } P_X_7_ce0 { O 1 bit } P_X_7_we0 { O 1 bit } P_X_7_d0 { O 64 vector } P_X_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2330 \
    name P_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_0 \
    op interface \
    ports { P_Z_0_address0 { O 1 vector } P_Z_0_ce0 { O 1 bit } P_Z_0_we0 { O 1 bit } P_Z_0_d0 { O 64 vector } P_Z_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2331 \
    name P_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_1 \
    op interface \
    ports { P_Z_1_address0 { O 1 vector } P_Z_1_ce0 { O 1 bit } P_Z_1_we0 { O 1 bit } P_Z_1_d0 { O 64 vector } P_Z_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2332 \
    name P_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_2 \
    op interface \
    ports { P_Z_2_address0 { O 1 vector } P_Z_2_ce0 { O 1 bit } P_Z_2_we0 { O 1 bit } P_Z_2_d0 { O 64 vector } P_Z_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2333 \
    name P_Z_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_3 \
    op interface \
    ports { P_Z_3_address0 { O 1 vector } P_Z_3_ce0 { O 1 bit } P_Z_3_we0 { O 1 bit } P_Z_3_d0 { O 64 vector } P_Z_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2334 \
    name P_Z_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_4 \
    op interface \
    ports { P_Z_4_address0 { O 1 vector } P_Z_4_ce0 { O 1 bit } P_Z_4_we0 { O 1 bit } P_Z_4_d0 { O 64 vector } P_Z_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2335 \
    name P_Z_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_5 \
    op interface \
    ports { P_Z_5_address0 { O 1 vector } P_Z_5_ce0 { O 1 bit } P_Z_5_we0 { O 1 bit } P_Z_5_d0 { O 64 vector } P_Z_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2336 \
    name P_Z_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_6 \
    op interface \
    ports { P_Z_6_address0 { O 1 vector } P_Z_6_ce0 { O 1 bit } P_Z_6_we0 { O 1 bit } P_Z_6_d0 { O 64 vector } P_Z_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2337 \
    name P_Z_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_7 \
    op interface \
    ports { P_Z_7_address0 { O 1 vector } P_Z_7_ce0 { O 1 bit } P_Z_7_we0 { O 1 bit } P_Z_7_d0 { O 64 vector } P_Z_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2338 \
    name Q_X_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_0 \
    op interface \
    ports { Q_X_0_address0 { O 1 vector } Q_X_0_ce0 { O 1 bit } Q_X_0_we0 { O 1 bit } Q_X_0_d0 { O 64 vector } Q_X_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2339 \
    name Q_X_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_1 \
    op interface \
    ports { Q_X_1_address0 { O 1 vector } Q_X_1_ce0 { O 1 bit } Q_X_1_we0 { O 1 bit } Q_X_1_d0 { O 64 vector } Q_X_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2340 \
    name Q_X_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_2 \
    op interface \
    ports { Q_X_2_address0 { O 1 vector } Q_X_2_ce0 { O 1 bit } Q_X_2_we0 { O 1 bit } Q_X_2_d0 { O 64 vector } Q_X_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2341 \
    name Q_X_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_3 \
    op interface \
    ports { Q_X_3_address0 { O 1 vector } Q_X_3_ce0 { O 1 bit } Q_X_3_we0 { O 1 bit } Q_X_3_d0 { O 64 vector } Q_X_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2342 \
    name Q_X_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_4 \
    op interface \
    ports { Q_X_4_address0 { O 1 vector } Q_X_4_ce0 { O 1 bit } Q_X_4_we0 { O 1 bit } Q_X_4_d0 { O 64 vector } Q_X_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2343 \
    name Q_X_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_5 \
    op interface \
    ports { Q_X_5_address0 { O 1 vector } Q_X_5_ce0 { O 1 bit } Q_X_5_we0 { O 1 bit } Q_X_5_d0 { O 64 vector } Q_X_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2344 \
    name Q_X_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_6 \
    op interface \
    ports { Q_X_6_address0 { O 1 vector } Q_X_6_ce0 { O 1 bit } Q_X_6_we0 { O 1 bit } Q_X_6_d0 { O 64 vector } Q_X_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2345 \
    name Q_X_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_7 \
    op interface \
    ports { Q_X_7_address0 { O 1 vector } Q_X_7_ce0 { O 1 bit } Q_X_7_we0 { O 1 bit } Q_X_7_d0 { O 64 vector } Q_X_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2346 \
    name Q_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_0 \
    op interface \
    ports { Q_Z_0_address0 { O 1 vector } Q_Z_0_ce0 { O 1 bit } Q_Z_0_we0 { O 1 bit } Q_Z_0_d0 { O 64 vector } Q_Z_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2347 \
    name Q_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_1 \
    op interface \
    ports { Q_Z_1_address0 { O 1 vector } Q_Z_1_ce0 { O 1 bit } Q_Z_1_we0 { O 1 bit } Q_Z_1_d0 { O 64 vector } Q_Z_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2348 \
    name Q_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_2 \
    op interface \
    ports { Q_Z_2_address0 { O 1 vector } Q_Z_2_ce0 { O 1 bit } Q_Z_2_we0 { O 1 bit } Q_Z_2_d0 { O 64 vector } Q_Z_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2349 \
    name Q_Z_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_3 \
    op interface \
    ports { Q_Z_3_address0 { O 1 vector } Q_Z_3_ce0 { O 1 bit } Q_Z_3_we0 { O 1 bit } Q_Z_3_d0 { O 64 vector } Q_Z_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2350 \
    name Q_Z_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_4 \
    op interface \
    ports { Q_Z_4_address0 { O 1 vector } Q_Z_4_ce0 { O 1 bit } Q_Z_4_we0 { O 1 bit } Q_Z_4_d0 { O 64 vector } Q_Z_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2351 \
    name Q_Z_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_5 \
    op interface \
    ports { Q_Z_5_address0 { O 1 vector } Q_Z_5_ce0 { O 1 bit } Q_Z_5_we0 { O 1 bit } Q_Z_5_d0 { O 64 vector } Q_Z_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2352 \
    name Q_Z_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_6 \
    op interface \
    ports { Q_Z_6_address0 { O 1 vector } Q_Z_6_ce0 { O 1 bit } Q_Z_6_we0 { O 1 bit } Q_Z_6_d0 { O 64 vector } Q_Z_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2353 \
    name Q_Z_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_7 \
    op interface \
    ports { Q_Z_7_address0 { O 1 vector } Q_Z_7_ce0 { O 1 bit } Q_Z_7_we0 { O 1 bit } Q_Z_7_d0 { O 64 vector } Q_Z_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2354 \
    name xPQ_0_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_0_0_0_val \
    op interface \
    ports { xPQ_0_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2355 \
    name xPQ_0_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_0_0_1_val \
    op interface \
    ports { xPQ_0_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2356 \
    name xPQ_1_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_1_0_0_val \
    op interface \
    ports { xPQ_1_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2357 \
    name xPQ_1_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_1_0_1_val \
    op interface \
    ports { xPQ_1_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2358 \
    name xPQ_2_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_2_0_0_val \
    op interface \
    ports { xPQ_2_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2359 \
    name xPQ_2_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_2_0_1_val \
    op interface \
    ports { xPQ_2_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2360 \
    name xPQ_3_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_3_0_0_val \
    op interface \
    ports { xPQ_3_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2361 \
    name xPQ_3_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_3_0_1_val \
    op interface \
    ports { xPQ_3_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2362 \
    name xPQ_4_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_4_0_0_val \
    op interface \
    ports { xPQ_4_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2363 \
    name xPQ_4_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_4_0_1_val \
    op interface \
    ports { xPQ_4_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2364 \
    name xPQ_5_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_5_0_0_val \
    op interface \
    ports { xPQ_5_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2365 \
    name xPQ_5_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_5_0_1_val \
    op interface \
    ports { xPQ_5_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2366 \
    name xPQ_6_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_6_0_0_val \
    op interface \
    ports { xPQ_6_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2367 \
    name xPQ_6_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_6_0_1_val \
    op interface \
    ports { xPQ_6_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2368 \
    name xPQ_7_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_7_0_0_val \
    op interface \
    ports { xPQ_7_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2369 \
    name xPQ_7_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xPQ_7_0_1_val \
    op interface \
    ports { xPQ_7_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2370 \
    name A24_0_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_0_0_0_val \
    op interface \
    ports { A24_0_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2371 \
    name A24_0_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_0_0_1_val \
    op interface \
    ports { A24_0_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2372 \
    name A24_1_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_1_0_0_val \
    op interface \
    ports { A24_1_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2373 \
    name A24_1_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_1_0_1_val \
    op interface \
    ports { A24_1_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2374 \
    name A24_2_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_2_0_0_val \
    op interface \
    ports { A24_2_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2375 \
    name A24_2_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_2_0_1_val \
    op interface \
    ports { A24_2_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2376 \
    name A24_3_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_3_0_0_val \
    op interface \
    ports { A24_3_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2377 \
    name A24_3_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_3_0_1_val \
    op interface \
    ports { A24_3_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2378 \
    name A24_4_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_4_0_0_val \
    op interface \
    ports { A24_4_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2379 \
    name A24_4_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_4_0_1_val \
    op interface \
    ports { A24_4_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2380 \
    name A24_5_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_5_0_0_val \
    op interface \
    ports { A24_5_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2381 \
    name A24_5_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_5_0_1_val \
    op interface \
    ports { A24_5_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2382 \
    name A24_6_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_6_0_0_val \
    op interface \
    ports { A24_6_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2383 \
    name A24_6_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_6_0_1_val \
    op interface \
    ports { A24_6_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2384 \
    name A24_7_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_7_0_0_val \
    op interface \
    ports { A24_7_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2385 \
    name A24_7_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A24_7_0_1_val \
    op interface \
    ports { A24_7_0_1_val { I 64 vector } } \
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


