# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_141_1_pts_index_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_141_1_pts_Z_RAM_1P_AUTO_1R1W BINDTYPE {storage} TYPE {ram_1p} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 880 \
    name R_Z \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z \
    op interface \
    ports { R_Z_address0 { O 4 vector } R_Z_ce0 { O 1 bit } R_Z_we0 { O 1 bit } R_Z_d0 { O 64 vector } R_Z_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 881 \
    name R_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X \
    op interface \
    ports { R_X_address0 { O 4 vector } R_X_ce0 { O 1 bit } R_X_we0 { O 1 bit } R_X_d0 { O 64 vector } R_X_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 882 \
    name phiP_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X \
    op interface \
    ports { phiP_X_address0 { O 3 vector } phiP_X_ce0 { O 1 bit } phiP_X_we0 { O 1 bit } phiP_X_d0 { O 64 vector } phiP_X_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 883 \
    name phiP_X_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_X_1 \
    op interface \
    ports { phiP_X_1_address0 { O 3 vector } phiP_X_1_ce0 { O 1 bit } phiP_X_1_we0 { O 1 bit } phiP_X_1_d0 { O 64 vector } phiP_X_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_X_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 884 \
    name phiP_Z \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z \
    op interface \
    ports { phiP_Z_address0 { O 3 vector } phiP_Z_ce0 { O 1 bit } phiP_Z_we0 { O 1 bit } phiP_Z_d0 { O 64 vector } phiP_Z_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 885 \
    name phiP_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiP_Z_2 \
    op interface \
    ports { phiP_Z_2_address0 { O 3 vector } phiP_Z_2_ce0 { O 1 bit } phiP_Z_2_we0 { O 1 bit } phiP_Z_2_d0 { O 64 vector } phiP_Z_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiP_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 886 \
    name phiQ_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X \
    op interface \
    ports { phiQ_X_address0 { O 3 vector } phiQ_X_ce0 { O 1 bit } phiQ_X_we0 { O 1 bit } phiQ_X_d0 { O 64 vector } phiQ_X_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 887 \
    name phiQ_X_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_X_1 \
    op interface \
    ports { phiQ_X_1_address0 { O 3 vector } phiQ_X_1_ce0 { O 1 bit } phiQ_X_1_we0 { O 1 bit } phiQ_X_1_d0 { O 64 vector } phiQ_X_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_X_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 888 \
    name phiQ_Z \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z \
    op interface \
    ports { phiQ_Z_address0 { O 3 vector } phiQ_Z_ce0 { O 1 bit } phiQ_Z_we0 { O 1 bit } phiQ_Z_d0 { O 64 vector } phiQ_Z_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 889 \
    name phiQ_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiQ_Z_1 \
    op interface \
    ports { phiQ_Z_1_address0 { O 3 vector } phiQ_Z_1_ce0 { O 1 bit } phiQ_Z_1_we0 { O 1 bit } phiQ_Z_1_d0 { O 64 vector } phiQ_Z_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiQ_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 890 \
    name phiR_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X \
    op interface \
    ports { phiR_X_address0 { O 3 vector } phiR_X_ce0 { O 1 bit } phiR_X_we0 { O 1 bit } phiR_X_d0 { O 64 vector } phiR_X_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 891 \
    name phiR_X_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_X_1 \
    op interface \
    ports { phiR_X_1_address0 { O 3 vector } phiR_X_1_ce0 { O 1 bit } phiR_X_1_we0 { O 1 bit } phiR_X_1_d0 { O 64 vector } phiR_X_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_X_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 892 \
    name phiR_Z \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z \
    op interface \
    ports { phiR_Z_address0 { O 3 vector } phiR_Z_ce0 { O 1 bit } phiR_Z_we0 { O 1 bit } phiR_Z_d0 { O 64 vector } phiR_Z_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 893 \
    name phiR_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename phiR_Z_1 \
    op interface \
    ports { phiR_Z_1_address0 { O 3 vector } phiR_Z_1_ce0 { O 1 bit } phiR_Z_1_we0 { O 1 bit } phiR_Z_1_d0 { O 64 vector } phiR_Z_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'phiR_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 894 \
    name coeff \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename coeff \
    op interface \
    ports { coeff_address0 { O 6 vector } coeff_ce0 { O 1 bit } coeff_we0 { O 1 bit } coeff_d0 { O 64 vector } coeff_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'coeff'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 895 \
    name C24 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24 \
    op interface \
    ports { C24_address0 { O 3 vector } C24_ce0 { O 1 bit } C24_we0 { O 1 bit } C24_d0 { O 64 vector } C24_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 896 \
    name C24_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename C24_1 \
    op interface \
    ports { C24_1_address0 { O 3 vector } C24_1_ce0 { O 1 bit } C24_1_we0 { O 1 bit } C24_1_d0 { O 64 vector } C24_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 897 \
    name A24plus \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus \
    op interface \
    ports { A24plus_address0 { O 3 vector } A24plus_ce0 { O 1 bit } A24plus_we0 { O 1 bit } A24plus_d0 { O 64 vector } A24plus_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 898 \
    name A24plus_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename A24plus_2 \
    op interface \
    ports { A24plus_2_address0 { O 3 vector } A24plus_2_ce0 { O 1 bit } A24plus_2_we0 { O 1 bit } A24plus_2_d0 { O 64 vector } A24plus_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus_2'"
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


