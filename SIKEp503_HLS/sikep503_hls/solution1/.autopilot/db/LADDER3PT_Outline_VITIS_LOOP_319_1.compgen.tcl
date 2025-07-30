# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_LADDER3PT_Outline_VITIS_LOOP_319_1_t1_i_7_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 2320 \
    name R0_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_X \
    op interface \
    ports { R0_X_address0 { O 1 vector } R0_X_ce0 { O 1 bit } R0_X_we0 { O 1 bit } R0_X_d0 { O 64 vector } R0_X_q0 { I 64 vector } R0_X_address1 { O 1 vector } R0_X_ce1 { O 1 bit } R0_X_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2321 \
    name R0_X_22 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_X_22 \
    op interface \
    ports { R0_X_22_address0 { O 1 vector } R0_X_22_ce0 { O 1 bit } R0_X_22_we0 { O 1 bit } R0_X_22_d0 { O 64 vector } R0_X_22_q0 { I 64 vector } R0_X_22_address1 { O 1 vector } R0_X_22_ce1 { O 1 bit } R0_X_22_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_X_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2322 \
    name R0_X_23 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_X_23 \
    op interface \
    ports { R0_X_23_address0 { O 1 vector } R0_X_23_ce0 { O 1 bit } R0_X_23_we0 { O 1 bit } R0_X_23_d0 { O 64 vector } R0_X_23_q0 { I 64 vector } R0_X_23_address1 { O 1 vector } R0_X_23_ce1 { O 1 bit } R0_X_23_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_X_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2323 \
    name R0_X_24 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_X_24 \
    op interface \
    ports { R0_X_24_address0 { O 1 vector } R0_X_24_ce0 { O 1 bit } R0_X_24_we0 { O 1 bit } R0_X_24_d0 { O 64 vector } R0_X_24_q0 { I 64 vector } R0_X_24_address1 { O 1 vector } R0_X_24_ce1 { O 1 bit } R0_X_24_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_X_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2324 \
    name R0_X_25 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_X_25 \
    op interface \
    ports { R0_X_25_address0 { O 1 vector } R0_X_25_ce0 { O 1 bit } R0_X_25_we0 { O 1 bit } R0_X_25_d0 { O 64 vector } R0_X_25_q0 { I 64 vector } R0_X_25_address1 { O 1 vector } R0_X_25_ce1 { O 1 bit } R0_X_25_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_X_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2325 \
    name R0_X_26 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_X_26 \
    op interface \
    ports { R0_X_26_address0 { O 1 vector } R0_X_26_ce0 { O 1 bit } R0_X_26_we0 { O 1 bit } R0_X_26_d0 { O 64 vector } R0_X_26_q0 { I 64 vector } R0_X_26_address1 { O 1 vector } R0_X_26_ce1 { O 1 bit } R0_X_26_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_X_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2326 \
    name R0_X_27 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_X_27 \
    op interface \
    ports { R0_X_27_address0 { O 1 vector } R0_X_27_ce0 { O 1 bit } R0_X_27_we0 { O 1 bit } R0_X_27_d0 { O 64 vector } R0_X_27_q0 { I 64 vector } R0_X_27_address1 { O 1 vector } R0_X_27_ce1 { O 1 bit } R0_X_27_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_X_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2327 \
    name R0_X_28 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_X_28 \
    op interface \
    ports { R0_X_28_address0 { O 1 vector } R0_X_28_ce0 { O 1 bit } R0_X_28_we0 { O 1 bit } R0_X_28_d0 { O 64 vector } R0_X_28_q0 { I 64 vector } R0_X_28_address1 { O 1 vector } R0_X_28_ce1 { O 1 bit } R0_X_28_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_X_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2328 \
    name R2_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X \
    op interface \
    ports { R2_X_address0 { O 1 vector } R2_X_ce0 { O 1 bit } R2_X_we0 { O 1 bit } R2_X_d0 { O 64 vector } R2_X_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2329 \
    name R2_X_46 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_46 \
    op interface \
    ports { R2_X_46_address0 { O 1 vector } R2_X_46_ce0 { O 1 bit } R2_X_46_we0 { O 1 bit } R2_X_46_d0 { O 64 vector } R2_X_46_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2330 \
    name R2_X_47 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_47 \
    op interface \
    ports { R2_X_47_address0 { O 1 vector } R2_X_47_ce0 { O 1 bit } R2_X_47_we0 { O 1 bit } R2_X_47_d0 { O 64 vector } R2_X_47_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2331 \
    name R2_X_48 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_48 \
    op interface \
    ports { R2_X_48_address0 { O 1 vector } R2_X_48_ce0 { O 1 bit } R2_X_48_we0 { O 1 bit } R2_X_48_d0 { O 64 vector } R2_X_48_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2332 \
    name R2_X_49 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_49 \
    op interface \
    ports { R2_X_49_address0 { O 1 vector } R2_X_49_ce0 { O 1 bit } R2_X_49_we0 { O 1 bit } R2_X_49_d0 { O 64 vector } R2_X_49_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2333 \
    name R2_X_50 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_50 \
    op interface \
    ports { R2_X_50_address0 { O 1 vector } R2_X_50_ce0 { O 1 bit } R2_X_50_we0 { O 1 bit } R2_X_50_d0 { O 64 vector } R2_X_50_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2334 \
    name R2_X_51 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_51 \
    op interface \
    ports { R2_X_51_address0 { O 1 vector } R2_X_51_ce0 { O 1 bit } R2_X_51_we0 { O 1 bit } R2_X_51_d0 { O 64 vector } R2_X_51_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2335 \
    name R2_X_52 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_52 \
    op interface \
    ports { R2_X_52_address0 { O 1 vector } R2_X_52_ce0 { O 1 bit } R2_X_52_we0 { O 1 bit } R2_X_52_d0 { O 64 vector } R2_X_52_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2336 \
    name R2_Z \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z \
    op interface \
    ports { R2_Z_address0 { O 1 vector } R2_Z_ce0 { O 1 bit } R2_Z_we0 { O 1 bit } R2_Z_d0 { O 64 vector } R2_Z_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2337 \
    name R2_Z_46 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_46 \
    op interface \
    ports { R2_Z_46_address0 { O 1 vector } R2_Z_46_ce0 { O 1 bit } R2_Z_46_we0 { O 1 bit } R2_Z_46_d0 { O 64 vector } R2_Z_46_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2338 \
    name R2_Z_47 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_47 \
    op interface \
    ports { R2_Z_47_address0 { O 1 vector } R2_Z_47_ce0 { O 1 bit } R2_Z_47_we0 { O 1 bit } R2_Z_47_d0 { O 64 vector } R2_Z_47_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2339 \
    name R2_Z_48 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_48 \
    op interface \
    ports { R2_Z_48_address0 { O 1 vector } R2_Z_48_ce0 { O 1 bit } R2_Z_48_we0 { O 1 bit } R2_Z_48_d0 { O 64 vector } R2_Z_48_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2340 \
    name R2_Z_49 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_49 \
    op interface \
    ports { R2_Z_49_address0 { O 1 vector } R2_Z_49_ce0 { O 1 bit } R2_Z_49_we0 { O 1 bit } R2_Z_49_d0 { O 64 vector } R2_Z_49_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2341 \
    name R2_Z_50 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_50 \
    op interface \
    ports { R2_Z_50_address0 { O 1 vector } R2_Z_50_ce0 { O 1 bit } R2_Z_50_we0 { O 1 bit } R2_Z_50_d0 { O 64 vector } R2_Z_50_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2342 \
    name R2_Z_51 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_51 \
    op interface \
    ports { R2_Z_51_address0 { O 1 vector } R2_Z_51_ce0 { O 1 bit } R2_Z_51_we0 { O 1 bit } R2_Z_51_d0 { O 64 vector } R2_Z_51_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2343 \
    name R2_Z_52 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_52 \
    op interface \
    ports { R2_Z_52_address0 { O 1 vector } R2_Z_52_ce0 { O 1 bit } R2_Z_52_we0 { O 1 bit } R2_Z_52_d0 { O 64 vector } R2_Z_52_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2344 \
    name R2_X_53 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_53 \
    op interface \
    ports { R2_X_53_address0 { O 1 vector } R2_X_53_ce0 { O 1 bit } R2_X_53_we0 { O 1 bit } R2_X_53_d0 { O 64 vector } R2_X_53_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2345 \
    name R2_X_54 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_54 \
    op interface \
    ports { R2_X_54_address0 { O 1 vector } R2_X_54_ce0 { O 1 bit } R2_X_54_we0 { O 1 bit } R2_X_54_d0 { O 64 vector } R2_X_54_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2346 \
    name R2_X_55 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_55 \
    op interface \
    ports { R2_X_55_address0 { O 1 vector } R2_X_55_ce0 { O 1 bit } R2_X_55_we0 { O 1 bit } R2_X_55_d0 { O 64 vector } R2_X_55_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2347 \
    name R2_X_56 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_56 \
    op interface \
    ports { R2_X_56_address0 { O 1 vector } R2_X_56_ce0 { O 1 bit } R2_X_56_we0 { O 1 bit } R2_X_56_d0 { O 64 vector } R2_X_56_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2348 \
    name R2_X_57 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_57 \
    op interface \
    ports { R2_X_57_address0 { O 1 vector } R2_X_57_ce0 { O 1 bit } R2_X_57_we0 { O 1 bit } R2_X_57_d0 { O 64 vector } R2_X_57_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2349 \
    name R2_X_58 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_58 \
    op interface \
    ports { R2_X_58_address0 { O 1 vector } R2_X_58_ce0 { O 1 bit } R2_X_58_we0 { O 1 bit } R2_X_58_d0 { O 64 vector } R2_X_58_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2350 \
    name R2_X_59 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_59 \
    op interface \
    ports { R2_X_59_address0 { O 1 vector } R2_X_59_ce0 { O 1 bit } R2_X_59_we0 { O 1 bit } R2_X_59_d0 { O 64 vector } R2_X_59_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2351 \
    name R2_X_60 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_X_60 \
    op interface \
    ports { R2_X_60_address0 { O 1 vector } R2_X_60_ce0 { O 1 bit } R2_X_60_we0 { O 1 bit } R2_X_60_d0 { O 64 vector } R2_X_60_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_X_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2352 \
    name R2_Z_53 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_53 \
    op interface \
    ports { R2_Z_53_address0 { O 1 vector } R2_Z_53_ce0 { O 1 bit } R2_Z_53_we0 { O 1 bit } R2_Z_53_d0 { O 64 vector } R2_Z_53_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2353 \
    name R2_Z_54 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_54 \
    op interface \
    ports { R2_Z_54_address0 { O 1 vector } R2_Z_54_ce0 { O 1 bit } R2_Z_54_we0 { O 1 bit } R2_Z_54_d0 { O 64 vector } R2_Z_54_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2354 \
    name R2_Z_55 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_55 \
    op interface \
    ports { R2_Z_55_address0 { O 1 vector } R2_Z_55_ce0 { O 1 bit } R2_Z_55_we0 { O 1 bit } R2_Z_55_d0 { O 64 vector } R2_Z_55_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2355 \
    name R2_Z_56 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_56 \
    op interface \
    ports { R2_Z_56_address0 { O 1 vector } R2_Z_56_ce0 { O 1 bit } R2_Z_56_we0 { O 1 bit } R2_Z_56_d0 { O 64 vector } R2_Z_56_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2356 \
    name R2_Z_57 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_57 \
    op interface \
    ports { R2_Z_57_address0 { O 1 vector } R2_Z_57_ce0 { O 1 bit } R2_Z_57_we0 { O 1 bit } R2_Z_57_d0 { O 64 vector } R2_Z_57_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2357 \
    name R2_Z_58 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_58 \
    op interface \
    ports { R2_Z_58_address0 { O 1 vector } R2_Z_58_ce0 { O 1 bit } R2_Z_58_we0 { O 1 bit } R2_Z_58_d0 { O 64 vector } R2_Z_58_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2358 \
    name R2_Z_59 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_59 \
    op interface \
    ports { R2_Z_59_address0 { O 1 vector } R2_Z_59_ce0 { O 1 bit } R2_Z_59_we0 { O 1 bit } R2_Z_59_d0 { O 64 vector } R2_Z_59_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2359 \
    name R2_Z_60 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R2_Z_60 \
    op interface \
    ports { R2_Z_60_address0 { O 1 vector } R2_Z_60_ce0 { O 1 bit } R2_Z_60_we0 { O 1 bit } R2_Z_60_d0 { O 64 vector } R2_Z_60_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R2_Z_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2360 \
    name t2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t2 \
    op interface \
    ports { t2_address0 { O 1 vector } t2_ce0 { O 1 bit } t2_we0 { O 1 bit } t2_d0 { O 64 vector } t2_q0 { I 64 vector } t2_address1 { O 1 vector } t2_ce1 { O 1 bit } t2_we1 { O 1 bit } t2_d1 { O 64 vector } t2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2361 \
    name t2_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t2_15 \
    op interface \
    ports { t2_15_address0 { O 1 vector } t2_15_ce0 { O 1 bit } t2_15_we0 { O 1 bit } t2_15_d0 { O 64 vector } t2_15_q0 { I 64 vector } t2_15_address1 { O 1 vector } t2_15_ce1 { O 1 bit } t2_15_we1 { O 1 bit } t2_15_d1 { O 64 vector } t2_15_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't2_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2362 \
    name t2_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t2_16 \
    op interface \
    ports { t2_16_address0 { O 1 vector } t2_16_ce0 { O 1 bit } t2_16_we0 { O 1 bit } t2_16_d0 { O 64 vector } t2_16_q0 { I 64 vector } t2_16_address1 { O 1 vector } t2_16_ce1 { O 1 bit } t2_16_we1 { O 1 bit } t2_16_d1 { O 64 vector } t2_16_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't2_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2363 \
    name t2_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t2_17 \
    op interface \
    ports { t2_17_address0 { O 1 vector } t2_17_ce0 { O 1 bit } t2_17_we0 { O 1 bit } t2_17_d0 { O 64 vector } t2_17_q0 { I 64 vector } t2_17_address1 { O 1 vector } t2_17_ce1 { O 1 bit } t2_17_we1 { O 1 bit } t2_17_d1 { O 64 vector } t2_17_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't2_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2364 \
    name t2_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t2_18 \
    op interface \
    ports { t2_18_address0 { O 1 vector } t2_18_ce0 { O 1 bit } t2_18_we0 { O 1 bit } t2_18_d0 { O 64 vector } t2_18_q0 { I 64 vector } t2_18_address1 { O 1 vector } t2_18_ce1 { O 1 bit } t2_18_we1 { O 1 bit } t2_18_d1 { O 64 vector } t2_18_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't2_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2365 \
    name t2_19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t2_19 \
    op interface \
    ports { t2_19_address0 { O 1 vector } t2_19_ce0 { O 1 bit } t2_19_we0 { O 1 bit } t2_19_d0 { O 64 vector } t2_19_q0 { I 64 vector } t2_19_address1 { O 1 vector } t2_19_ce1 { O 1 bit } t2_19_we1 { O 1 bit } t2_19_d1 { O 64 vector } t2_19_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't2_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2366 \
    name t2_20 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t2_20 \
    op interface \
    ports { t2_20_address0 { O 1 vector } t2_20_ce0 { O 1 bit } t2_20_we0 { O 1 bit } t2_20_d0 { O 64 vector } t2_20_q0 { I 64 vector } t2_20_address1 { O 1 vector } t2_20_ce1 { O 1 bit } t2_20_we1 { O 1 bit } t2_20_d1 { O 64 vector } t2_20_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't2_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2367 \
    name t2_21 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t2_21 \
    op interface \
    ports { t2_21_address0 { O 1 vector } t2_21_ce0 { O 1 bit } t2_21_we0 { O 1 bit } t2_21_d0 { O 64 vector } t2_21_q0 { I 64 vector } t2_21_address1 { O 1 vector } t2_21_ce1 { O 1 bit } t2_21_we1 { O 1 bit } t2_21_d1 { O 64 vector } t2_21_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't2_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2368 \
    name R0_Z \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_Z \
    op interface \
    ports { R0_Z_address0 { O 1 vector } R0_Z_ce0 { O 1 bit } R0_Z_we0 { O 1 bit } R0_Z_d0 { O 64 vector } R0_Z_q0 { I 64 vector } R0_Z_address1 { O 1 vector } R0_Z_ce1 { O 1 bit } R0_Z_we1 { O 1 bit } R0_Z_d1 { O 64 vector } R0_Z_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_Z'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2369 \
    name R0_Z_22 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_Z_22 \
    op interface \
    ports { R0_Z_22_address0 { O 1 vector } R0_Z_22_ce0 { O 1 bit } R0_Z_22_we0 { O 1 bit } R0_Z_22_d0 { O 64 vector } R0_Z_22_q0 { I 64 vector } R0_Z_22_address1 { O 1 vector } R0_Z_22_ce1 { O 1 bit } R0_Z_22_we1 { O 1 bit } R0_Z_22_d1 { O 64 vector } R0_Z_22_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_Z_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2370 \
    name R0_Z_23 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_Z_23 \
    op interface \
    ports { R0_Z_23_address0 { O 1 vector } R0_Z_23_ce0 { O 1 bit } R0_Z_23_we0 { O 1 bit } R0_Z_23_d0 { O 64 vector } R0_Z_23_q0 { I 64 vector } R0_Z_23_address1 { O 1 vector } R0_Z_23_ce1 { O 1 bit } R0_Z_23_we1 { O 1 bit } R0_Z_23_d1 { O 64 vector } R0_Z_23_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_Z_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2371 \
    name R0_Z_24 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_Z_24 \
    op interface \
    ports { R0_Z_24_address0 { O 1 vector } R0_Z_24_ce0 { O 1 bit } R0_Z_24_we0 { O 1 bit } R0_Z_24_d0 { O 64 vector } R0_Z_24_q0 { I 64 vector } R0_Z_24_address1 { O 1 vector } R0_Z_24_ce1 { O 1 bit } R0_Z_24_we1 { O 1 bit } R0_Z_24_d1 { O 64 vector } R0_Z_24_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_Z_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2372 \
    name R0_Z_25 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_Z_25 \
    op interface \
    ports { R0_Z_25_address0 { O 1 vector } R0_Z_25_ce0 { O 1 bit } R0_Z_25_we0 { O 1 bit } R0_Z_25_d0 { O 64 vector } R0_Z_25_q0 { I 64 vector } R0_Z_25_address1 { O 1 vector } R0_Z_25_ce1 { O 1 bit } R0_Z_25_we1 { O 1 bit } R0_Z_25_d1 { O 64 vector } R0_Z_25_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_Z_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2373 \
    name R0_Z_26 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_Z_26 \
    op interface \
    ports { R0_Z_26_address0 { O 1 vector } R0_Z_26_ce0 { O 1 bit } R0_Z_26_we0 { O 1 bit } R0_Z_26_d0 { O 64 vector } R0_Z_26_q0 { I 64 vector } R0_Z_26_address1 { O 1 vector } R0_Z_26_ce1 { O 1 bit } R0_Z_26_we1 { O 1 bit } R0_Z_26_d1 { O 64 vector } R0_Z_26_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_Z_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2374 \
    name R0_Z_27 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_Z_27 \
    op interface \
    ports { R0_Z_27_address0 { O 1 vector } R0_Z_27_ce0 { O 1 bit } R0_Z_27_we0 { O 1 bit } R0_Z_27_d0 { O 64 vector } R0_Z_27_q0 { I 64 vector } R0_Z_27_address1 { O 1 vector } R0_Z_27_ce1 { O 1 bit } R0_Z_27_we1 { O 1 bit } R0_Z_27_d1 { O 64 vector } R0_Z_27_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_Z_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2375 \
    name R0_Z_28 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R0_Z_28 \
    op interface \
    ports { R0_Z_28_address0 { O 1 vector } R0_Z_28_ce0 { O 1 bit } R0_Z_28_we0 { O 1 bit } R0_Z_28_d0 { O 64 vector } R0_Z_28_q0 { I 64 vector } R0_Z_28_address1 { O 1 vector } R0_Z_28_ce1 { O 1 bit } R0_Z_28_we1 { O 1 bit } R0_Z_28_d1 { O 64 vector } R0_Z_28_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R0_Z_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2376 \
    name A24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24 \
    op interface \
    ports { A24_address0 { O 1 vector } A24_ce0 { O 1 bit } A24_q0 { I 64 vector } A24_address1 { O 1 vector } A24_ce1 { O 1 bit } A24_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2377 \
    name A24_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_22 \
    op interface \
    ports { A24_22_address0 { O 1 vector } A24_22_ce0 { O 1 bit } A24_22_q0 { I 64 vector } A24_22_address1 { O 1 vector } A24_22_ce1 { O 1 bit } A24_22_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2378 \
    name A24_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_23 \
    op interface \
    ports { A24_23_address0 { O 1 vector } A24_23_ce0 { O 1 bit } A24_23_q0 { I 64 vector } A24_23_address1 { O 1 vector } A24_23_ce1 { O 1 bit } A24_23_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2379 \
    name A24_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_24 \
    op interface \
    ports { A24_24_address0 { O 1 vector } A24_24_ce0 { O 1 bit } A24_24_q0 { I 64 vector } A24_24_address1 { O 1 vector } A24_24_ce1 { O 1 bit } A24_24_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2380 \
    name A24_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_25 \
    op interface \
    ports { A24_25_address0 { O 1 vector } A24_25_ce0 { O 1 bit } A24_25_q0 { I 64 vector } A24_25_address1 { O 1 vector } A24_25_ce1 { O 1 bit } A24_25_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2381 \
    name A24_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_26 \
    op interface \
    ports { A24_26_address0 { O 1 vector } A24_26_ce0 { O 1 bit } A24_26_q0 { I 64 vector } A24_26_address1 { O 1 vector } A24_26_ce1 { O 1 bit } A24_26_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2382 \
    name A24_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_27 \
    op interface \
    ports { A24_27_address0 { O 1 vector } A24_27_ce0 { O 1 bit } A24_27_q0 { I 64 vector } A24_27_address1 { O 1 vector } A24_27_ce1 { O 1 bit } A24_27_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2383 \
    name A24_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24_28 \
    op interface \
    ports { A24_28_address0 { O 1 vector } A24_28_ce0 { O 1 bit } A24_28_q0 { I 64 vector } A24_28_address1 { O 1 vector } A24_28_ce1 { O 1 bit } A24_28_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2384 \
    name R_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X \
    op interface \
    ports { R_X_address0 { O 4 vector } R_X_ce0 { O 1 bit } R_X_we0 { O 1 bit } R_X_d0 { O 64 vector } R_X_q0 { I 64 vector } R_X_address1 { O 4 vector } R_X_ce1 { O 1 bit } R_X_we1 { O 1 bit } R_X_d1 { O 64 vector } R_X_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2385 \
    name R_Z \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z \
    op interface \
    ports { R_Z_address0 { O 4 vector } R_Z_ce0 { O 1 bit } R_Z_we0 { O 1 bit } R_Z_d0 { O 64 vector } R_Z_q0 { I 64 vector } R_Z_address1 { O 4 vector } R_Z_ce1 { O 1 bit } R_Z_we1 { O 1 bit } R_Z_d1 { O 64 vector } R_Z_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2386 \
    name ephemeralsk_i \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename ephemeralsk_i \
    op interface \
    ports { ephemeralsk_i_address0 { O 5 vector } ephemeralsk_i_ce0 { O 1 bit } ephemeralsk_i_q0 { I 8 vector } ephemeralsk_i_address1 { O 5 vector } ephemeralsk_i_ce1 { O 1 bit } ephemeralsk_i_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ephemeralsk_i'"
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


