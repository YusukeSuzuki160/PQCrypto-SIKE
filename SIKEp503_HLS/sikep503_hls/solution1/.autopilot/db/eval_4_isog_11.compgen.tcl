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
    id 5045 \
    name P_X_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_0_0 \
    op interface \
    ports { P_X_0_0_address0 { O 3 vector } P_X_0_0_ce0 { O 1 bit } P_X_0_0_we0 { O 1 bit } P_X_0_0_d0 { O 64 vector } P_X_0_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5047 \
    name P_X_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_0_1 \
    op interface \
    ports { P_X_0_1_address0 { O 3 vector } P_X_0_1_ce0 { O 1 bit } P_X_0_1_we0 { O 1 bit } P_X_0_1_d0 { O 64 vector } P_X_0_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5049 \
    name P_X_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_1_0 \
    op interface \
    ports { P_X_1_0_address0 { O 3 vector } P_X_1_0_ce0 { O 1 bit } P_X_1_0_we0 { O 1 bit } P_X_1_0_d0 { O 64 vector } P_X_1_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5051 \
    name P_X_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_1_1 \
    op interface \
    ports { P_X_1_1_address0 { O 3 vector } P_X_1_1_ce0 { O 1 bit } P_X_1_1_we0 { O 1 bit } P_X_1_1_d0 { O 64 vector } P_X_1_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5053 \
    name P_X_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_2_0 \
    op interface \
    ports { P_X_2_0_address0 { O 3 vector } P_X_2_0_ce0 { O 1 bit } P_X_2_0_we0 { O 1 bit } P_X_2_0_d0 { O 64 vector } P_X_2_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5055 \
    name P_X_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_2_1 \
    op interface \
    ports { P_X_2_1_address0 { O 3 vector } P_X_2_1_ce0 { O 1 bit } P_X_2_1_we0 { O 1 bit } P_X_2_1_d0 { O 64 vector } P_X_2_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5057 \
    name P_X_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_3_0 \
    op interface \
    ports { P_X_3_0_address0 { O 3 vector } P_X_3_0_ce0 { O 1 bit } P_X_3_0_we0 { O 1 bit } P_X_3_0_d0 { O 64 vector } P_X_3_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5059 \
    name P_X_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_3_1 \
    op interface \
    ports { P_X_3_1_address0 { O 3 vector } P_X_3_1_ce0 { O 1 bit } P_X_3_1_we0 { O 1 bit } P_X_3_1_d0 { O 64 vector } P_X_3_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5061 \
    name P_X_4_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_4_0 \
    op interface \
    ports { P_X_4_0_address0 { O 3 vector } P_X_4_0_ce0 { O 1 bit } P_X_4_0_we0 { O 1 bit } P_X_4_0_d0 { O 64 vector } P_X_4_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5063 \
    name P_X_4_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_4_1 \
    op interface \
    ports { P_X_4_1_address0 { O 3 vector } P_X_4_1_ce0 { O 1 bit } P_X_4_1_we0 { O 1 bit } P_X_4_1_d0 { O 64 vector } P_X_4_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5065 \
    name P_X_5_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_5_0 \
    op interface \
    ports { P_X_5_0_address0 { O 3 vector } P_X_5_0_ce0 { O 1 bit } P_X_5_0_we0 { O 1 bit } P_X_5_0_d0 { O 64 vector } P_X_5_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5067 \
    name P_X_5_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_5_1 \
    op interface \
    ports { P_X_5_1_address0 { O 3 vector } P_X_5_1_ce0 { O 1 bit } P_X_5_1_we0 { O 1 bit } P_X_5_1_d0 { O 64 vector } P_X_5_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5069 \
    name P_X_6_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_6_0 \
    op interface \
    ports { P_X_6_0_address0 { O 3 vector } P_X_6_0_ce0 { O 1 bit } P_X_6_0_we0 { O 1 bit } P_X_6_0_d0 { O 64 vector } P_X_6_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5071 \
    name P_X_6_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_6_1 \
    op interface \
    ports { P_X_6_1_address0 { O 3 vector } P_X_6_1_ce0 { O 1 bit } P_X_6_1_we0 { O 1 bit } P_X_6_1_d0 { O 64 vector } P_X_6_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5073 \
    name P_X_7_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_7_0 \
    op interface \
    ports { P_X_7_0_address0 { O 3 vector } P_X_7_0_ce0 { O 1 bit } P_X_7_0_we0 { O 1 bit } P_X_7_0_d0 { O 64 vector } P_X_7_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5075 \
    name P_X_7_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_X_7_1 \
    op interface \
    ports { P_X_7_1_address0 { O 3 vector } P_X_7_1_ce0 { O 1 bit } P_X_7_1_we0 { O 1 bit } P_X_7_1_d0 { O 64 vector } P_X_7_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_X_7_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5077 \
    name P_Z_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_0_0 \
    op interface \
    ports { P_Z_0_0_address0 { O 3 vector } P_Z_0_0_ce0 { O 1 bit } P_Z_0_0_we0 { O 1 bit } P_Z_0_0_d0 { O 64 vector } P_Z_0_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5079 \
    name P_Z_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_0_1 \
    op interface \
    ports { P_Z_0_1_address0 { O 3 vector } P_Z_0_1_ce0 { O 1 bit } P_Z_0_1_we0 { O 1 bit } P_Z_0_1_d0 { O 64 vector } P_Z_0_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5081 \
    name P_Z_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_1_0 \
    op interface \
    ports { P_Z_1_0_address0 { O 3 vector } P_Z_1_0_ce0 { O 1 bit } P_Z_1_0_we0 { O 1 bit } P_Z_1_0_d0 { O 64 vector } P_Z_1_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5083 \
    name P_Z_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_1_1 \
    op interface \
    ports { P_Z_1_1_address0 { O 3 vector } P_Z_1_1_ce0 { O 1 bit } P_Z_1_1_we0 { O 1 bit } P_Z_1_1_d0 { O 64 vector } P_Z_1_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5085 \
    name P_Z_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_2_0 \
    op interface \
    ports { P_Z_2_0_address0 { O 3 vector } P_Z_2_0_ce0 { O 1 bit } P_Z_2_0_we0 { O 1 bit } P_Z_2_0_d0 { O 64 vector } P_Z_2_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5087 \
    name P_Z_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_2_1 \
    op interface \
    ports { P_Z_2_1_address0 { O 3 vector } P_Z_2_1_ce0 { O 1 bit } P_Z_2_1_we0 { O 1 bit } P_Z_2_1_d0 { O 64 vector } P_Z_2_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5089 \
    name P_Z_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_3_0 \
    op interface \
    ports { P_Z_3_0_address0 { O 3 vector } P_Z_3_0_ce0 { O 1 bit } P_Z_3_0_we0 { O 1 bit } P_Z_3_0_d0 { O 64 vector } P_Z_3_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5091 \
    name P_Z_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_3_1 \
    op interface \
    ports { P_Z_3_1_address0 { O 3 vector } P_Z_3_1_ce0 { O 1 bit } P_Z_3_1_we0 { O 1 bit } P_Z_3_1_d0 { O 64 vector } P_Z_3_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5093 \
    name P_Z_4_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_4_0 \
    op interface \
    ports { P_Z_4_0_address0 { O 3 vector } P_Z_4_0_ce0 { O 1 bit } P_Z_4_0_we0 { O 1 bit } P_Z_4_0_d0 { O 64 vector } P_Z_4_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5095 \
    name P_Z_4_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_4_1 \
    op interface \
    ports { P_Z_4_1_address0 { O 3 vector } P_Z_4_1_ce0 { O 1 bit } P_Z_4_1_we0 { O 1 bit } P_Z_4_1_d0 { O 64 vector } P_Z_4_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5097 \
    name P_Z_5_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_5_0 \
    op interface \
    ports { P_Z_5_0_address0 { O 3 vector } P_Z_5_0_ce0 { O 1 bit } P_Z_5_0_we0 { O 1 bit } P_Z_5_0_d0 { O 64 vector } P_Z_5_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5099 \
    name P_Z_5_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_5_1 \
    op interface \
    ports { P_Z_5_1_address0 { O 3 vector } P_Z_5_1_ce0 { O 1 bit } P_Z_5_1_we0 { O 1 bit } P_Z_5_1_d0 { O 64 vector } P_Z_5_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5101 \
    name P_Z_6_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_6_0 \
    op interface \
    ports { P_Z_6_0_address0 { O 3 vector } P_Z_6_0_ce0 { O 1 bit } P_Z_6_0_we0 { O 1 bit } P_Z_6_0_d0 { O 64 vector } P_Z_6_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5103 \
    name P_Z_6_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_6_1 \
    op interface \
    ports { P_Z_6_1_address0 { O 3 vector } P_Z_6_1_ce0 { O 1 bit } P_Z_6_1_we0 { O 1 bit } P_Z_6_1_d0 { O 64 vector } P_Z_6_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5105 \
    name P_Z_7_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_7_0 \
    op interface \
    ports { P_Z_7_0_address0 { O 3 vector } P_Z_7_0_ce0 { O 1 bit } P_Z_7_0_we0 { O 1 bit } P_Z_7_0_d0 { O 64 vector } P_Z_7_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5107 \
    name P_Z_7_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename P_Z_7_1 \
    op interface \
    ports { P_Z_7_1_address0 { O 3 vector } P_Z_7_1_ce0 { O 1 bit } P_Z_7_1_we0 { O 1 bit } P_Z_7_1_d0 { O 64 vector } P_Z_7_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'P_Z_7_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5109 \
    name coeff_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename coeff_0 \
    op interface \
    ports { coeff_0_address0 { O 3 vector } coeff_0_ce0 { O 1 bit } coeff_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5110 \
    name coeff_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename coeff_1 \
    op interface \
    ports { coeff_1_address0 { O 3 vector } coeff_1_ce0 { O 1 bit } coeff_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5111 \
    name coeff_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename coeff_2 \
    op interface \
    ports { coeff_2_address0 { O 3 vector } coeff_2_ce0 { O 1 bit } coeff_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5112 \
    name coeff_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename coeff_3 \
    op interface \
    ports { coeff_3_address0 { O 3 vector } coeff_3_ce0 { O 1 bit } coeff_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5113 \
    name coeff_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename coeff_4 \
    op interface \
    ports { coeff_4_address0 { O 3 vector } coeff_4_ce0 { O 1 bit } coeff_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5114 \
    name coeff_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename coeff_5 \
    op interface \
    ports { coeff_5_address0 { O 3 vector } coeff_5_ce0 { O 1 bit } coeff_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5115 \
    name coeff_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename coeff_6 \
    op interface \
    ports { coeff_6_address0 { O 3 vector } coeff_6_ce0 { O 1 bit } coeff_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5116 \
    name coeff_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename coeff_7 \
    op interface \
    ports { coeff_7_address0 { O 3 vector } coeff_7_ce0 { O 1 bit } coeff_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5046 \
    name P_X_0_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_0_0_offset \
    op interface \
    ports { P_X_0_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5048 \
    name P_X_0_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_0_1_offset \
    op interface \
    ports { P_X_0_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5050 \
    name P_X_1_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_1_0_offset \
    op interface \
    ports { P_X_1_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5052 \
    name P_X_1_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_1_1_offset \
    op interface \
    ports { P_X_1_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5054 \
    name P_X_2_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_2_0_offset \
    op interface \
    ports { P_X_2_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5056 \
    name P_X_2_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_2_1_offset \
    op interface \
    ports { P_X_2_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5058 \
    name P_X_3_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_3_0_offset \
    op interface \
    ports { P_X_3_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5060 \
    name P_X_3_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_3_1_offset \
    op interface \
    ports { P_X_3_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5062 \
    name P_X_4_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_4_0_offset \
    op interface \
    ports { P_X_4_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5064 \
    name P_X_4_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_4_1_offset \
    op interface \
    ports { P_X_4_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5066 \
    name P_X_5_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_5_0_offset \
    op interface \
    ports { P_X_5_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5068 \
    name P_X_5_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_5_1_offset \
    op interface \
    ports { P_X_5_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5070 \
    name P_X_6_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_6_0_offset \
    op interface \
    ports { P_X_6_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5072 \
    name P_X_6_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_6_1_offset \
    op interface \
    ports { P_X_6_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5074 \
    name P_X_7_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_7_0_offset \
    op interface \
    ports { P_X_7_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5076 \
    name P_X_7_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_X_7_1_offset \
    op interface \
    ports { P_X_7_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5078 \
    name P_Z_0_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_0_0_offset \
    op interface \
    ports { P_Z_0_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5080 \
    name P_Z_0_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_0_1_offset \
    op interface \
    ports { P_Z_0_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5082 \
    name P_Z_1_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_1_0_offset \
    op interface \
    ports { P_Z_1_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5084 \
    name P_Z_1_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_1_1_offset \
    op interface \
    ports { P_Z_1_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5086 \
    name P_Z_2_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_2_0_offset \
    op interface \
    ports { P_Z_2_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5088 \
    name P_Z_2_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_2_1_offset \
    op interface \
    ports { P_Z_2_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5090 \
    name P_Z_3_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_3_0_offset \
    op interface \
    ports { P_Z_3_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5092 \
    name P_Z_3_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_3_1_offset \
    op interface \
    ports { P_Z_3_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5094 \
    name P_Z_4_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_4_0_offset \
    op interface \
    ports { P_Z_4_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5096 \
    name P_Z_4_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_4_1_offset \
    op interface \
    ports { P_Z_4_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5098 \
    name P_Z_5_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_5_0_offset \
    op interface \
    ports { P_Z_5_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5100 \
    name P_Z_5_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_5_1_offset \
    op interface \
    ports { P_Z_5_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5102 \
    name P_Z_6_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_6_0_offset \
    op interface \
    ports { P_Z_6_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5104 \
    name P_Z_6_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_6_1_offset \
    op interface \
    ports { P_Z_6_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5106 \
    name P_Z_7_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_7_0_offset \
    op interface \
    ports { P_Z_7_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5108 \
    name P_Z_7_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_P_Z_7_1_offset \
    op interface \
    ports { P_Z_7_1_offset { I 32 vector } } \
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


