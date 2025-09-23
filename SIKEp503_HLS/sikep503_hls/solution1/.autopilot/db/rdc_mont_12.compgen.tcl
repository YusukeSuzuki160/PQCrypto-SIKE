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
    id 8371 \
    name mc_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_0 \
    op interface \
    ports { mc_0_address0 { O 4 vector } mc_0_ce0 { O 1 bit } mc_0_we0 { O 1 bit } mc_0_d0 { O 64 vector } mc_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8373 \
    name mc_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_1 \
    op interface \
    ports { mc_1_address0 { O 4 vector } mc_1_ce0 { O 1 bit } mc_1_we0 { O 1 bit } mc_1_d0 { O 64 vector } mc_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8375 \
    name mc_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_2 \
    op interface \
    ports { mc_2_address0 { O 4 vector } mc_2_ce0 { O 1 bit } mc_2_we0 { O 1 bit } mc_2_d0 { O 64 vector } mc_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8377 \
    name mc_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_3 \
    op interface \
    ports { mc_3_address0 { O 4 vector } mc_3_ce0 { O 1 bit } mc_3_we0 { O 1 bit } mc_3_d0 { O 64 vector } mc_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8379 \
    name mc_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_4 \
    op interface \
    ports { mc_4_address0 { O 4 vector } mc_4_ce0 { O 1 bit } mc_4_we0 { O 1 bit } mc_4_d0 { O 64 vector } mc_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8381 \
    name mc_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_5 \
    op interface \
    ports { mc_5_address0 { O 4 vector } mc_5_ce0 { O 1 bit } mc_5_we0 { O 1 bit } mc_5_d0 { O 64 vector } mc_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8383 \
    name mc_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_6 \
    op interface \
    ports { mc_6_address0 { O 4 vector } mc_6_ce0 { O 1 bit } mc_6_we0 { O 1 bit } mc_6_d0 { O 64 vector } mc_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 8385 \
    name mc_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename mc_7 \
    op interface \
    ports { mc_7_address0 { O 4 vector } mc_7_ce0 { O 1 bit } mc_7_we0 { O 1 bit } mc_7_d0 { O 64 vector } mc_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mc_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8355 \
    name ma_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read \
    op interface \
    ports { ma_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8356 \
    name ma_read_453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_453 \
    op interface \
    ports { ma_read_453 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8357 \
    name ma_read_454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_454 \
    op interface \
    ports { ma_read_454 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8358 \
    name ma_read_455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_455 \
    op interface \
    ports { ma_read_455 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8359 \
    name ma_read_456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_456 \
    op interface \
    ports { ma_read_456 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8360 \
    name ma_read_457 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_457 \
    op interface \
    ports { ma_read_457 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8361 \
    name ma_read_458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_458 \
    op interface \
    ports { ma_read_458 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8362 \
    name ma_read_459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_459 \
    op interface \
    ports { ma_read_459 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8363 \
    name ma_read_460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_460 \
    op interface \
    ports { ma_read_460 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8364 \
    name ma_read_461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_461 \
    op interface \
    ports { ma_read_461 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8365 \
    name ma_read_462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_462 \
    op interface \
    ports { ma_read_462 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8366 \
    name ma_read_463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_463 \
    op interface \
    ports { ma_read_463 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8367 \
    name ma_read_464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_464 \
    op interface \
    ports { ma_read_464 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8368 \
    name ma_read_465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_465 \
    op interface \
    ports { ma_read_465 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8369 \
    name ma_read_466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_466 \
    op interface \
    ports { ma_read_466 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8370 \
    name ma_read_467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_467 \
    op interface \
    ports { ma_read_467 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8372 \
    name mc_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_0_offset \
    op interface \
    ports { mc_0_offset { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8374 \
    name mc_1_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_1_offset \
    op interface \
    ports { mc_1_offset { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8376 \
    name mc_2_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_2_offset \
    op interface \
    ports { mc_2_offset { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8378 \
    name mc_3_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_3_offset \
    op interface \
    ports { mc_3_offset { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8380 \
    name mc_4_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_4_offset \
    op interface \
    ports { mc_4_offset { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8382 \
    name mc_5_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_5_offset \
    op interface \
    ports { mc_5_offset { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8384 \
    name mc_6_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_6_offset \
    op interface \
    ports { mc_6_offset { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8386 \
    name mc_7_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_7_offset \
    op interface \
    ports { mc_7_offset { I 4 vector } } \
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


