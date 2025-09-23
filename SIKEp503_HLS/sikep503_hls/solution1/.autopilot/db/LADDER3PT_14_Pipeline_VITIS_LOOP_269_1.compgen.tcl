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
    id 7107 \
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
    id 7108 \
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
    id 7109 \
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
    id 7110 \
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
    id 7111 \
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
    id 7112 \
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
    id 7113 \
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
    id 7114 \
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
    id 7115 \
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
    id 7116 \
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
    id 7117 \
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
    id 7118 \
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
    id 7119 \
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
    id 7120 \
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
    id 7121 \
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
    id 7122 \
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
    id 7123 \
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
    id 7124 \
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
    id 7125 \
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
    id 7126 \
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
    id 7127 \
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
    id 7128 \
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
    id 7129 \
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
    id 7130 \
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
    id 7131 \
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
    id 7132 \
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
    id 7133 \
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
    id 7134 \
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
    id 7135 \
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
    id 7136 \
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
    id 7137 \
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
    id 7138 \
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
    id 7075 \
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
    id 7076 \
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
    id 7077 \
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
    id 7078 \
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
    id 7079 \
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
    id 7080 \
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
    id 7081 \
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
    id 7082 \
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
    id 7083 \
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
    id 7084 \
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
    id 7085 \
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
    id 7086 \
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
    id 7087 \
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
    id 7088 \
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
    id 7089 \
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
    id 7090 \
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
    id 7091 \
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
    id 7092 \
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
    id 7093 \
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
    id 7094 \
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
    id 7095 \
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
    id 7096 \
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
    id 7097 \
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
    id 7098 \
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
    id 7099 \
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
    id 7100 \
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
    id 7101 \
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
    id 7102 \
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
    id 7103 \
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
    id 7104 \
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
    id 7105 \
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
    id 7106 \
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
    id 7139 \
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
    id 7140 \
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
    id 7141 \
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
    id 7142 \
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
    id 7143 \
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
    id 7144 \
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
    id 7145 \
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
    id 7146 \
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
    id 7147 \
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
    id 7148 \
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
    id 7149 \
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
    id 7150 \
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
    id 7151 \
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
    id 7152 \
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
    id 7153 \
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
    id 7154 \
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
    id 7155 \
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
    id 7156 \
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
    id 7157 \
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
    id 7158 \
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
    id 7159 \
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
    id 7160 \
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
    id 7161 \
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
    id 7162 \
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
    id 7163 \
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
    id 7164 \
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
    id 7165 \
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
    id 7166 \
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
    id 7167 \
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
    id 7168 \
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
    id 7169 \
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
    id 7170 \
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
    id 7171 \
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


