# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2mul503_mont_10_tt3_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 3120 \
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
    id 3121 \
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
    id 3122 \
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
    id 3123 \
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
    id 3124 \
    name c_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_2_0 \
    op interface \
    ports { c_2_0_address0 { O 1 vector } c_2_0_ce0 { O 1 bit } c_2_0_we0 { O 1 bit } c_2_0_d0 { O 64 vector } c_2_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3125 \
    name c_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_2_1 \
    op interface \
    ports { c_2_1_address0 { O 1 vector } c_2_1_ce0 { O 1 bit } c_2_1_we0 { O 1 bit } c_2_1_d0 { O 64 vector } c_2_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3126 \
    name c_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_3_0 \
    op interface \
    ports { c_3_0_address0 { O 1 vector } c_3_0_ce0 { O 1 bit } c_3_0_we0 { O 1 bit } c_3_0_d0 { O 64 vector } c_3_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3127 \
    name c_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_3_1 \
    op interface \
    ports { c_3_1_address0 { O 1 vector } c_3_1_ce0 { O 1 bit } c_3_1_we0 { O 1 bit } c_3_1_d0 { O 64 vector } c_3_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3128 \
    name c_4_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_4_0 \
    op interface \
    ports { c_4_0_address0 { O 1 vector } c_4_0_ce0 { O 1 bit } c_4_0_we0 { O 1 bit } c_4_0_d0 { O 64 vector } c_4_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3129 \
    name c_4_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_4_1 \
    op interface \
    ports { c_4_1_address0 { O 1 vector } c_4_1_ce0 { O 1 bit } c_4_1_we0 { O 1 bit } c_4_1_d0 { O 64 vector } c_4_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3130 \
    name c_5_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_5_0 \
    op interface \
    ports { c_5_0_address0 { O 1 vector } c_5_0_ce0 { O 1 bit } c_5_0_we0 { O 1 bit } c_5_0_d0 { O 64 vector } c_5_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3131 \
    name c_5_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_5_1 \
    op interface \
    ports { c_5_1_address0 { O 1 vector } c_5_1_ce0 { O 1 bit } c_5_1_we0 { O 1 bit } c_5_1_d0 { O 64 vector } c_5_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3132 \
    name c_6_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_6_0 \
    op interface \
    ports { c_6_0_address0 { O 1 vector } c_6_0_ce0 { O 1 bit } c_6_0_we0 { O 1 bit } c_6_0_d0 { O 64 vector } c_6_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3133 \
    name c_6_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_6_1 \
    op interface \
    ports { c_6_1_address0 { O 1 vector } c_6_1_ce0 { O 1 bit } c_6_1_we0 { O 1 bit } c_6_1_d0 { O 64 vector } c_6_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3134 \
    name c_7_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_7_0 \
    op interface \
    ports { c_7_0_address0 { O 1 vector } c_7_0_ce0 { O 1 bit } c_7_0_we0 { O 1 bit } c_7_0_d0 { O 64 vector } c_7_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3135 \
    name c_7_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_7_1 \
    op interface \
    ports { c_7_1_address0 { O 1 vector } c_7_1_ce0 { O 1 bit } c_7_1_we0 { O 1 bit } c_7_1_d0 { O 64 vector } c_7_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_7_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3088 \
    name a_0_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_0_0_0_val \
    op interface \
    ports { a_0_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3089 \
    name a_0_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_0_0_1_val \
    op interface \
    ports { a_0_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3090 \
    name a_1_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_1_0_0_val \
    op interface \
    ports { a_1_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3091 \
    name a_1_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_1_0_1_val \
    op interface \
    ports { a_1_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3092 \
    name a_2_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_2_0_0_val \
    op interface \
    ports { a_2_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3093 \
    name a_2_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_2_0_1_val \
    op interface \
    ports { a_2_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3094 \
    name a_3_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_3_0_0_val \
    op interface \
    ports { a_3_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3095 \
    name a_3_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_3_0_1_val \
    op interface \
    ports { a_3_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3096 \
    name a_4_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_4_0_0_val \
    op interface \
    ports { a_4_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3097 \
    name a_4_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_4_0_1_val \
    op interface \
    ports { a_4_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3098 \
    name a_5_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_5_0_0_val \
    op interface \
    ports { a_5_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3099 \
    name a_5_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_5_0_1_val \
    op interface \
    ports { a_5_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3100 \
    name a_6_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_6_0_0_val \
    op interface \
    ports { a_6_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3101 \
    name a_6_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_6_0_1_val \
    op interface \
    ports { a_6_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3102 \
    name a_7_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_7_0_0_val \
    op interface \
    ports { a_7_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3103 \
    name a_7_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_7_0_1_val \
    op interface \
    ports { a_7_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3104 \
    name b_0_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_0_0_0_val \
    op interface \
    ports { b_0_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3105 \
    name b_0_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_0_0_1_val \
    op interface \
    ports { b_0_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3106 \
    name b_1_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_1_0_0_val \
    op interface \
    ports { b_1_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3107 \
    name b_1_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_1_0_1_val \
    op interface \
    ports { b_1_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3108 \
    name b_2_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_2_0_0_val \
    op interface \
    ports { b_2_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3109 \
    name b_2_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_2_0_1_val \
    op interface \
    ports { b_2_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3110 \
    name b_3_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_3_0_0_val \
    op interface \
    ports { b_3_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3111 \
    name b_3_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_3_0_1_val \
    op interface \
    ports { b_3_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3112 \
    name b_4_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_4_0_0_val \
    op interface \
    ports { b_4_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3113 \
    name b_4_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_4_0_1_val \
    op interface \
    ports { b_4_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3114 \
    name b_5_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_5_0_0_val \
    op interface \
    ports { b_5_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3115 \
    name b_5_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_5_0_1_val \
    op interface \
    ports { b_5_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3116 \
    name b_6_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_6_0_0_val \
    op interface \
    ports { b_6_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3117 \
    name b_6_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_6_0_1_val \
    op interface \
    ports { b_6_0_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3118 \
    name b_7_0_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_7_0_0_val \
    op interface \
    ports { b_7_0_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3119 \
    name b_7_0_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_7_0_1_val \
    op interface \
    ports { b_7_0_1_val { I 64 vector } } \
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


