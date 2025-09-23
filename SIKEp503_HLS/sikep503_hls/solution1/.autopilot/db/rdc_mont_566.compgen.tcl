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
    id 3079 \
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
    id 3080 \
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
    id 3081 \
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
    id 3082 \
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
    id 3083 \
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
    id 3084 \
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
    id 3085 \
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
    id 3086 \
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
    id 3063 \
    name ma_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_0_val \
    op interface \
    ports { ma_0_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3064 \
    name ma_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_1_val \
    op interface \
    ports { ma_1_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3065 \
    name ma_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_2_val \
    op interface \
    ports { ma_2_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3066 \
    name ma_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_3_val \
    op interface \
    ports { ma_3_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3067 \
    name ma_4_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_4_val \
    op interface \
    ports { ma_4_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3068 \
    name ma_5_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_5_val \
    op interface \
    ports { ma_5_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3069 \
    name ma_6_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_6_val \
    op interface \
    ports { ma_6_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3070 \
    name ma_7_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_7_val \
    op interface \
    ports { ma_7_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3071 \
    name ma_8_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_8_val \
    op interface \
    ports { ma_8_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3072 \
    name ma_9_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_9_val \
    op interface \
    ports { ma_9_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3073 \
    name ma_10_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_10_val \
    op interface \
    ports { ma_10_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3074 \
    name ma_11_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_11_val \
    op interface \
    ports { ma_11_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3075 \
    name ma_12_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_12_val \
    op interface \
    ports { ma_12_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3076 \
    name ma_13_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_13_val \
    op interface \
    ports { ma_13_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3077 \
    name ma_14_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_14_val \
    op interface \
    ports { ma_14_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3078 \
    name ma_15_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_15_val \
    op interface \
    ports { ma_15_val { I 64 vector } } \
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


