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
    id 2958 \
    name R_X \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename R_X \
    op interface \
    ports { R_X_address0 { O 4 vector } R_X_ce0 { O 1 bit } R_X_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2959 \
    name R_Z \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename R_Z \
    op interface \
    ports { R_Z_address0 { O 4 vector } R_Z_ce0 { O 1 bit } R_Z_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2960 \
    name t0_i_i_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_i_i_0 \
    op interface \
    ports { t0_i_i_0_address0 { O 1 vector } t0_i_i_0_ce0 { O 1 bit } t0_i_i_0_we0 { O 1 bit } t0_i_i_0_d0 { O 64 vector } t0_i_i_0_address1 { O 1 vector } t0_i_i_0_ce1 { O 1 bit } t0_i_i_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2961 \
    name t0_i_i_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_i_i_1 \
    op interface \
    ports { t0_i_i_1_address0 { O 1 vector } t0_i_i_1_ce0 { O 1 bit } t0_i_i_1_we0 { O 1 bit } t0_i_i_1_d0 { O 64 vector } t0_i_i_1_address1 { O 1 vector } t0_i_i_1_ce1 { O 1 bit } t0_i_i_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2962 \
    name t0_i_i_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_i_i_2 \
    op interface \
    ports { t0_i_i_2_address0 { O 1 vector } t0_i_i_2_ce0 { O 1 bit } t0_i_i_2_we0 { O 1 bit } t0_i_i_2_d0 { O 64 vector } t0_i_i_2_address1 { O 1 vector } t0_i_i_2_ce1 { O 1 bit } t0_i_i_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2963 \
    name t0_i_i_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_i_i_3 \
    op interface \
    ports { t0_i_i_3_address0 { O 1 vector } t0_i_i_3_ce0 { O 1 bit } t0_i_i_3_we0 { O 1 bit } t0_i_i_3_d0 { O 64 vector } t0_i_i_3_address1 { O 1 vector } t0_i_i_3_ce1 { O 1 bit } t0_i_i_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2964 \
    name t0_i_i_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_i_i_4 \
    op interface \
    ports { t0_i_i_4_address0 { O 1 vector } t0_i_i_4_ce0 { O 1 bit } t0_i_i_4_we0 { O 1 bit } t0_i_i_4_d0 { O 64 vector } t0_i_i_4_address1 { O 1 vector } t0_i_i_4_ce1 { O 1 bit } t0_i_i_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2965 \
    name t0_i_i_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_i_i_5 \
    op interface \
    ports { t0_i_i_5_address0 { O 1 vector } t0_i_i_5_ce0 { O 1 bit } t0_i_i_5_we0 { O 1 bit } t0_i_i_5_d0 { O 64 vector } t0_i_i_5_address1 { O 1 vector } t0_i_i_5_ce1 { O 1 bit } t0_i_i_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2966 \
    name t0_i_i_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_i_i_6 \
    op interface \
    ports { t0_i_i_6_address0 { O 1 vector } t0_i_i_6_ce0 { O 1 bit } t0_i_i_6_we0 { O 1 bit } t0_i_i_6_d0 { O 64 vector } t0_i_i_6_address1 { O 1 vector } t0_i_i_6_ce1 { O 1 bit } t0_i_i_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2967 \
    name t0_i_i_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t0_i_i_7 \
    op interface \
    ports { t0_i_i_7_address0 { O 1 vector } t0_i_i_7_ce0 { O 1 bit } t0_i_i_7_we0 { O 1 bit } t0_i_i_7_d0 { O 64 vector } t0_i_i_7_address1 { O 1 vector } t0_i_i_7_ce1 { O 1 bit } t0_i_i_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't0_i_i_7'"
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


