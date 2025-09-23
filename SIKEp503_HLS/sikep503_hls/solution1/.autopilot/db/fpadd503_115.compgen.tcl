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
    id 6891 \
    name b \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b \
    op interface \
    ports { b_address0 { O 4 vector } b_ce0 { O 1 bit } b_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6892 \
    name t1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_0 \
    op interface \
    ports { t1_0_address0 { O 1 vector } t1_0_ce0 { O 1 bit } t1_0_we0 { O 1 bit } t1_0_d0 { O 64 vector } t1_0_address1 { O 1 vector } t1_0_ce1 { O 1 bit } t1_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6893 \
    name t1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_1 \
    op interface \
    ports { t1_1_address0 { O 1 vector } t1_1_ce0 { O 1 bit } t1_1_we0 { O 1 bit } t1_1_d0 { O 64 vector } t1_1_address1 { O 1 vector } t1_1_ce1 { O 1 bit } t1_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6894 \
    name t1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_2 \
    op interface \
    ports { t1_2_address0 { O 1 vector } t1_2_ce0 { O 1 bit } t1_2_we0 { O 1 bit } t1_2_d0 { O 64 vector } t1_2_address1 { O 1 vector } t1_2_ce1 { O 1 bit } t1_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6895 \
    name t1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_3 \
    op interface \
    ports { t1_3_address0 { O 1 vector } t1_3_ce0 { O 1 bit } t1_3_we0 { O 1 bit } t1_3_d0 { O 64 vector } t1_3_address1 { O 1 vector } t1_3_ce1 { O 1 bit } t1_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6896 \
    name t1_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_4 \
    op interface \
    ports { t1_4_address0 { O 1 vector } t1_4_ce0 { O 1 bit } t1_4_we0 { O 1 bit } t1_4_d0 { O 64 vector } t1_4_address1 { O 1 vector } t1_4_ce1 { O 1 bit } t1_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6897 \
    name t1_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_5 \
    op interface \
    ports { t1_5_address0 { O 1 vector } t1_5_ce0 { O 1 bit } t1_5_we0 { O 1 bit } t1_5_d0 { O 64 vector } t1_5_address1 { O 1 vector } t1_5_ce1 { O 1 bit } t1_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6898 \
    name t1_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_6 \
    op interface \
    ports { t1_6_address0 { O 1 vector } t1_6_ce0 { O 1 bit } t1_6_we0 { O 1 bit } t1_6_d0 { O 64 vector } t1_6_address1 { O 1 vector } t1_6_ce1 { O 1 bit } t1_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6899 \
    name t1_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t1_7 \
    op interface \
    ports { t1_7_address0 { O 1 vector } t1_7_ce0 { O 1 bit } t1_7_we0 { O 1 bit } t1_7_d0 { O 64 vector } t1_7_address1 { O 1 vector } t1_7_ce1 { O 1 bit } t1_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't1_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6883 \
    name a_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read \
    op interface \
    ports { a_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6884 \
    name a_read_536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_536 \
    op interface \
    ports { a_read_536 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6885 \
    name a_read_537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_537 \
    op interface \
    ports { a_read_537 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6886 \
    name a_read_538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_538 \
    op interface \
    ports { a_read_538 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6887 \
    name a_read_539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_539 \
    op interface \
    ports { a_read_539 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6888 \
    name a_read_540 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_540 \
    op interface \
    ports { a_read_540 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6889 \
    name a_read_541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_541 \
    op interface \
    ports { a_read_541 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6890 \
    name a_read_542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_542 \
    op interface \
    ports { a_read_542 { I 64 vector } } \
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


