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
    id 6455 \
    name mc_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_0 \
    op interface \
    ports { mc_0_address0 { O 3 vector } mc_0_ce0 { O 1 bit } mc_0_we0 { O 1 bit } mc_0_d0 { O 64 vector } mc_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6458 \
    name mc_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_1 \
    op interface \
    ports { mc_1_address0 { O 3 vector } mc_1_ce0 { O 1 bit } mc_1_we0 { O 1 bit } mc_1_d0 { O 64 vector } mc_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6461 \
    name mc_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_2 \
    op interface \
    ports { mc_2_address0 { O 3 vector } mc_2_ce0 { O 1 bit } mc_2_we0 { O 1 bit } mc_2_d0 { O 64 vector } mc_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6464 \
    name mc_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_3 \
    op interface \
    ports { mc_3_address0 { O 3 vector } mc_3_ce0 { O 1 bit } mc_3_we0 { O 1 bit } mc_3_d0 { O 64 vector } mc_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6467 \
    name mc_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_4 \
    op interface \
    ports { mc_4_address0 { O 3 vector } mc_4_ce0 { O 1 bit } mc_4_we0 { O 1 bit } mc_4_d0 { O 64 vector } mc_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6470 \
    name mc_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_5 \
    op interface \
    ports { mc_5_address0 { O 3 vector } mc_5_ce0 { O 1 bit } mc_5_we0 { O 1 bit } mc_5_d0 { O 64 vector } mc_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6473 \
    name mc_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_6 \
    op interface \
    ports { mc_6_address0 { O 3 vector } mc_6_ce0 { O 1 bit } mc_6_we0 { O 1 bit } mc_6_d0 { O 64 vector } mc_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6476 \
    name mc_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_7 \
    op interface \
    ports { mc_7_address0 { O 3 vector } mc_7_ce0 { O 1 bit } mc_7_we0 { O 1 bit } mc_7_d0 { O 64 vector } mc_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6456 \
    name mc_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_0_offset \
    op interface \
    ports { mc_0_offset { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6457 \
    name mc_0_offset1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_0_offset1 \
    op interface \
    ports { mc_0_offset1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6459 \
    name mc_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_1_offset \
    op interface \
    ports { mc_1_offset { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6460 \
    name mc_1_offset2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_1_offset2 \
    op interface \
    ports { mc_1_offset2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6462 \
    name mc_2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_2_offset \
    op interface \
    ports { mc_2_offset { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6463 \
    name mc_2_offset3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_2_offset3 \
    op interface \
    ports { mc_2_offset3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6465 \
    name mc_3_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_3_offset \
    op interface \
    ports { mc_3_offset { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6466 \
    name mc_3_offset4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_3_offset4 \
    op interface \
    ports { mc_3_offset4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6468 \
    name mc_4_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_4_offset \
    op interface \
    ports { mc_4_offset { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6469 \
    name mc_4_offset5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_4_offset5 \
    op interface \
    ports { mc_4_offset5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6471 \
    name mc_5_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_5_offset \
    op interface \
    ports { mc_5_offset { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6472 \
    name mc_5_offset6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_5_offset6 \
    op interface \
    ports { mc_5_offset6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6474 \
    name mc_6_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_6_offset \
    op interface \
    ports { mc_6_offset { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6475 \
    name mc_6_offset7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_6_offset7 \
    op interface \
    ports { mc_6_offset7 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6477 \
    name mc_7_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_7_offset \
    op interface \
    ports { mc_7_offset { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6478 \
    name mc_7_offset8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_7_offset8 \
    op interface \
    ports { mc_7_offset8 { I 1 vector } } \
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


