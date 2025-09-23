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
    id 4391 \
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
    id 4359 \
    name tt1_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_16 \
    op interface \
    ports { tt1_16 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4360 \
    name tt1_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_17 \
    op interface \
    ports { tt1_17 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4361 \
    name tt1_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_18 \
    op interface \
    ports { tt1_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4362 \
    name tt1_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_19 \
    op interface \
    ports { tt1_19 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4363 \
    name tt1_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_20 \
    op interface \
    ports { tt1_20 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4364 \
    name tt1_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_21 \
    op interface \
    ports { tt1_21 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4365 \
    name tt1_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_22 \
    op interface \
    ports { tt1_22 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4366 \
    name tt1_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_23 \
    op interface \
    ports { tt1_23 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4367 \
    name tt1_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_24 \
    op interface \
    ports { tt1_24 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4368 \
    name tt1_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_25 \
    op interface \
    ports { tt1_25 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4369 \
    name tt1_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_26 \
    op interface \
    ports { tt1_26 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4370 \
    name tt1_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_27 \
    op interface \
    ports { tt1_27 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4371 \
    name tt1_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_28 \
    op interface \
    ports { tt1_28 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4372 \
    name tt1_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_29 \
    op interface \
    ports { tt1_29 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4373 \
    name tt1_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_30 \
    op interface \
    ports { tt1_30 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4374 \
    name tt1_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_31 \
    op interface \
    ports { tt1_31 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4375 \
    name tt2_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_16 \
    op interface \
    ports { tt2_16 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4376 \
    name tt2_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_17 \
    op interface \
    ports { tt2_17 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4377 \
    name tt2_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_18 \
    op interface \
    ports { tt2_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4378 \
    name tt2_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_19 \
    op interface \
    ports { tt2_19 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4379 \
    name tt2_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_20 \
    op interface \
    ports { tt2_20 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4380 \
    name tt2_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_21 \
    op interface \
    ports { tt2_21 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4381 \
    name tt2_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_22 \
    op interface \
    ports { tt2_22 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4382 \
    name tt2_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_23 \
    op interface \
    ports { tt2_23 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4383 \
    name tt2_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_24 \
    op interface \
    ports { tt2_24 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4384 \
    name tt2_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_25 \
    op interface \
    ports { tt2_25 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4385 \
    name tt2_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_26 \
    op interface \
    ports { tt2_26 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4386 \
    name tt2_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_27 \
    op interface \
    ports { tt2_27 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4387 \
    name tt2_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_28 \
    op interface \
    ports { tt2_28 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4388 \
    name tt2_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_29 \
    op interface \
    ports { tt2_29 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4389 \
    name tt2_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_30 \
    op interface \
    ports { tt2_30 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4390 \
    name tt2_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_31 \
    op interface \
    ports { tt2_31 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4392 \
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


