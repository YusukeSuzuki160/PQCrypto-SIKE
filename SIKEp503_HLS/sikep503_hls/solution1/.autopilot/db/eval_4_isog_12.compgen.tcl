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
    id 5107 \
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
    id 5109 \
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
    id 5111 \
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
    id 5113 \
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
    id 5115 \
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
    id 5117 \
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
    id 5119 \
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
    id 5121 \
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
    id 5123 \
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
    id 5125 \
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
    id 5127 \
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
    id 5129 \
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
    id 5131 \
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
    id 5133 \
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
    id 5135 \
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
    id 5137 \
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
    id 5139 \
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
    id 5141 \
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
    id 5143 \
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
    id 5145 \
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
    id 5147 \
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
    id 5149 \
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
    id 5151 \
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
    id 5153 \
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
    id 5155 \
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
    id 5157 \
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
    id 5159 \
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
    id 5161 \
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
    id 5163 \
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
    id 5165 \
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
    id 5167 \
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
    id 5169 \
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
    id 5171 \
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
    id 5172 \
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
    id 5173 \
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
    id 5174 \
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
    id 5175 \
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
    id 5176 \
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
    id 5177 \
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
    id 5178 \
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
    id 5108 \
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
    id 5110 \
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
    id 5112 \
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
    id 5114 \
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
    id 5116 \
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
    id 5118 \
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
    id 5120 \
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
    id 5122 \
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
    id 5124 \
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
    id 5126 \
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
    id 5128 \
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
    id 5130 \
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
    id 5132 \
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
    id 5134 \
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
    id 5136 \
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
    id 5138 \
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
    id 5140 \
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
    id 5142 \
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
    id 5144 \
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
    id 5146 \
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
    id 5148 \
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
    id 5150 \
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
    id 5152 \
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
    id 5154 \
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
    id 5156 \
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
    id 5158 \
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
    id 5160 \
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
    id 5162 \
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
    id 5164 \
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
    id 5166 \
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
    id 5168 \
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
    id 5170 \
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


