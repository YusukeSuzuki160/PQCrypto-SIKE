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
    id 6574 \
    name ma \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename ma \
    op interface \
    ports { ma_address0 { O 4 vector } ma_ce0 { O 1 bit } ma_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ma'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6575 \
    name t1_i_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_i_0 \
    op interface \
    ports { t1_i_0_address0 { O 4 vector } t1_i_0_ce0 { O 1 bit } t1_i_0_we0 { O 1 bit } t1_i_0_d0 { O 64 vector } t1_i_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_i_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6577 \
    name t1_i_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_i_1 \
    op interface \
    ports { t1_i_1_address0 { O 4 vector } t1_i_1_ce0 { O 1 bit } t1_i_1_we0 { O 1 bit } t1_i_1_d0 { O 64 vector } t1_i_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_i_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6578 \
    name t1_i_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_i_2 \
    op interface \
    ports { t1_i_2_address0 { O 4 vector } t1_i_2_ce0 { O 1 bit } t1_i_2_we0 { O 1 bit } t1_i_2_d0 { O 64 vector } t1_i_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_i_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6579 \
    name t1_i_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_i_3 \
    op interface \
    ports { t1_i_3_address0 { O 4 vector } t1_i_3_ce0 { O 1 bit } t1_i_3_we0 { O 1 bit } t1_i_3_d0 { O 64 vector } t1_i_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_i_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6580 \
    name t1_i_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_i_4 \
    op interface \
    ports { t1_i_4_address0 { O 4 vector } t1_i_4_ce0 { O 1 bit } t1_i_4_we0 { O 1 bit } t1_i_4_d0 { O 64 vector } t1_i_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_i_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6581 \
    name t1_i_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_i_5 \
    op interface \
    ports { t1_i_5_address0 { O 4 vector } t1_i_5_ce0 { O 1 bit } t1_i_5_we0 { O 1 bit } t1_i_5_d0 { O 64 vector } t1_i_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_i_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6582 \
    name t1_i_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_i_6 \
    op interface \
    ports { t1_i_6_address0 { O 4 vector } t1_i_6_ce0 { O 1 bit } t1_i_6_we0 { O 1 bit } t1_i_6_d0 { O 64 vector } t1_i_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_i_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6583 \
    name t1_i_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_i_7 \
    op interface \
    ports { t1_i_7_address0 { O 4 vector } t1_i_7_ce0 { O 1 bit } t1_i_7_we0 { O 1 bit } t1_i_7_d0 { O 64 vector } t1_i_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_i_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6576 \
    name t1_i_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t1_i_0_offset \
    op interface \
    ports { t1_i_0_offset { I 4 vector } } \
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


