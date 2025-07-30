# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2mul503_mont_25_t1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_fp2mul503_mont_25_tt1_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 2707 \
    name C24_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename C24_0 \
    op interface \
    ports { C24_0_address0 { O 1 vector } C24_0_ce0 { O 1 bit } C24_0_q0 { I 64 vector } C24_0_address1 { O 1 vector } C24_0_ce1 { O 1 bit } C24_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2708 \
    name C24_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename C24_1 \
    op interface \
    ports { C24_1_address0 { O 1 vector } C24_1_ce0 { O 1 bit } C24_1_q0 { I 64 vector } C24_1_address1 { O 1 vector } C24_1_ce1 { O 1 bit } C24_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2709 \
    name C24_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename C24_2 \
    op interface \
    ports { C24_2_address0 { O 1 vector } C24_2_ce0 { O 1 bit } C24_2_q0 { I 64 vector } C24_2_address1 { O 1 vector } C24_2_ce1 { O 1 bit } C24_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2710 \
    name C24_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename C24_3 \
    op interface \
    ports { C24_3_address0 { O 1 vector } C24_3_ce0 { O 1 bit } C24_3_q0 { I 64 vector } C24_3_address1 { O 1 vector } C24_3_ce1 { O 1 bit } C24_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2711 \
    name C24_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename C24_4 \
    op interface \
    ports { C24_4_address0 { O 1 vector } C24_4_ce0 { O 1 bit } C24_4_q0 { I 64 vector } C24_4_address1 { O 1 vector } C24_4_ce1 { O 1 bit } C24_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2712 \
    name C24_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename C24_5 \
    op interface \
    ports { C24_5_address0 { O 1 vector } C24_5_ce0 { O 1 bit } C24_5_q0 { I 64 vector } C24_5_address1 { O 1 vector } C24_5_ce1 { O 1 bit } C24_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2713 \
    name C24_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename C24_6 \
    op interface \
    ports { C24_6_address0 { O 1 vector } C24_6_ce0 { O 1 bit } C24_6_q0 { I 64 vector } C24_6_address1 { O 1 vector } C24_6_ce1 { O 1 bit } C24_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2714 \
    name C24_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename C24_7 \
    op interface \
    ports { C24_7_address0 { O 1 vector } C24_7_ce0 { O 1 bit } C24_7_q0 { I 64 vector } C24_7_address1 { O 1 vector } C24_7_ce1 { O 1 bit } C24_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2715 \
    name t0_i_i_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename t0_i_i_0 \
    op interface \
    ports { t0_i_i_0_address0 { O 1 vector } t0_i_i_0_ce0 { O 1 bit } t0_i_i_0_q0 { I 64 vector } t0_i_i_0_address1 { O 1 vector } t0_i_i_0_ce1 { O 1 bit } t0_i_i_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2716 \
    name t0_i_i_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename t0_i_i_1 \
    op interface \
    ports { t0_i_i_1_address0 { O 1 vector } t0_i_i_1_ce0 { O 1 bit } t0_i_i_1_q0 { I 64 vector } t0_i_i_1_address1 { O 1 vector } t0_i_i_1_ce1 { O 1 bit } t0_i_i_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2717 \
    name t0_i_i_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename t0_i_i_2 \
    op interface \
    ports { t0_i_i_2_address0 { O 1 vector } t0_i_i_2_ce0 { O 1 bit } t0_i_i_2_q0 { I 64 vector } t0_i_i_2_address1 { O 1 vector } t0_i_i_2_ce1 { O 1 bit } t0_i_i_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2718 \
    name t0_i_i_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename t0_i_i_3 \
    op interface \
    ports { t0_i_i_3_address0 { O 1 vector } t0_i_i_3_ce0 { O 1 bit } t0_i_i_3_q0 { I 64 vector } t0_i_i_3_address1 { O 1 vector } t0_i_i_3_ce1 { O 1 bit } t0_i_i_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2719 \
    name t0_i_i_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename t0_i_i_4 \
    op interface \
    ports { t0_i_i_4_address0 { O 1 vector } t0_i_i_4_ce0 { O 1 bit } t0_i_i_4_q0 { I 64 vector } t0_i_i_4_address1 { O 1 vector } t0_i_i_4_ce1 { O 1 bit } t0_i_i_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2720 \
    name t0_i_i_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename t0_i_i_5 \
    op interface \
    ports { t0_i_i_5_address0 { O 1 vector } t0_i_i_5_ce0 { O 1 bit } t0_i_i_5_q0 { I 64 vector } t0_i_i_5_address1 { O 1 vector } t0_i_i_5_ce1 { O 1 bit } t0_i_i_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2721 \
    name t0_i_i_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename t0_i_i_6 \
    op interface \
    ports { t0_i_i_6_address0 { O 1 vector } t0_i_i_6_ce0 { O 1 bit } t0_i_i_6_q0 { I 64 vector } t0_i_i_6_address1 { O 1 vector } t0_i_i_6_ce1 { O 1 bit } t0_i_i_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2722 \
    name t0_i_i_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename t0_i_i_7 \
    op interface \
    ports { t0_i_i_7_address0 { O 1 vector } t0_i_i_7_ce0 { O 1 bit } t0_i_i_7_q0 { I 64 vector } t0_i_i_7_address1 { O 1 vector } t0_i_i_7_ce1 { O 1 bit } t0_i_i_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2723 \
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


