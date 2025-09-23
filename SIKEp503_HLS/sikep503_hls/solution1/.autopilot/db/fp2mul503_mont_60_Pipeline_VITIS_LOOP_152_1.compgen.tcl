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
    id 9598 \
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
    id 9566 \
    name tt1_186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_186 \
    op interface \
    ports { tt1_186 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9567 \
    name tt1_187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_187 \
    op interface \
    ports { tt1_187 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9568 \
    name tt1_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_188 \
    op interface \
    ports { tt1_188 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9569 \
    name tt1_189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_189 \
    op interface \
    ports { tt1_189 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9570 \
    name tt1_190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_190 \
    op interface \
    ports { tt1_190 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9571 \
    name tt1_191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_191 \
    op interface \
    ports { tt1_191 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9572 \
    name tt1_192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_192 \
    op interface \
    ports { tt1_192 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9573 \
    name tt1_193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_193 \
    op interface \
    ports { tt1_193 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9574 \
    name tt1_194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_194 \
    op interface \
    ports { tt1_194 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9575 \
    name tt1_195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_195 \
    op interface \
    ports { tt1_195 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9576 \
    name tt1_196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_196 \
    op interface \
    ports { tt1_196 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9577 \
    name tt1_197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_197 \
    op interface \
    ports { tt1_197 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9578 \
    name tt1_198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_198 \
    op interface \
    ports { tt1_198 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9579 \
    name tt1_199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_199 \
    op interface \
    ports { tt1_199 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9580 \
    name tt1_200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_200 \
    op interface \
    ports { tt1_200 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9581 \
    name tt1_201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_201 \
    op interface \
    ports { tt1_201 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9582 \
    name tt2_346 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_346 \
    op interface \
    ports { tt2_346 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9583 \
    name tt2_347 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_347 \
    op interface \
    ports { tt2_347 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9584 \
    name tt2_348 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_348 \
    op interface \
    ports { tt2_348 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9585 \
    name tt2_349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_349 \
    op interface \
    ports { tt2_349 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9586 \
    name tt2_350 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_350 \
    op interface \
    ports { tt2_350 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9587 \
    name tt2_351 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_351 \
    op interface \
    ports { tt2_351 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9588 \
    name tt2_352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_352 \
    op interface \
    ports { tt2_352 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9589 \
    name tt2_353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_353 \
    op interface \
    ports { tt2_353 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9590 \
    name tt2_354 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_354 \
    op interface \
    ports { tt2_354 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9591 \
    name tt2_355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_355 \
    op interface \
    ports { tt2_355 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9592 \
    name tt2_356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_356 \
    op interface \
    ports { tt2_356 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9593 \
    name tt2_357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_357 \
    op interface \
    ports { tt2_357 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9594 \
    name tt2_358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_358 \
    op interface \
    ports { tt2_358 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9595 \
    name tt2_359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_359 \
    op interface \
    ports { tt2_359 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9596 \
    name tt2_360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_360 \
    op interface \
    ports { tt2_360 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9597 \
    name tt2_361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_361 \
    op interface \
    ports { tt2_361 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9599 \
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


