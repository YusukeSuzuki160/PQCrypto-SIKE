# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_107_1_strat_Alice_1_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_107_1_pts_index_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_107_1_pts_Z_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_107_1_t1_i_i_7_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 4261 \
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
    id 4262 \
    name R_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X \
    op interface \
    ports { R_X_address0 { O 4 vector } R_X_ce0 { O 1 bit } R_X_we0 { O 1 bit } R_X_d0 { O 64 vector } R_X_q0 { I 64 vector } R_X_address1 { O 4 vector } R_X_ce1 { O 1 bit } R_X_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4263 \
    name phiP_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X \
    op interface \
    ports { phiP_X_address0 { O 1 vector } phiP_X_ce0 { O 1 bit } phiP_X_we0 { O 1 bit } phiP_X_d0 { O 64 vector } phiP_X_q0 { I 64 vector } phiP_X_address1 { O 1 vector } phiP_X_ce1 { O 1 bit } phiP_X_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4264 \
    name phiP_X_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X_8 \
    op interface \
    ports { phiP_X_8_address0 { O 1 vector } phiP_X_8_ce0 { O 1 bit } phiP_X_8_we0 { O 1 bit } phiP_X_8_d0 { O 64 vector } phiP_X_8_q0 { I 64 vector } phiP_X_8_address1 { O 1 vector } phiP_X_8_ce1 { O 1 bit } phiP_X_8_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4265 \
    name phiP_X_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X_9 \
    op interface \
    ports { phiP_X_9_address0 { O 1 vector } phiP_X_9_ce0 { O 1 bit } phiP_X_9_we0 { O 1 bit } phiP_X_9_d0 { O 64 vector } phiP_X_9_q0 { I 64 vector } phiP_X_9_address1 { O 1 vector } phiP_X_9_ce1 { O 1 bit } phiP_X_9_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4266 \
    name phiP_X_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X_10 \
    op interface \
    ports { phiP_X_10_address0 { O 1 vector } phiP_X_10_ce0 { O 1 bit } phiP_X_10_we0 { O 1 bit } phiP_X_10_d0 { O 64 vector } phiP_X_10_q0 { I 64 vector } phiP_X_10_address1 { O 1 vector } phiP_X_10_ce1 { O 1 bit } phiP_X_10_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4267 \
    name phiP_X_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X_11 \
    op interface \
    ports { phiP_X_11_address0 { O 1 vector } phiP_X_11_ce0 { O 1 bit } phiP_X_11_we0 { O 1 bit } phiP_X_11_d0 { O 64 vector } phiP_X_11_q0 { I 64 vector } phiP_X_11_address1 { O 1 vector } phiP_X_11_ce1 { O 1 bit } phiP_X_11_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4268 \
    name phiP_X_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X_12 \
    op interface \
    ports { phiP_X_12_address0 { O 1 vector } phiP_X_12_ce0 { O 1 bit } phiP_X_12_we0 { O 1 bit } phiP_X_12_d0 { O 64 vector } phiP_X_12_q0 { I 64 vector } phiP_X_12_address1 { O 1 vector } phiP_X_12_ce1 { O 1 bit } phiP_X_12_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4269 \
    name phiP_X_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X_13 \
    op interface \
    ports { phiP_X_13_address0 { O 1 vector } phiP_X_13_ce0 { O 1 bit } phiP_X_13_we0 { O 1 bit } phiP_X_13_d0 { O 64 vector } phiP_X_13_q0 { I 64 vector } phiP_X_13_address1 { O 1 vector } phiP_X_13_ce1 { O 1 bit } phiP_X_13_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4270 \
    name phiP_X_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X_14 \
    op interface \
    ports { phiP_X_14_address0 { O 1 vector } phiP_X_14_ce0 { O 1 bit } phiP_X_14_we0 { O 1 bit } phiP_X_14_d0 { O 64 vector } phiP_X_14_q0 { I 64 vector } phiP_X_14_address1 { O 1 vector } phiP_X_14_ce1 { O 1 bit } phiP_X_14_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4271 \
    name phiP_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z_0 \
    op interface \
    ports { phiP_Z_0_address0 { O 1 vector } phiP_Z_0_ce0 { O 1 bit } phiP_Z_0_we0 { O 1 bit } phiP_Z_0_d0 { O 64 vector } phiP_Z_0_q0 { I 64 vector } phiP_Z_0_address1 { O 1 vector } phiP_Z_0_ce1 { O 1 bit } phiP_Z_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4272 \
    name phiP_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z_1 \
    op interface \
    ports { phiP_Z_1_address0 { O 1 vector } phiP_Z_1_ce0 { O 1 bit } phiP_Z_1_we0 { O 1 bit } phiP_Z_1_d0 { O 64 vector } phiP_Z_1_q0 { I 64 vector } phiP_Z_1_address1 { O 1 vector } phiP_Z_1_ce1 { O 1 bit } phiP_Z_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4273 \
    name phiP_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z_2 \
    op interface \
    ports { phiP_Z_2_address0 { O 1 vector } phiP_Z_2_ce0 { O 1 bit } phiP_Z_2_we0 { O 1 bit } phiP_Z_2_d0 { O 64 vector } phiP_Z_2_q0 { I 64 vector } phiP_Z_2_address1 { O 1 vector } phiP_Z_2_ce1 { O 1 bit } phiP_Z_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4274 \
    name phiP_Z_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z_3 \
    op interface \
    ports { phiP_Z_3_address0 { O 1 vector } phiP_Z_3_ce0 { O 1 bit } phiP_Z_3_we0 { O 1 bit } phiP_Z_3_d0 { O 64 vector } phiP_Z_3_q0 { I 64 vector } phiP_Z_3_address1 { O 1 vector } phiP_Z_3_ce1 { O 1 bit } phiP_Z_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4275 \
    name phiP_Z_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z_4 \
    op interface \
    ports { phiP_Z_4_address0 { O 1 vector } phiP_Z_4_ce0 { O 1 bit } phiP_Z_4_we0 { O 1 bit } phiP_Z_4_d0 { O 64 vector } phiP_Z_4_q0 { I 64 vector } phiP_Z_4_address1 { O 1 vector } phiP_Z_4_ce1 { O 1 bit } phiP_Z_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4276 \
    name phiP_Z_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z_5 \
    op interface \
    ports { phiP_Z_5_address0 { O 1 vector } phiP_Z_5_ce0 { O 1 bit } phiP_Z_5_we0 { O 1 bit } phiP_Z_5_d0 { O 64 vector } phiP_Z_5_q0 { I 64 vector } phiP_Z_5_address1 { O 1 vector } phiP_Z_5_ce1 { O 1 bit } phiP_Z_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4277 \
    name phiP_Z_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z_6 \
    op interface \
    ports { phiP_Z_6_address0 { O 1 vector } phiP_Z_6_ce0 { O 1 bit } phiP_Z_6_we0 { O 1 bit } phiP_Z_6_d0 { O 64 vector } phiP_Z_6_q0 { I 64 vector } phiP_Z_6_address1 { O 1 vector } phiP_Z_6_ce1 { O 1 bit } phiP_Z_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4278 \
    name phiP_Z_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z_7 \
    op interface \
    ports { phiP_Z_7_address0 { O 1 vector } phiP_Z_7_ce0 { O 1 bit } phiP_Z_7_we0 { O 1 bit } phiP_Z_7_d0 { O 64 vector } phiP_Z_7_q0 { I 64 vector } phiP_Z_7_address1 { O 1 vector } phiP_Z_7_ce1 { O 1 bit } phiP_Z_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4279 \
    name coeff \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename coeff \
    op interface \
    ports { coeff_address0 { O 6 vector } coeff_ce0 { O 1 bit } coeff_we0 { O 1 bit } coeff_d0 { O 64 vector } coeff_q0 { I 64 vector } coeff_address1 { O 6 vector } coeff_ce1 { O 1 bit } coeff_we1 { O 1 bit } coeff_d1 { O 64 vector } coeff_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4280 \
    name phiQ_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X \
    op interface \
    ports { phiQ_X_address0 { O 1 vector } phiQ_X_ce0 { O 1 bit } phiQ_X_we0 { O 1 bit } phiQ_X_d0 { O 64 vector } phiQ_X_q0 { I 64 vector } phiQ_X_address1 { O 1 vector } phiQ_X_ce1 { O 1 bit } phiQ_X_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4281 \
    name phiQ_X_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X_8 \
    op interface \
    ports { phiQ_X_8_address0 { O 1 vector } phiQ_X_8_ce0 { O 1 bit } phiQ_X_8_we0 { O 1 bit } phiQ_X_8_d0 { O 64 vector } phiQ_X_8_q0 { I 64 vector } phiQ_X_8_address1 { O 1 vector } phiQ_X_8_ce1 { O 1 bit } phiQ_X_8_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4282 \
    name phiQ_X_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X_9 \
    op interface \
    ports { phiQ_X_9_address0 { O 1 vector } phiQ_X_9_ce0 { O 1 bit } phiQ_X_9_we0 { O 1 bit } phiQ_X_9_d0 { O 64 vector } phiQ_X_9_q0 { I 64 vector } phiQ_X_9_address1 { O 1 vector } phiQ_X_9_ce1 { O 1 bit } phiQ_X_9_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4283 \
    name phiQ_X_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X_10 \
    op interface \
    ports { phiQ_X_10_address0 { O 1 vector } phiQ_X_10_ce0 { O 1 bit } phiQ_X_10_we0 { O 1 bit } phiQ_X_10_d0 { O 64 vector } phiQ_X_10_q0 { I 64 vector } phiQ_X_10_address1 { O 1 vector } phiQ_X_10_ce1 { O 1 bit } phiQ_X_10_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4284 \
    name phiQ_X_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X_11 \
    op interface \
    ports { phiQ_X_11_address0 { O 1 vector } phiQ_X_11_ce0 { O 1 bit } phiQ_X_11_we0 { O 1 bit } phiQ_X_11_d0 { O 64 vector } phiQ_X_11_q0 { I 64 vector } phiQ_X_11_address1 { O 1 vector } phiQ_X_11_ce1 { O 1 bit } phiQ_X_11_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4285 \
    name phiQ_X_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X_12 \
    op interface \
    ports { phiQ_X_12_address0 { O 1 vector } phiQ_X_12_ce0 { O 1 bit } phiQ_X_12_we0 { O 1 bit } phiQ_X_12_d0 { O 64 vector } phiQ_X_12_q0 { I 64 vector } phiQ_X_12_address1 { O 1 vector } phiQ_X_12_ce1 { O 1 bit } phiQ_X_12_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4286 \
    name phiQ_X_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X_13 \
    op interface \
    ports { phiQ_X_13_address0 { O 1 vector } phiQ_X_13_ce0 { O 1 bit } phiQ_X_13_we0 { O 1 bit } phiQ_X_13_d0 { O 64 vector } phiQ_X_13_q0 { I 64 vector } phiQ_X_13_address1 { O 1 vector } phiQ_X_13_ce1 { O 1 bit } phiQ_X_13_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4287 \
    name phiQ_X_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X_14 \
    op interface \
    ports { phiQ_X_14_address0 { O 1 vector } phiQ_X_14_ce0 { O 1 bit } phiQ_X_14_we0 { O 1 bit } phiQ_X_14_d0 { O 64 vector } phiQ_X_14_q0 { I 64 vector } phiQ_X_14_address1 { O 1 vector } phiQ_X_14_ce1 { O 1 bit } phiQ_X_14_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4288 \
    name phiQ_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_0 \
    op interface \
    ports { phiQ_Z_0_address0 { O 1 vector } phiQ_Z_0_ce0 { O 1 bit } phiQ_Z_0_we0 { O 1 bit } phiQ_Z_0_d0 { O 64 vector } phiQ_Z_0_q0 { I 64 vector } phiQ_Z_0_address1 { O 1 vector } phiQ_Z_0_ce1 { O 1 bit } phiQ_Z_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4289 \
    name phiQ_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_1 \
    op interface \
    ports { phiQ_Z_1_address0 { O 1 vector } phiQ_Z_1_ce0 { O 1 bit } phiQ_Z_1_we0 { O 1 bit } phiQ_Z_1_d0 { O 64 vector } phiQ_Z_1_q0 { I 64 vector } phiQ_Z_1_address1 { O 1 vector } phiQ_Z_1_ce1 { O 1 bit } phiQ_Z_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4290 \
    name phiQ_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_2 \
    op interface \
    ports { phiQ_Z_2_address0 { O 1 vector } phiQ_Z_2_ce0 { O 1 bit } phiQ_Z_2_we0 { O 1 bit } phiQ_Z_2_d0 { O 64 vector } phiQ_Z_2_q0 { I 64 vector } phiQ_Z_2_address1 { O 1 vector } phiQ_Z_2_ce1 { O 1 bit } phiQ_Z_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4291 \
    name phiQ_Z_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_3 \
    op interface \
    ports { phiQ_Z_3_address0 { O 1 vector } phiQ_Z_3_ce0 { O 1 bit } phiQ_Z_3_we0 { O 1 bit } phiQ_Z_3_d0 { O 64 vector } phiQ_Z_3_q0 { I 64 vector } phiQ_Z_3_address1 { O 1 vector } phiQ_Z_3_ce1 { O 1 bit } phiQ_Z_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4292 \
    name phiQ_Z_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_4 \
    op interface \
    ports { phiQ_Z_4_address0 { O 1 vector } phiQ_Z_4_ce0 { O 1 bit } phiQ_Z_4_we0 { O 1 bit } phiQ_Z_4_d0 { O 64 vector } phiQ_Z_4_q0 { I 64 vector } phiQ_Z_4_address1 { O 1 vector } phiQ_Z_4_ce1 { O 1 bit } phiQ_Z_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4293 \
    name phiQ_Z_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_5 \
    op interface \
    ports { phiQ_Z_5_address0 { O 1 vector } phiQ_Z_5_ce0 { O 1 bit } phiQ_Z_5_we0 { O 1 bit } phiQ_Z_5_d0 { O 64 vector } phiQ_Z_5_q0 { I 64 vector } phiQ_Z_5_address1 { O 1 vector } phiQ_Z_5_ce1 { O 1 bit } phiQ_Z_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4294 \
    name phiQ_Z_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_6 \
    op interface \
    ports { phiQ_Z_6_address0 { O 1 vector } phiQ_Z_6_ce0 { O 1 bit } phiQ_Z_6_we0 { O 1 bit } phiQ_Z_6_d0 { O 64 vector } phiQ_Z_6_q0 { I 64 vector } phiQ_Z_6_address1 { O 1 vector } phiQ_Z_6_ce1 { O 1 bit } phiQ_Z_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4295 \
    name phiQ_Z_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_7 \
    op interface \
    ports { phiQ_Z_7_address0 { O 1 vector } phiQ_Z_7_ce0 { O 1 bit } phiQ_Z_7_we0 { O 1 bit } phiQ_Z_7_d0 { O 64 vector } phiQ_Z_7_q0 { I 64 vector } phiQ_Z_7_address1 { O 1 vector } phiQ_Z_7_ce1 { O 1 bit } phiQ_Z_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4296 \
    name phiR_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X \
    op interface \
    ports { phiR_X_address0 { O 1 vector } phiR_X_ce0 { O 1 bit } phiR_X_we0 { O 1 bit } phiR_X_d0 { O 64 vector } phiR_X_q0 { I 64 vector } phiR_X_address1 { O 1 vector } phiR_X_ce1 { O 1 bit } phiR_X_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4297 \
    name phiR_X_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X_8 \
    op interface \
    ports { phiR_X_8_address0 { O 1 vector } phiR_X_8_ce0 { O 1 bit } phiR_X_8_we0 { O 1 bit } phiR_X_8_d0 { O 64 vector } phiR_X_8_q0 { I 64 vector } phiR_X_8_address1 { O 1 vector } phiR_X_8_ce1 { O 1 bit } phiR_X_8_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4298 \
    name phiR_X_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X_9 \
    op interface \
    ports { phiR_X_9_address0 { O 1 vector } phiR_X_9_ce0 { O 1 bit } phiR_X_9_we0 { O 1 bit } phiR_X_9_d0 { O 64 vector } phiR_X_9_q0 { I 64 vector } phiR_X_9_address1 { O 1 vector } phiR_X_9_ce1 { O 1 bit } phiR_X_9_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4299 \
    name phiR_X_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X_10 \
    op interface \
    ports { phiR_X_10_address0 { O 1 vector } phiR_X_10_ce0 { O 1 bit } phiR_X_10_we0 { O 1 bit } phiR_X_10_d0 { O 64 vector } phiR_X_10_q0 { I 64 vector } phiR_X_10_address1 { O 1 vector } phiR_X_10_ce1 { O 1 bit } phiR_X_10_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4300 \
    name phiR_X_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X_11 \
    op interface \
    ports { phiR_X_11_address0 { O 1 vector } phiR_X_11_ce0 { O 1 bit } phiR_X_11_we0 { O 1 bit } phiR_X_11_d0 { O 64 vector } phiR_X_11_q0 { I 64 vector } phiR_X_11_address1 { O 1 vector } phiR_X_11_ce1 { O 1 bit } phiR_X_11_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4301 \
    name phiR_X_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X_12 \
    op interface \
    ports { phiR_X_12_address0 { O 1 vector } phiR_X_12_ce0 { O 1 bit } phiR_X_12_we0 { O 1 bit } phiR_X_12_d0 { O 64 vector } phiR_X_12_q0 { I 64 vector } phiR_X_12_address1 { O 1 vector } phiR_X_12_ce1 { O 1 bit } phiR_X_12_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4302 \
    name phiR_X_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X_13 \
    op interface \
    ports { phiR_X_13_address0 { O 1 vector } phiR_X_13_ce0 { O 1 bit } phiR_X_13_we0 { O 1 bit } phiR_X_13_d0 { O 64 vector } phiR_X_13_q0 { I 64 vector } phiR_X_13_address1 { O 1 vector } phiR_X_13_ce1 { O 1 bit } phiR_X_13_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4303 \
    name phiR_X_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X_14 \
    op interface \
    ports { phiR_X_14_address0 { O 1 vector } phiR_X_14_ce0 { O 1 bit } phiR_X_14_we0 { O 1 bit } phiR_X_14_d0 { O 64 vector } phiR_X_14_q0 { I 64 vector } phiR_X_14_address1 { O 1 vector } phiR_X_14_ce1 { O 1 bit } phiR_X_14_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4304 \
    name phiR_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z_0 \
    op interface \
    ports { phiR_Z_0_address0 { O 1 vector } phiR_Z_0_ce0 { O 1 bit } phiR_Z_0_we0 { O 1 bit } phiR_Z_0_d0 { O 64 vector } phiR_Z_0_q0 { I 64 vector } phiR_Z_0_address1 { O 1 vector } phiR_Z_0_ce1 { O 1 bit } phiR_Z_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4305 \
    name phiR_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z_1 \
    op interface \
    ports { phiR_Z_1_address0 { O 1 vector } phiR_Z_1_ce0 { O 1 bit } phiR_Z_1_we0 { O 1 bit } phiR_Z_1_d0 { O 64 vector } phiR_Z_1_q0 { I 64 vector } phiR_Z_1_address1 { O 1 vector } phiR_Z_1_ce1 { O 1 bit } phiR_Z_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4306 \
    name phiR_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z_2 \
    op interface \
    ports { phiR_Z_2_address0 { O 1 vector } phiR_Z_2_ce0 { O 1 bit } phiR_Z_2_we0 { O 1 bit } phiR_Z_2_d0 { O 64 vector } phiR_Z_2_q0 { I 64 vector } phiR_Z_2_address1 { O 1 vector } phiR_Z_2_ce1 { O 1 bit } phiR_Z_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4307 \
    name phiR_Z_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z_3 \
    op interface \
    ports { phiR_Z_3_address0 { O 1 vector } phiR_Z_3_ce0 { O 1 bit } phiR_Z_3_we0 { O 1 bit } phiR_Z_3_d0 { O 64 vector } phiR_Z_3_q0 { I 64 vector } phiR_Z_3_address1 { O 1 vector } phiR_Z_3_ce1 { O 1 bit } phiR_Z_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4308 \
    name phiR_Z_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z_4 \
    op interface \
    ports { phiR_Z_4_address0 { O 1 vector } phiR_Z_4_ce0 { O 1 bit } phiR_Z_4_we0 { O 1 bit } phiR_Z_4_d0 { O 64 vector } phiR_Z_4_q0 { I 64 vector } phiR_Z_4_address1 { O 1 vector } phiR_Z_4_ce1 { O 1 bit } phiR_Z_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4309 \
    name phiR_Z_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z_5 \
    op interface \
    ports { phiR_Z_5_address0 { O 1 vector } phiR_Z_5_ce0 { O 1 bit } phiR_Z_5_we0 { O 1 bit } phiR_Z_5_d0 { O 64 vector } phiR_Z_5_q0 { I 64 vector } phiR_Z_5_address1 { O 1 vector } phiR_Z_5_ce1 { O 1 bit } phiR_Z_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4310 \
    name phiR_Z_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z_6 \
    op interface \
    ports { phiR_Z_6_address0 { O 1 vector } phiR_Z_6_ce0 { O 1 bit } phiR_Z_6_we0 { O 1 bit } phiR_Z_6_d0 { O 64 vector } phiR_Z_6_q0 { I 64 vector } phiR_Z_6_address1 { O 1 vector } phiR_Z_6_ce1 { O 1 bit } phiR_Z_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4311 \
    name phiR_Z_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z_7 \
    op interface \
    ports { phiR_Z_7_address0 { O 1 vector } phiR_Z_7_ce0 { O 1 bit } phiR_Z_7_we0 { O 1 bit } phiR_Z_7_d0 { O 64 vector } phiR_Z_7_q0 { I 64 vector } phiR_Z_7_address1 { O 1 vector } phiR_Z_7_ce1 { O 1 bit } phiR_Z_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4312 \
    name C24 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24 \
    op interface \
    ports { C24_address0 { O 1 vector } C24_ce0 { O 1 bit } C24_we0 { O 1 bit } C24_d0 { O 64 vector } C24_q0 { I 64 vector } C24_address1 { O 1 vector } C24_ce1 { O 1 bit } C24_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4313 \
    name C24_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24_1 \
    op interface \
    ports { C24_1_address0 { O 1 vector } C24_1_ce0 { O 1 bit } C24_1_we0 { O 1 bit } C24_1_d0 { O 64 vector } C24_1_q0 { I 64 vector } C24_1_address1 { O 1 vector } C24_1_ce1 { O 1 bit } C24_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4314 \
    name C24_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24_2 \
    op interface \
    ports { C24_2_address0 { O 1 vector } C24_2_ce0 { O 1 bit } C24_2_we0 { O 1 bit } C24_2_d0 { O 64 vector } C24_2_q0 { I 64 vector } C24_2_address1 { O 1 vector } C24_2_ce1 { O 1 bit } C24_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4315 \
    name C24_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24_3 \
    op interface \
    ports { C24_3_address0 { O 1 vector } C24_3_ce0 { O 1 bit } C24_3_we0 { O 1 bit } C24_3_d0 { O 64 vector } C24_3_q0 { I 64 vector } C24_3_address1 { O 1 vector } C24_3_ce1 { O 1 bit } C24_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4316 \
    name C24_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24_4 \
    op interface \
    ports { C24_4_address0 { O 1 vector } C24_4_ce0 { O 1 bit } C24_4_we0 { O 1 bit } C24_4_d0 { O 64 vector } C24_4_q0 { I 64 vector } C24_4_address1 { O 1 vector } C24_4_ce1 { O 1 bit } C24_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4317 \
    name C24_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24_5 \
    op interface \
    ports { C24_5_address0 { O 1 vector } C24_5_ce0 { O 1 bit } C24_5_we0 { O 1 bit } C24_5_d0 { O 64 vector } C24_5_q0 { I 64 vector } C24_5_address1 { O 1 vector } C24_5_ce1 { O 1 bit } C24_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4318 \
    name C24_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24_6 \
    op interface \
    ports { C24_6_address0 { O 1 vector } C24_6_ce0 { O 1 bit } C24_6_we0 { O 1 bit } C24_6_d0 { O 64 vector } C24_6_q0 { I 64 vector } C24_6_address1 { O 1 vector } C24_6_ce1 { O 1 bit } C24_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4319 \
    name C24_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24_7 \
    op interface \
    ports { C24_7_address0 { O 1 vector } C24_7_ce0 { O 1 bit } C24_7_we0 { O 1 bit } C24_7_d0 { O 64 vector } C24_7_q0 { I 64 vector } C24_7_address1 { O 1 vector } C24_7_ce1 { O 1 bit } C24_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4320 \
    name A24plus_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus_0 \
    op interface \
    ports { A24plus_0_address0 { O 1 vector } A24plus_0_ce0 { O 1 bit } A24plus_0_we0 { O 1 bit } A24plus_0_d0 { O 64 vector } A24plus_0_q0 { I 64 vector } A24plus_0_address1 { O 1 vector } A24plus_0_ce1 { O 1 bit } A24plus_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4321 \
    name A24plus_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus_1 \
    op interface \
    ports { A24plus_1_address0 { O 1 vector } A24plus_1_ce0 { O 1 bit } A24plus_1_we0 { O 1 bit } A24plus_1_d0 { O 64 vector } A24plus_1_q0 { I 64 vector } A24plus_1_address1 { O 1 vector } A24plus_1_ce1 { O 1 bit } A24plus_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4322 \
    name A24plus_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus_2 \
    op interface \
    ports { A24plus_2_address0 { O 1 vector } A24plus_2_ce0 { O 1 bit } A24plus_2_we0 { O 1 bit } A24plus_2_d0 { O 64 vector } A24plus_2_q0 { I 64 vector } A24plus_2_address1 { O 1 vector } A24plus_2_ce1 { O 1 bit } A24plus_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4323 \
    name A24plus_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus_3 \
    op interface \
    ports { A24plus_3_address0 { O 1 vector } A24plus_3_ce0 { O 1 bit } A24plus_3_we0 { O 1 bit } A24plus_3_d0 { O 64 vector } A24plus_3_q0 { I 64 vector } A24plus_3_address1 { O 1 vector } A24plus_3_ce1 { O 1 bit } A24plus_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4324 \
    name A24plus_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus_4 \
    op interface \
    ports { A24plus_4_address0 { O 1 vector } A24plus_4_ce0 { O 1 bit } A24plus_4_we0 { O 1 bit } A24plus_4_d0 { O 64 vector } A24plus_4_q0 { I 64 vector } A24plus_4_address1 { O 1 vector } A24plus_4_ce1 { O 1 bit } A24plus_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4325 \
    name A24plus_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus_5 \
    op interface \
    ports { A24plus_5_address0 { O 1 vector } A24plus_5_ce0 { O 1 bit } A24plus_5_we0 { O 1 bit } A24plus_5_d0 { O 64 vector } A24plus_5_q0 { I 64 vector } A24plus_5_address1 { O 1 vector } A24plus_5_ce1 { O 1 bit } A24plus_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4326 \
    name A24plus_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus_6 \
    op interface \
    ports { A24plus_6_address0 { O 1 vector } A24plus_6_ce0 { O 1 bit } A24plus_6_we0 { O 1 bit } A24plus_6_d0 { O 64 vector } A24plus_6_q0 { I 64 vector } A24plus_6_address1 { O 1 vector } A24plus_6_ce1 { O 1 bit } A24plus_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4327 \
    name A24plus_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus_7 \
    op interface \
    ports { A24plus_7_address0 { O 1 vector } A24plus_7_ce0 { O 1 bit } A24plus_7_we0 { O 1 bit } A24plus_7_d0 { O 64 vector } A24plus_7_q0 { I 64 vector } A24plus_7_address1 { O 1 vector } A24plus_7_ce1 { O 1 bit } A24plus_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus_7'"
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


