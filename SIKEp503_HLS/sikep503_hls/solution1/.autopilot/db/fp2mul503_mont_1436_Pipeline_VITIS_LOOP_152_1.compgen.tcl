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
    id 3981 \
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
    id 3949 \
    name tt1_424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_424 \
    op interface \
    ports { tt1_424 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3950 \
    name tt1_425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_425 \
    op interface \
    ports { tt1_425 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3951 \
    name tt1_426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_426 \
    op interface \
    ports { tt1_426 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3952 \
    name tt1_427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_427 \
    op interface \
    ports { tt1_427 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3953 \
    name tt1_428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_428 \
    op interface \
    ports { tt1_428 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3954 \
    name tt1_429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_429 \
    op interface \
    ports { tt1_429 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3955 \
    name tt1_430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_430 \
    op interface \
    ports { tt1_430 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3956 \
    name tt1_431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_431 \
    op interface \
    ports { tt1_431 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3957 \
    name tt1_432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_432 \
    op interface \
    ports { tt1_432 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3958 \
    name tt1_433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_433 \
    op interface \
    ports { tt1_433 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3959 \
    name tt1_434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_434 \
    op interface \
    ports { tt1_434 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3960 \
    name tt1_435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_435 \
    op interface \
    ports { tt1_435 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3961 \
    name tt1_436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_436 \
    op interface \
    ports { tt1_436 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3962 \
    name tt1_437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_437 \
    op interface \
    ports { tt1_437 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3963 \
    name tt1_438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_438 \
    op interface \
    ports { tt1_438 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3964 \
    name tt1_439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_439 \
    op interface \
    ports { tt1_439 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3965 \
    name tt2_808 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_808 \
    op interface \
    ports { tt2_808 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3966 \
    name tt2_809 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_809 \
    op interface \
    ports { tt2_809 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3967 \
    name tt2_810 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_810 \
    op interface \
    ports { tt2_810 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3968 \
    name tt2_811 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_811 \
    op interface \
    ports { tt2_811 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3969 \
    name tt2_812 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_812 \
    op interface \
    ports { tt2_812 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3970 \
    name tt2_813 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_813 \
    op interface \
    ports { tt2_813 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3971 \
    name tt2_814 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_814 \
    op interface \
    ports { tt2_814 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3972 \
    name tt2_815 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_815 \
    op interface \
    ports { tt2_815 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3973 \
    name tt2_816 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_816 \
    op interface \
    ports { tt2_816 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3974 \
    name tt2_817 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_817 \
    op interface \
    ports { tt2_817 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3975 \
    name tt2_818 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_818 \
    op interface \
    ports { tt2_818 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3976 \
    name tt2_819 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_819 \
    op interface \
    ports { tt2_819 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3977 \
    name tt2_820 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_820 \
    op interface \
    ports { tt2_820 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3978 \
    name tt2_821 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_821 \
    op interface \
    ports { tt2_821 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3979 \
    name tt2_822 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_822 \
    op interface \
    ports { tt2_822 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3980 \
    name tt2_823 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_823 \
    op interface \
    ports { tt2_823 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3982 \
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


