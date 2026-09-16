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
    id 1122 \
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
    id 1123 \
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
    id 1124 \
    name Q_X_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_0 \
    op interface \
    ports { Q_X_0_address0 { O 3 vector } Q_X_0_ce0 { O 1 bit } Q_X_0_we0 { O 1 bit } Q_X_0_d0 { O 64 vector } Q_X_0_q0 { I 64 vector } Q_X_0_address1 { O 3 vector } Q_X_0_ce1 { O 1 bit } Q_X_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1125 \
    name Q_X_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_X_1 \
    op interface \
    ports { Q_X_1_address0 { O 3 vector } Q_X_1_ce0 { O 1 bit } Q_X_1_we0 { O 1 bit } Q_X_1_d0 { O 64 vector } Q_X_1_q0 { I 64 vector } Q_X_1_address1 { O 3 vector } Q_X_1_ce1 { O 1 bit } Q_X_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_X_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1126 \
    name Q_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_0 \
    op interface \
    ports { Q_Z_0_address0 { O 3 vector } Q_Z_0_ce0 { O 1 bit } Q_Z_0_we0 { O 1 bit } Q_Z_0_d0 { O 64 vector } Q_Z_0_q0 { I 64 vector } Q_Z_0_address1 { O 3 vector } Q_Z_0_ce1 { O 1 bit } Q_Z_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1127 \
    name Q_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Q_Z_1 \
    op interface \
    ports { Q_Z_1_address0 { O 3 vector } Q_Z_1_ce0 { O 1 bit } Q_Z_1_we0 { O 1 bit } Q_Z_1_d0 { O 64 vector } Q_Z_1_q0 { I 64 vector } Q_Z_1_address1 { O 3 vector } Q_Z_1_ce1 { O 1 bit } Q_Z_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Q_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1128 \
    name A24plus \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A24plus \
    op interface \
    ports { A24plus_address0 { O 4 vector } A24plus_ce0 { O 1 bit } A24plus_q0 { I 64 vector } A24plus_address1 { O 4 vector } A24plus_ce1 { O 1 bit } A24plus_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A24plus'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1129 \
    name C24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename C24 \
    op interface \
    ports { C24_address0 { O 4 vector } C24_ce0 { O 1 bit } C24_q0 { I 64 vector } C24_address1 { O 4 vector } C24_ce1 { O 1 bit } C24_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'C24'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1130 \
    name e \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_e \
    op interface \
    ports { e { I 7 vector } } \
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


