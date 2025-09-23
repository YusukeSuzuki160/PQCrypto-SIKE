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
    id 4880 \
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
    id 4882 \
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
    id 4884 \
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
    id 4886 \
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
    id 4888 \
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
    id 4890 \
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
    id 4892 \
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
    id 4894 \
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
    id 4896 \
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
    id 4898 \
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
    id 4900 \
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
    id 4902 \
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
    id 4904 \
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
    id 4906 \
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
    id 4908 \
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
    id 4910 \
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
    id 4881 \
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
    id 4883 \
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
    id 4885 \
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
    id 4887 \
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
    id 4889 \
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
    id 4891 \
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
    id 4893 \
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
    id 4895 \
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
    id 4897 \
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
    id 4899 \
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
    id 4901 \
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
    id 4903 \
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
    id 4905 \
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
    id 4907 \
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
    id 4909 \
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
    id 4911 \
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


