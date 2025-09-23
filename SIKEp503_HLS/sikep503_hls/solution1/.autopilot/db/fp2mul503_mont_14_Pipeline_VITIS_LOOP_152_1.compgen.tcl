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
    id 2056 \
    name tt3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename tt3 \
    op interface \
    ports { tt3_address0 { O 4 vector } tt3_ce0 { O 1 bit } tt3_we0 { O 1 bit } tt3_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tt3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2024 \
    name tt1_441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_441 \
    op interface \
    ports { tt1_441 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2025 \
    name tt1_442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_442 \
    op interface \
    ports { tt1_442 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2026 \
    name tt1_443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_443 \
    op interface \
    ports { tt1_443 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2027 \
    name tt1_444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_444 \
    op interface \
    ports { tt1_444 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2028 \
    name tt1_445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_445 \
    op interface \
    ports { tt1_445 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2029 \
    name tt1_446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_446 \
    op interface \
    ports { tt1_446 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2030 \
    name tt1_447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_447 \
    op interface \
    ports { tt1_447 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2031 \
    name tt1_448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_448 \
    op interface \
    ports { tt1_448 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2032 \
    name tt1_449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_449 \
    op interface \
    ports { tt1_449 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2033 \
    name tt1_450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_450 \
    op interface \
    ports { tt1_450 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2034 \
    name tt1_451 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_451 \
    op interface \
    ports { tt1_451 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2035 \
    name tt1_452 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_452 \
    op interface \
    ports { tt1_452 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2036 \
    name tt1_453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_453 \
    op interface \
    ports { tt1_453 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2037 \
    name tt1_454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_454 \
    op interface \
    ports { tt1_454 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2038 \
    name tt1_455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_455 \
    op interface \
    ports { tt1_455 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2039 \
    name tt1_456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_456 \
    op interface \
    ports { tt1_456 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2040 \
    name tt2_841 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_841 \
    op interface \
    ports { tt2_841 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2041 \
    name tt2_842 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_842 \
    op interface \
    ports { tt2_842 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2042 \
    name tt2_843 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_843 \
    op interface \
    ports { tt2_843 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2043 \
    name tt2_844 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_844 \
    op interface \
    ports { tt2_844 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2044 \
    name tt2_845 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_845 \
    op interface \
    ports { tt2_845 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2045 \
    name tt2_846 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_846 \
    op interface \
    ports { tt2_846 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2046 \
    name tt2_847 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_847 \
    op interface \
    ports { tt2_847 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2047 \
    name tt2_848 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_848 \
    op interface \
    ports { tt2_848 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2048 \
    name tt2_849 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_849 \
    op interface \
    ports { tt2_849 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2049 \
    name tt2_850 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_850 \
    op interface \
    ports { tt2_850 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2050 \
    name tt2_851 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_851 \
    op interface \
    ports { tt2_851 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2051 \
    name tt2_852 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_852 \
    op interface \
    ports { tt2_852 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2052 \
    name tt2_853 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_853 \
    op interface \
    ports { tt2_853 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2053 \
    name tt2_854 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_854 \
    op interface \
    ports { tt2_854 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2054 \
    name tt2_855 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_855 \
    op interface \
    ports { tt2_855 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2055 \
    name tt2_856 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_856 \
    op interface \
    ports { tt2_856 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2057 \
    name borrow_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_borrow_out \
    op interface \
    ports { borrow_out { O 1 vector } borrow_out_ap_vld { O 1 bit } } \
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


# flow_control definition:
set InstName sikep503_kem_enc_hw_flow_control_loop_pipe_sequential_init_U
set CompName sikep503_kem_enc_hw_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix sikep503_kem_enc_hw_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


