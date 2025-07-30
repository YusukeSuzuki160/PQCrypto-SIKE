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
    id 6094 \
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
    id 6095 \
    name pts_Z_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pts_Z_0 \
    op interface \
    ports { pts_Z_0_address0 { O 4 vector } pts_Z_0_ce0 { O 1 bit } pts_Z_0_we0 { O 1 bit } pts_Z_0_d0 { O 64 vector } pts_Z_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_Z_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6097 \
    name pts_Z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pts_Z_1 \
    op interface \
    ports { pts_Z_1_address0 { O 4 vector } pts_Z_1_ce0 { O 1 bit } pts_Z_1_we0 { O 1 bit } pts_Z_1_d0 { O 64 vector } pts_Z_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_Z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6099 \
    name pts_Z_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pts_Z_2 \
    op interface \
    ports { pts_Z_2_address0 { O 4 vector } pts_Z_2_ce0 { O 1 bit } pts_Z_2_we0 { O 1 bit } pts_Z_2_d0 { O 64 vector } pts_Z_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_Z_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6101 \
    name pts_Z_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pts_Z_3 \
    op interface \
    ports { pts_Z_3_address0 { O 4 vector } pts_Z_3_ce0 { O 1 bit } pts_Z_3_we0 { O 1 bit } pts_Z_3_d0 { O 64 vector } pts_Z_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_Z_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6103 \
    name pts_Z_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pts_Z_4 \
    op interface \
    ports { pts_Z_4_address0 { O 4 vector } pts_Z_4_ce0 { O 1 bit } pts_Z_4_we0 { O 1 bit } pts_Z_4_d0 { O 64 vector } pts_Z_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_Z_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6105 \
    name pts_Z_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pts_Z_5 \
    op interface \
    ports { pts_Z_5_address0 { O 4 vector } pts_Z_5_ce0 { O 1 bit } pts_Z_5_we0 { O 1 bit } pts_Z_5_d0 { O 64 vector } pts_Z_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_Z_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6107 \
    name pts_Z_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pts_Z_6 \
    op interface \
    ports { pts_Z_6_address0 { O 4 vector } pts_Z_6_ce0 { O 1 bit } pts_Z_6_we0 { O 1 bit } pts_Z_6_d0 { O 64 vector } pts_Z_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_Z_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6109 \
    name pts_Z_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pts_Z_7 \
    op interface \
    ports { pts_Z_7_address0 { O 4 vector } pts_Z_7_ce0 { O 1 bit } pts_Z_7_we0 { O 1 bit } pts_Z_7_d0 { O 64 vector } pts_Z_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pts_Z_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6096 \
    name mc_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_0 \
    op interface \
    ports { mc_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6098 \
    name mc_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_1 \
    op interface \
    ports { mc_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6100 \
    name mc_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_2 \
    op interface \
    ports { mc_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6102 \
    name mc_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_3 \
    op interface \
    ports { mc_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6104 \
    name mc_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_4 \
    op interface \
    ports { mc_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6106 \
    name mc_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_5 \
    op interface \
    ports { mc_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6108 \
    name mc_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_6 \
    op interface \
    ports { mc_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6110 \
    name mc_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_7 \
    op interface \
    ports { mc_7 { I 8 vector } } \
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


