# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2mul503_mont_9_tt3_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 4659 \
    name c_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_0 \
    op interface \
    ports { c_0_0_address0 { O 3 vector } c_0_0_ce0 { O 1 bit } c_0_0_we0 { O 1 bit } c_0_0_d0 { O 64 vector } c_0_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4661 \
    name c_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_0_1 \
    op interface \
    ports { c_0_1_address0 { O 3 vector } c_0_1_ce0 { O 1 bit } c_0_1_we0 { O 1 bit } c_0_1_d0 { O 64 vector } c_0_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4663 \
    name c_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_0 \
    op interface \
    ports { c_1_0_address0 { O 3 vector } c_1_0_ce0 { O 1 bit } c_1_0_we0 { O 1 bit } c_1_0_d0 { O 64 vector } c_1_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4665 \
    name c_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_1_1 \
    op interface \
    ports { c_1_1_address0 { O 3 vector } c_1_1_ce0 { O 1 bit } c_1_1_we0 { O 1 bit } c_1_1_d0 { O 64 vector } c_1_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4667 \
    name c_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_2_0 \
    op interface \
    ports { c_2_0_address0 { O 3 vector } c_2_0_ce0 { O 1 bit } c_2_0_we0 { O 1 bit } c_2_0_d0 { O 64 vector } c_2_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4669 \
    name c_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_2_1 \
    op interface \
    ports { c_2_1_address0 { O 3 vector } c_2_1_ce0 { O 1 bit } c_2_1_we0 { O 1 bit } c_2_1_d0 { O 64 vector } c_2_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4671 \
    name c_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_3_0 \
    op interface \
    ports { c_3_0_address0 { O 3 vector } c_3_0_ce0 { O 1 bit } c_3_0_we0 { O 1 bit } c_3_0_d0 { O 64 vector } c_3_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4673 \
    name c_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_3_1 \
    op interface \
    ports { c_3_1_address0 { O 3 vector } c_3_1_ce0 { O 1 bit } c_3_1_we0 { O 1 bit } c_3_1_d0 { O 64 vector } c_3_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4675 \
    name c_4_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_4_0 \
    op interface \
    ports { c_4_0_address0 { O 3 vector } c_4_0_ce0 { O 1 bit } c_4_0_we0 { O 1 bit } c_4_0_d0 { O 64 vector } c_4_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4677 \
    name c_4_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_4_1 \
    op interface \
    ports { c_4_1_address0 { O 3 vector } c_4_1_ce0 { O 1 bit } c_4_1_we0 { O 1 bit } c_4_1_d0 { O 64 vector } c_4_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4679 \
    name c_5_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_5_0 \
    op interface \
    ports { c_5_0_address0 { O 3 vector } c_5_0_ce0 { O 1 bit } c_5_0_we0 { O 1 bit } c_5_0_d0 { O 64 vector } c_5_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4681 \
    name c_5_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_5_1 \
    op interface \
    ports { c_5_1_address0 { O 3 vector } c_5_1_ce0 { O 1 bit } c_5_1_we0 { O 1 bit } c_5_1_d0 { O 64 vector } c_5_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4683 \
    name c_6_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_6_0 \
    op interface \
    ports { c_6_0_address0 { O 3 vector } c_6_0_ce0 { O 1 bit } c_6_0_we0 { O 1 bit } c_6_0_d0 { O 64 vector } c_6_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4685 \
    name c_6_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_6_1 \
    op interface \
    ports { c_6_1_address0 { O 3 vector } c_6_1_ce0 { O 1 bit } c_6_1_we0 { O 1 bit } c_6_1_d0 { O 64 vector } c_6_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4687 \
    name c_7_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_7_0 \
    op interface \
    ports { c_7_0_address0 { O 3 vector } c_7_0_ce0 { O 1 bit } c_7_0_we0 { O 1 bit } c_7_0_d0 { O 64 vector } c_7_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4689 \
    name c_7_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c_7_1 \
    op interface \
    ports { c_7_1_address0 { O 3 vector } c_7_1_ce0 { O 1 bit } c_7_1_we0 { O 1 bit } c_7_1_d0 { O 64 vector } c_7_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c_7_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4627 \
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
    id 4628 \
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
    id 4629 \
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
    id 4630 \
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
    id 4631 \
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
    id 4632 \
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
    id 4633 \
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
    id 4634 \
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
    id 4635 \
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
    id 4636 \
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
    id 4637 \
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
    id 4638 \
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
    id 4639 \
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
    id 4640 \
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
    id 4641 \
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
    id 4642 \
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
    id 4643 \
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
    id 4644 \
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
    id 4645 \
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
    id 4646 \
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
    id 4647 \
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
    id 4648 \
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
    id 4649 \
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
    id 4650 \
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
    id 4651 \
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
    id 4652 \
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
    id 4653 \
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
    id 4654 \
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
    id 4655 \
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
    id 4656 \
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
    id 4657 \
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
    id 4658 \
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
    id 4660 \
    name c_0_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_0_0_offset \
    op interface \
    ports { c_0_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4662 \
    name c_0_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_0_1_offset \
    op interface \
    ports { c_0_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4664 \
    name c_1_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_1_0_offset \
    op interface \
    ports { c_1_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4666 \
    name c_1_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_1_1_offset \
    op interface \
    ports { c_1_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4668 \
    name c_2_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_2_0_offset \
    op interface \
    ports { c_2_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4670 \
    name c_2_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_2_1_offset \
    op interface \
    ports { c_2_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4672 \
    name c_3_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_3_0_offset \
    op interface \
    ports { c_3_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4674 \
    name c_3_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_3_1_offset \
    op interface \
    ports { c_3_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4676 \
    name c_4_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_4_0_offset \
    op interface \
    ports { c_4_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4678 \
    name c_4_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_4_1_offset \
    op interface \
    ports { c_4_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4680 \
    name c_5_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_5_0_offset \
    op interface \
    ports { c_5_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4682 \
    name c_5_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_5_1_offset \
    op interface \
    ports { c_5_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4684 \
    name c_6_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_6_0_offset \
    op interface \
    ports { c_6_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4686 \
    name c_6_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_6_1_offset \
    op interface \
    ports { c_6_1_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4688 \
    name c_7_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_7_0_offset \
    op interface \
    ports { c_7_0_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4690 \
    name c_7_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_7_1_offset \
    op interface \
    ports { c_7_1_offset { I 32 vector } } \
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


