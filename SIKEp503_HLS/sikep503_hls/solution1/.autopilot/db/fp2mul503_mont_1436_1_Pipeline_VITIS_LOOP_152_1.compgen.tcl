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
    id 5304 \
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
    id 5272 \
    name tt1_407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_407 \
    op interface \
    ports { tt1_407 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5273 \
    name tt1_408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_408 \
    op interface \
    ports { tt1_408 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5274 \
    name tt1_409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_409 \
    op interface \
    ports { tt1_409 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5275 \
    name tt1_410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_410 \
    op interface \
    ports { tt1_410 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5276 \
    name tt1_411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_411 \
    op interface \
    ports { tt1_411 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5277 \
    name tt1_412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_412 \
    op interface \
    ports { tt1_412 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5278 \
    name tt1_413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_413 \
    op interface \
    ports { tt1_413 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5279 \
    name tt1_414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_414 \
    op interface \
    ports { tt1_414 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5280 \
    name tt1_415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_415 \
    op interface \
    ports { tt1_415 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5281 \
    name tt1_416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_416 \
    op interface \
    ports { tt1_416 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5282 \
    name tt1_417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_417 \
    op interface \
    ports { tt1_417 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5283 \
    name tt1_418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_418 \
    op interface \
    ports { tt1_418 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5284 \
    name tt1_419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_419 \
    op interface \
    ports { tt1_419 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5285 \
    name tt1_420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_420 \
    op interface \
    ports { tt1_420 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5286 \
    name tt1_421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_421 \
    op interface \
    ports { tt1_421 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5287 \
    name tt1_422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_422 \
    op interface \
    ports { tt1_422 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5288 \
    name tt2_775 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_775 \
    op interface \
    ports { tt2_775 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5289 \
    name tt2_776 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_776 \
    op interface \
    ports { tt2_776 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5290 \
    name tt2_777 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_777 \
    op interface \
    ports { tt2_777 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5291 \
    name tt2_778 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_778 \
    op interface \
    ports { tt2_778 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5292 \
    name tt2_779 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_779 \
    op interface \
    ports { tt2_779 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5293 \
    name tt2_780 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_780 \
    op interface \
    ports { tt2_780 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5294 \
    name tt2_781 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_781 \
    op interface \
    ports { tt2_781 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5295 \
    name tt2_782 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_782 \
    op interface \
    ports { tt2_782 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5296 \
    name tt2_783 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_783 \
    op interface \
    ports { tt2_783 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5297 \
    name tt2_784 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_784 \
    op interface \
    ports { tt2_784 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5298 \
    name tt2_785 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_785 \
    op interface \
    ports { tt2_785 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5299 \
    name tt2_786 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_786 \
    op interface \
    ports { tt2_786 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5300 \
    name tt2_787 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_787 \
    op interface \
    ports { tt2_787 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5301 \
    name tt2_788 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_788 \
    op interface \
    ports { tt2_788 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5302 \
    name tt2_789 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_789 \
    op interface \
    ports { tt2_789 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5303 \
    name tt2_790 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_790 \
    op interface \
    ports { tt2_790 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5305 \
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


