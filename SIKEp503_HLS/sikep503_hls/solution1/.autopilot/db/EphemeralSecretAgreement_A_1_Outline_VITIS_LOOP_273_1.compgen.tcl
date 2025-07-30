# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_EphemeralSecretAgreement_A_1_Outline_VITIS_LOOP_273_1_pts_X_7_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 6865 \
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
    id 6866 \
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
    id 6867 \
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
    id 6868 \
    name C24_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24_0 \
    op interface \
    ports { C24_0_address0 { O 1 vector } C24_0_ce0 { O 1 bit } C24_0_we0 { O 1 bit } C24_0_d0 { O 64 vector } C24_0_q0 { I 64 vector } C24_0_address1 { O 1 vector } C24_0_ce1 { O 1 bit } C24_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6869 \
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
    id 6870 \
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
    id 6871 \
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
    id 6872 \
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
    id 6873 \
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
    id 6874 \
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
    id 6875 \
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
    id 6876 \
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
    id 6877 \
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
    id 6878 \
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
    id 6879 \
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
    id 6880 \
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
    id 6881 \
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
    id 6882 \
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
    id 6883 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6884 \
    name t0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0 \
    op interface \
    ports { t0_address0 { O 1 vector } t0_ce0 { O 1 bit } t0_we0 { O 1 bit } t0_d0 { O 64 vector } t0_q0 { I 64 vector } t0_address1 { O 1 vector } t0_ce1 { O 1 bit } t0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6885 \
    name t0_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_8 \
    op interface \
    ports { t0_8_address0 { O 1 vector } t0_8_ce0 { O 1 bit } t0_8_we0 { O 1 bit } t0_8_d0 { O 64 vector } t0_8_q0 { I 64 vector } t0_8_address1 { O 1 vector } t0_8_ce1 { O 1 bit } t0_8_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6886 \
    name t0_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_9 \
    op interface \
    ports { t0_9_address0 { O 1 vector } t0_9_ce0 { O 1 bit } t0_9_we0 { O 1 bit } t0_9_d0 { O 64 vector } t0_9_q0 { I 64 vector } t0_9_address1 { O 1 vector } t0_9_ce1 { O 1 bit } t0_9_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6887 \
    name t0_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_10 \
    op interface \
    ports { t0_10_address0 { O 1 vector } t0_10_ce0 { O 1 bit } t0_10_we0 { O 1 bit } t0_10_d0 { O 64 vector } t0_10_q0 { I 64 vector } t0_10_address1 { O 1 vector } t0_10_ce1 { O 1 bit } t0_10_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6888 \
    name t0_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_11 \
    op interface \
    ports { t0_11_address0 { O 1 vector } t0_11_ce0 { O 1 bit } t0_11_we0 { O 1 bit } t0_11_d0 { O 64 vector } t0_11_q0 { I 64 vector } t0_11_address1 { O 1 vector } t0_11_ce1 { O 1 bit } t0_11_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6889 \
    name t0_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_12 \
    op interface \
    ports { t0_12_address0 { O 1 vector } t0_12_ce0 { O 1 bit } t0_12_we0 { O 1 bit } t0_12_d0 { O 64 vector } t0_12_q0 { I 64 vector } t0_12_address1 { O 1 vector } t0_12_ce1 { O 1 bit } t0_12_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6890 \
    name t0_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_13 \
    op interface \
    ports { t0_13_address0 { O 1 vector } t0_13_ce0 { O 1 bit } t0_13_we0 { O 1 bit } t0_13_d0 { O 64 vector } t0_13_q0 { I 64 vector } t0_13_address1 { O 1 vector } t0_13_ce1 { O 1 bit } t0_13_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6891 \
    name t0_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_14 \
    op interface \
    ports { t0_14_address0 { O 1 vector } t0_14_ce0 { O 1 bit } t0_14_we0 { O 1 bit } t0_14_d0 { O 64 vector } t0_14_q0 { I 64 vector } t0_14_address1 { O 1 vector } t0_14_ce1 { O 1 bit } t0_14_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_14'"
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


