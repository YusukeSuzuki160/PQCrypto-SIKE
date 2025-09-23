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
    id 5997 \
    name mc_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_0 \
    op interface \
    ports { mc_0_address0 { O 1 vector } mc_0_ce0 { O 1 bit } mc_0_we0 { O 1 bit } mc_0_d0 { O 64 vector } mc_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5999 \
    name mc_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_1 \
    op interface \
    ports { mc_1_address0 { O 1 vector } mc_1_ce0 { O 1 bit } mc_1_we0 { O 1 bit } mc_1_d0 { O 64 vector } mc_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6001 \
    name mc_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_2 \
    op interface \
    ports { mc_2_address0 { O 1 vector } mc_2_ce0 { O 1 bit } mc_2_we0 { O 1 bit } mc_2_d0 { O 64 vector } mc_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6003 \
    name mc_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_3 \
    op interface \
    ports { mc_3_address0 { O 1 vector } mc_3_ce0 { O 1 bit } mc_3_we0 { O 1 bit } mc_3_d0 { O 64 vector } mc_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6005 \
    name mc_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_4 \
    op interface \
    ports { mc_4_address0 { O 1 vector } mc_4_ce0 { O 1 bit } mc_4_we0 { O 1 bit } mc_4_d0 { O 64 vector } mc_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6007 \
    name mc_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_5 \
    op interface \
    ports { mc_5_address0 { O 1 vector } mc_5_ce0 { O 1 bit } mc_5_we0 { O 1 bit } mc_5_d0 { O 64 vector } mc_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6009 \
    name mc_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_6 \
    op interface \
    ports { mc_6_address0 { O 1 vector } mc_6_ce0 { O 1 bit } mc_6_we0 { O 1 bit } mc_6_d0 { O 64 vector } mc_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6011 \
    name mc_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_7 \
    op interface \
    ports { mc_7_address0 { O 1 vector } mc_7_ce0 { O 1 bit } mc_7_we0 { O 1 bit } mc_7_d0 { O 64 vector } mc_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5998 \
    name mc_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_0_offset \
    op interface \
    ports { mc_0_offset { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6000 \
    name mc_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_1_offset \
    op interface \
    ports { mc_1_offset { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6002 \
    name mc_2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_2_offset \
    op interface \
    ports { mc_2_offset { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6004 \
    name mc_3_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_3_offset \
    op interface \
    ports { mc_3_offset { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6006 \
    name mc_4_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_4_offset \
    op interface \
    ports { mc_4_offset { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6008 \
    name mc_5_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_5_offset \
    op interface \
    ports { mc_5_offset { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6010 \
    name mc_6_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_6_offset \
    op interface \
    ports { mc_6_offset { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6012 \
    name mc_7_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_7_offset \
    op interface \
    ports { mc_7_offset { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6013 \
    name mb_0_val1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mb_0_val1_offset \
    op interface \
    ports { mb_0_val1_offset { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6014 \
    name mb_1_val2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mb_1_val2_offset \
    op interface \
    ports { mb_1_val2_offset { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6015 \
    name mb_2_val3_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mb_2_val3_offset \
    op interface \
    ports { mb_2_val3_offset { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6016 \
    name mb_3_val4_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mb_3_val4_offset \
    op interface \
    ports { mb_3_val4_offset { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6017 \
    name mb_4_val5_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mb_4_val5_offset \
    op interface \
    ports { mb_4_val5_offset { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6018 \
    name mb_5_val6_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mb_5_val6_offset \
    op interface \
    ports { mb_5_val6_offset { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6019 \
    name mb_6_val7_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mb_6_val7_offset \
    op interface \
    ports { mb_6_val7_offset { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6020 \
    name mb_7_val8_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mb_7_val8_offset \
    op interface \
    ports { mb_7_val8_offset { I 64 vector } } \
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


