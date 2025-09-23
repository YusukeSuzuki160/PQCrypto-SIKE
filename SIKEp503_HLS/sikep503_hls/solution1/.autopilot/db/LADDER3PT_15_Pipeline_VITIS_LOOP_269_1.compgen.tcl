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
    id 7218 \
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
    id 7219 \
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
    id 7220 \
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
    id 7221 \
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
    id 7222 \
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
    id 7223 \
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
    id 7224 \
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
    id 7225 \
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
    id 7226 \
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
    id 7227 \
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
    id 7228 \
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
    id 7229 \
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
    id 7230 \
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
    id 7231 \
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
    id 7232 \
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
    id 7233 \
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
    id 7236 \
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
    id 7237 \
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
    id 7238 \
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
    id 7239 \
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
    id 7240 \
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
    id 7241 \
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
    id 7242 \
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
    id 7243 \
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
    id 7244 \
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
    id 7245 \
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
    id 7248 \
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
    id 7249 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7186 \
    name R2_Z_7_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_7_load_1 \
    op interface \
    ports { R2_Z_7_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7187 \
    name R2_Z_6_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_6_load_1 \
    op interface \
    ports { R2_Z_6_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7188 \
    name R2_Z_5_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_5_load_1 \
    op interface \
    ports { R2_Z_5_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7189 \
    name R2_Z_4_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_4_load_1 \
    op interface \
    ports { R2_Z_4_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7190 \
    name R2_Z_3_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_3_load_1 \
    op interface \
    ports { R2_Z_3_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7191 \
    name R2_Z_2_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_2_load_1 \
    op interface \
    ports { R2_Z_2_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7192 \
    name R2_Z_1_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_1_load_1 \
    op interface \
    ports { R2_Z_1_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7193 \
    name R2_Z_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_load_1 \
    op interface \
    ports { R2_Z_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7194 \
    name R2_Z_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_7_load \
    op interface \
    ports { R2_Z_7_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7195 \
    name R2_Z_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_6_load \
    op interface \
    ports { R2_Z_6_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7196 \
    name R2_Z_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_5_load \
    op interface \
    ports { R2_Z_5_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7197 \
    name R2_Z_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_4_load \
    op interface \
    ports { R2_Z_4_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7198 \
    name R2_Z_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_3_load \
    op interface \
    ports { R2_Z_3_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7199 \
    name R2_Z_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_2_load \
    op interface \
    ports { R2_Z_2_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7200 \
    name R2_Z_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_1_load \
    op interface \
    ports { R2_Z_1_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7201 \
    name R2_Z_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_load \
    op interface \
    ports { R2_Z_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7202 \
    name R2_X_14_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_14_load_1 \
    op interface \
    ports { R2_X_14_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7203 \
    name R2_X_13_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_13_load_1 \
    op interface \
    ports { R2_X_13_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7204 \
    name R2_X_12_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_12_load_1 \
    op interface \
    ports { R2_X_12_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7205 \
    name R2_X_11_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_11_load_1 \
    op interface \
    ports { R2_X_11_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7206 \
    name R2_X_10_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_10_load_1 \
    op interface \
    ports { R2_X_10_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7207 \
    name R2_X_9_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_9_load_1 \
    op interface \
    ports { R2_X_9_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7208 \
    name R2_X_8_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_8_load_1 \
    op interface \
    ports { R2_X_8_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7209 \
    name R2_X_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_load_1 \
    op interface \
    ports { R2_X_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7210 \
    name R2_X_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_14_load \
    op interface \
    ports { R2_X_14_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7211 \
    name R2_X_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_13_load \
    op interface \
    ports { R2_X_13_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7212 \
    name R2_X_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_12_load \
    op interface \
    ports { R2_X_12_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7213 \
    name R2_X_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_11_load \
    op interface \
    ports { R2_X_11_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7214 \
    name R2_X_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_10_load \
    op interface \
    ports { R2_X_10_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7215 \
    name R2_X_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_9_load \
    op interface \
    ports { R2_X_9_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7216 \
    name R2_X_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_8_load \
    op interface \
    ports { R2_X_8_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7217 \
    name R2_X_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_load \
    op interface \
    ports { R2_X_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7250 \
    name sext_ln290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln290 \
    op interface \
    ports { sext_ln290 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7251 \
    name mux_case_788106_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_788106_out \
    op interface \
    ports { mux_case_788106_out { O 64 vector } mux_case_788106_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7252 \
    name mux_case_686104_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_686104_out \
    op interface \
    ports { mux_case_686104_out { O 64 vector } mux_case_686104_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7253 \
    name mux_case_584102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_584102_out \
    op interface \
    ports { mux_case_584102_out { O 64 vector } mux_case_584102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7254 \
    name mux_case_482100_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_482100_out \
    op interface \
    ports { mux_case_482100_out { O 64 vector } mux_case_482100_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7255 \
    name mux_case_38098_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_38098_out \
    op interface \
    ports { mux_case_38098_out { O 64 vector } mux_case_38098_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7256 \
    name mux_case_27896_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_27896_out \
    op interface \
    ports { mux_case_27896_out { O 64 vector } mux_case_27896_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7257 \
    name mux_case_17694_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_17694_out \
    op interface \
    ports { mux_case_17694_out { O 64 vector } mux_case_17694_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7258 \
    name mux_case_07492_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_07492_out \
    op interface \
    ports { mux_case_07492_out { O 64 vector } mux_case_07492_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7259 \
    name mux_case_77290_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_77290_out \
    op interface \
    ports { mux_case_77290_out { O 64 vector } mux_case_77290_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7260 \
    name mux_case_67088_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_67088_out \
    op interface \
    ports { mux_case_67088_out { O 64 vector } mux_case_67088_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7261 \
    name mux_case_56886_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_56886_out \
    op interface \
    ports { mux_case_56886_out { O 64 vector } mux_case_56886_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7262 \
    name mux_case_46684_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_46684_out \
    op interface \
    ports { mux_case_46684_out { O 64 vector } mux_case_46684_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7263 \
    name mux_case_36482_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_36482_out \
    op interface \
    ports { mux_case_36482_out { O 64 vector } mux_case_36482_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7264 \
    name mux_case_26280_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_26280_out \
    op interface \
    ports { mux_case_26280_out { O 64 vector } mux_case_26280_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7265 \
    name mux_case_16078_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_16078_out \
    op interface \
    ports { mux_case_16078_out { O 64 vector } mux_case_16078_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7266 \
    name mux_case_05876_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_05876_out \
    op interface \
    ports { mux_case_05876_out { O 64 vector } mux_case_05876_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7267 \
    name mux_case_75674_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_75674_out \
    op interface \
    ports { mux_case_75674_out { O 64 vector } mux_case_75674_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7268 \
    name mux_case_65472_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_65472_out \
    op interface \
    ports { mux_case_65472_out { O 64 vector } mux_case_65472_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7269 \
    name mux_case_55270_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_55270_out \
    op interface \
    ports { mux_case_55270_out { O 64 vector } mux_case_55270_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7270 \
    name mux_case_45068_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_45068_out \
    op interface \
    ports { mux_case_45068_out { O 64 vector } mux_case_45068_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7271 \
    name mux_case_34866_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_34866_out \
    op interface \
    ports { mux_case_34866_out { O 64 vector } mux_case_34866_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7272 \
    name mux_case_24664_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_24664_out \
    op interface \
    ports { mux_case_24664_out { O 64 vector } mux_case_24664_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7273 \
    name mux_case_14462_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_14462_out \
    op interface \
    ports { mux_case_14462_out { O 64 vector } mux_case_14462_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7274 \
    name mux_case_04260_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_04260_out \
    op interface \
    ports { mux_case_04260_out { O 64 vector } mux_case_04260_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7275 \
    name mux_case_758_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_758_out \
    op interface \
    ports { mux_case_758_out { O 64 vector } mux_case_758_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7276 \
    name mux_case_656_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_656_out \
    op interface \
    ports { mux_case_656_out { O 64 vector } mux_case_656_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7277 \
    name mux_case_554_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_554_out \
    op interface \
    ports { mux_case_554_out { O 64 vector } mux_case_554_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7278 \
    name mux_case_452_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_452_out \
    op interface \
    ports { mux_case_452_out { O 64 vector } mux_case_452_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7279 \
    name mux_case_350_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_350_out \
    op interface \
    ports { mux_case_350_out { O 64 vector } mux_case_350_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7280 \
    name mux_case_248_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_248_out \
    op interface \
    ports { mux_case_248_out { O 64 vector } mux_case_248_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7281 \
    name mux_case_146_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_146_out \
    op interface \
    ports { mux_case_146_out { O 64 vector } mux_case_146_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7282 \
    name mux_case_044_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_044_out \
    op interface \
    ports { mux_case_044_out { O 64 vector } mux_case_044_out_ap_vld { O 1 bit } } \
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
set InstName sikep503_kem_enc_hw_flow_control_loop_pipe_sequential_init_U
set CompName sikep503_kem_enc_hw_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix sikep503_kem_enc_hw_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


