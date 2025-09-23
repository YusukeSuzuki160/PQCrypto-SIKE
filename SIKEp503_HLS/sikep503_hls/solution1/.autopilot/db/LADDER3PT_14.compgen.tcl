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
    id 7220 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7221 \
    name R_X_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_0_0 \
    op interface \
    ports { R_X_0_0_address0 { O 1 vector } R_X_0_0_ce0 { O 1 bit } R_X_0_0_we0 { O 1 bit } R_X_0_0_d0 { O 64 vector } R_X_0_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7222 \
    name R_X_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_0_1 \
    op interface \
    ports { R_X_0_1_address0 { O 1 vector } R_X_0_1_ce0 { O 1 bit } R_X_0_1_we0 { O 1 bit } R_X_0_1_d0 { O 64 vector } R_X_0_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7223 \
    name R_X_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_1_0 \
    op interface \
    ports { R_X_1_0_address0 { O 1 vector } R_X_1_0_ce0 { O 1 bit } R_X_1_0_we0 { O 1 bit } R_X_1_0_d0 { O 64 vector } R_X_1_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7224 \
    name R_X_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_1_1 \
    op interface \
    ports { R_X_1_1_address0 { O 1 vector } R_X_1_1_ce0 { O 1 bit } R_X_1_1_we0 { O 1 bit } R_X_1_1_d0 { O 64 vector } R_X_1_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7225 \
    name R_X_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_2_0 \
    op interface \
    ports { R_X_2_0_address0 { O 1 vector } R_X_2_0_ce0 { O 1 bit } R_X_2_0_we0 { O 1 bit } R_X_2_0_d0 { O 64 vector } R_X_2_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7226 \
    name R_X_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_2_1 \
    op interface \
    ports { R_X_2_1_address0 { O 1 vector } R_X_2_1_ce0 { O 1 bit } R_X_2_1_we0 { O 1 bit } R_X_2_1_d0 { O 64 vector } R_X_2_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7227 \
    name R_X_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_3_0 \
    op interface \
    ports { R_X_3_0_address0 { O 1 vector } R_X_3_0_ce0 { O 1 bit } R_X_3_0_we0 { O 1 bit } R_X_3_0_d0 { O 64 vector } R_X_3_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7228 \
    name R_X_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_3_1 \
    op interface \
    ports { R_X_3_1_address0 { O 1 vector } R_X_3_1_ce0 { O 1 bit } R_X_3_1_we0 { O 1 bit } R_X_3_1_d0 { O 64 vector } R_X_3_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7229 \
    name R_X_4_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_4_0 \
    op interface \
    ports { R_X_4_0_address0 { O 1 vector } R_X_4_0_ce0 { O 1 bit } R_X_4_0_we0 { O 1 bit } R_X_4_0_d0 { O 64 vector } R_X_4_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7230 \
    name R_X_4_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_4_1 \
    op interface \
    ports { R_X_4_1_address0 { O 1 vector } R_X_4_1_ce0 { O 1 bit } R_X_4_1_we0 { O 1 bit } R_X_4_1_d0 { O 64 vector } R_X_4_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7231 \
    name R_X_5_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_5_0 \
    op interface \
    ports { R_X_5_0_address0 { O 1 vector } R_X_5_0_ce0 { O 1 bit } R_X_5_0_we0 { O 1 bit } R_X_5_0_d0 { O 64 vector } R_X_5_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7232 \
    name R_X_5_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_5_1 \
    op interface \
    ports { R_X_5_1_address0 { O 1 vector } R_X_5_1_ce0 { O 1 bit } R_X_5_1_we0 { O 1 bit } R_X_5_1_d0 { O 64 vector } R_X_5_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7233 \
    name R_X_6_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_6_0 \
    op interface \
    ports { R_X_6_0_address0 { O 1 vector } R_X_6_0_ce0 { O 1 bit } R_X_6_0_we0 { O 1 bit } R_X_6_0_d0 { O 64 vector } R_X_6_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7234 \
    name R_X_6_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_6_1 \
    op interface \
    ports { R_X_6_1_address0 { O 1 vector } R_X_6_1_ce0 { O 1 bit } R_X_6_1_we0 { O 1 bit } R_X_6_1_d0 { O 64 vector } R_X_6_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7235 \
    name R_X_7_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_7_0 \
    op interface \
    ports { R_X_7_0_address0 { O 1 vector } R_X_7_0_ce0 { O 1 bit } R_X_7_0_we0 { O 1 bit } R_X_7_0_d0 { O 64 vector } R_X_7_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7236 \
    name R_X_7_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X_7_1 \
    op interface \
    ports { R_X_7_1_address0 { O 1 vector } R_X_7_1_ce0 { O 1 bit } R_X_7_1_we0 { O 1 bit } R_X_7_1_d0 { O 64 vector } R_X_7_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X_7_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7237 \
    name R_Z_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_0_0 \
    op interface \
    ports { R_Z_0_0_address0 { O 1 vector } R_Z_0_0_ce0 { O 1 bit } R_Z_0_0_we0 { O 1 bit } R_Z_0_0_d0 { O 64 vector } R_Z_0_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7238 \
    name R_Z_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_0_1 \
    op interface \
    ports { R_Z_0_1_address0 { O 1 vector } R_Z_0_1_ce0 { O 1 bit } R_Z_0_1_we0 { O 1 bit } R_Z_0_1_d0 { O 64 vector } R_Z_0_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7239 \
    name R_Z_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_1_0 \
    op interface \
    ports { R_Z_1_0_address0 { O 1 vector } R_Z_1_0_ce0 { O 1 bit } R_Z_1_0_we0 { O 1 bit } R_Z_1_0_d0 { O 64 vector } R_Z_1_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7240 \
    name R_Z_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_1_1 \
    op interface \
    ports { R_Z_1_1_address0 { O 1 vector } R_Z_1_1_ce0 { O 1 bit } R_Z_1_1_we0 { O 1 bit } R_Z_1_1_d0 { O 64 vector } R_Z_1_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7241 \
    name R_Z_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_2_0 \
    op interface \
    ports { R_Z_2_0_address0 { O 1 vector } R_Z_2_0_ce0 { O 1 bit } R_Z_2_0_we0 { O 1 bit } R_Z_2_0_d0 { O 64 vector } R_Z_2_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7242 \
    name R_Z_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_2_1 \
    op interface \
    ports { R_Z_2_1_address0 { O 1 vector } R_Z_2_1_ce0 { O 1 bit } R_Z_2_1_we0 { O 1 bit } R_Z_2_1_d0 { O 64 vector } R_Z_2_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7243 \
    name R_Z_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_3_0 \
    op interface \
    ports { R_Z_3_0_address0 { O 1 vector } R_Z_3_0_ce0 { O 1 bit } R_Z_3_0_we0 { O 1 bit } R_Z_3_0_d0 { O 64 vector } R_Z_3_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7244 \
    name R_Z_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_3_1 \
    op interface \
    ports { R_Z_3_1_address0 { O 1 vector } R_Z_3_1_ce0 { O 1 bit } R_Z_3_1_we0 { O 1 bit } R_Z_3_1_d0 { O 64 vector } R_Z_3_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7245 \
    name R_Z_4_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_4_0 \
    op interface \
    ports { R_Z_4_0_address0 { O 1 vector } R_Z_4_0_ce0 { O 1 bit } R_Z_4_0_we0 { O 1 bit } R_Z_4_0_d0 { O 64 vector } R_Z_4_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7246 \
    name R_Z_4_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_4_1 \
    op interface \
    ports { R_Z_4_1_address0 { O 1 vector } R_Z_4_1_ce0 { O 1 bit } R_Z_4_1_we0 { O 1 bit } R_Z_4_1_d0 { O 64 vector } R_Z_4_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7247 \
    name R_Z_5_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_5_0 \
    op interface \
    ports { R_Z_5_0_address0 { O 1 vector } R_Z_5_0_ce0 { O 1 bit } R_Z_5_0_we0 { O 1 bit } R_Z_5_0_d0 { O 64 vector } R_Z_5_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7248 \
    name R_Z_5_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_5_1 \
    op interface \
    ports { R_Z_5_1_address0 { O 1 vector } R_Z_5_1_ce0 { O 1 bit } R_Z_5_1_we0 { O 1 bit } R_Z_5_1_d0 { O 64 vector } R_Z_5_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7249 \
    name R_Z_6_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_6_0 \
    op interface \
    ports { R_Z_6_0_address0 { O 1 vector } R_Z_6_0_ce0 { O 1 bit } R_Z_6_0_we0 { O 1 bit } R_Z_6_0_d0 { O 64 vector } R_Z_6_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7250 \
    name R_Z_6_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_6_1 \
    op interface \
    ports { R_Z_6_1_address0 { O 1 vector } R_Z_6_1_ce0 { O 1 bit } R_Z_6_1_we0 { O 1 bit } R_Z_6_1_d0 { O 64 vector } R_Z_6_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7251 \
    name R_Z_7_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_7_0 \
    op interface \
    ports { R_Z_7_0_address0 { O 1 vector } R_Z_7_0_ce0 { O 1 bit } R_Z_7_0_we0 { O 1 bit } R_Z_7_0_d0 { O 64 vector } R_Z_7_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7252 \
    name R_Z_7_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z_7_1 \
    op interface \
    ports { R_Z_7_1_address0 { O 1 vector } R_Z_7_1_ce0 { O 1 bit } R_Z_7_1_we0 { O 1 bit } R_Z_7_1_d0 { O 64 vector } R_Z_7_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z_7_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7253 \
    name A_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_0 \
    op interface \
    ports { A_0_address0 { O 1 vector } A_0_ce0 { O 1 bit } A_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7254 \
    name A_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_1 \
    op interface \
    ports { A_1_address0 { O 1 vector } A_1_ce0 { O 1 bit } A_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7255 \
    name A_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_2 \
    op interface \
    ports { A_2_address0 { O 1 vector } A_2_ce0 { O 1 bit } A_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7256 \
    name A_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_3 \
    op interface \
    ports { A_3_address0 { O 1 vector } A_3_ce0 { O 1 bit } A_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7257 \
    name A_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_4 \
    op interface \
    ports { A_4_address0 { O 1 vector } A_4_ce0 { O 1 bit } A_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7258 \
    name A_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_5 \
    op interface \
    ports { A_5_address0 { O 1 vector } A_5_ce0 { O 1 bit } A_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7259 \
    name A_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_6 \
    op interface \
    ports { A_6_address0 { O 1 vector } A_6_ce0 { O 1 bit } A_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7260 \
    name A_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_7 \
    op interface \
    ports { A_7_address0 { O 1 vector } A_7_ce0 { O 1 bit } A_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7172 \
    name xP_0_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_0_0_0_val \
    op interface \
    ports { xP_0_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7173 \
    name xP_0_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_0_0_1_val \
    op interface \
    ports { xP_0_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7174 \
    name xP_1_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_1_0_0_val \
    op interface \
    ports { xP_1_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7175 \
    name xP_1_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_1_0_1_val \
    op interface \
    ports { xP_1_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7176 \
    name xP_2_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_2_0_0_val \
    op interface \
    ports { xP_2_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7177 \
    name xP_2_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_2_0_1_val \
    op interface \
    ports { xP_2_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7178 \
    name xP_3_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_3_0_0_val \
    op interface \
    ports { xP_3_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7179 \
    name xP_3_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_3_0_1_val \
    op interface \
    ports { xP_3_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7180 \
    name xP_4_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_4_0_0_val \
    op interface \
    ports { xP_4_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7181 \
    name xP_4_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_4_0_1_val \
    op interface \
    ports { xP_4_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7182 \
    name xP_5_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_5_0_0_val \
    op interface \
    ports { xP_5_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7183 \
    name xP_5_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_5_0_1_val \
    op interface \
    ports { xP_5_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7184 \
    name xP_6_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_6_0_0_val \
    op interface \
    ports { xP_6_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7185 \
    name xP_6_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_6_0_1_val \
    op interface \
    ports { xP_6_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7186 \
    name xP_7_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_7_0_0_val \
    op interface \
    ports { xP_7_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7187 \
    name xP_7_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xP_7_0_1_val \
    op interface \
    ports { xP_7_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7188 \
    name xQ_0_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_0_0_0_val \
    op interface \
    ports { xQ_0_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7189 \
    name xQ_0_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_0_0_1_val \
    op interface \
    ports { xQ_0_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7190 \
    name xQ_1_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_1_0_0_val \
    op interface \
    ports { xQ_1_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7191 \
    name xQ_1_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_1_0_1_val \
    op interface \
    ports { xQ_1_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7192 \
    name xQ_2_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_2_0_0_val \
    op interface \
    ports { xQ_2_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7193 \
    name xQ_2_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_2_0_1_val \
    op interface \
    ports { xQ_2_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7194 \
    name xQ_3_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_3_0_0_val \
    op interface \
    ports { xQ_3_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7195 \
    name xQ_3_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_3_0_1_val \
    op interface \
    ports { xQ_3_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7196 \
    name xQ_4_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_4_0_0_val \
    op interface \
    ports { xQ_4_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7197 \
    name xQ_4_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_4_0_1_val \
    op interface \
    ports { xQ_4_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7198 \
    name xQ_5_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_5_0_0_val \
    op interface \
    ports { xQ_5_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7199 \
    name xQ_5_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_5_0_1_val \
    op interface \
    ports { xQ_5_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7200 \
    name xQ_6_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_6_0_0_val \
    op interface \
    ports { xQ_6_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7201 \
    name xQ_6_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_6_0_1_val \
    op interface \
    ports { xQ_6_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7202 \
    name xQ_7_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_7_0_0_val \
    op interface \
    ports { xQ_7_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7203 \
    name xQ_7_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xQ_7_0_1_val \
    op interface \
    ports { xQ_7_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7204 \
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
    id 7205 \
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
    id 7206 \
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
    id 7207 \
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
    id 7208 \
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
    id 7209 \
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
    id 7210 \
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
    id 7211 \
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
    id 7212 \
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
    id 7213 \
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
    id 7214 \
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
    id 7215 \
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
    id 7216 \
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
    id 7217 \
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
    id 7218 \
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
    id 7219 \
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


