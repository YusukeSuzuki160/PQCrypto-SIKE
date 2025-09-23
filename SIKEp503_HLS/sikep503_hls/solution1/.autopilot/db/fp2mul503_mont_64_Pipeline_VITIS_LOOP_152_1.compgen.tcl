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
    id 6440 \
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
    id 6408 \
    name tt1_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_152 \
    op interface \
    ports { tt1_152 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6409 \
    name tt1_153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_153 \
    op interface \
    ports { tt1_153 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6410 \
    name tt1_154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_154 \
    op interface \
    ports { tt1_154 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6411 \
    name tt1_155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_155 \
    op interface \
    ports { tt1_155 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6412 \
    name tt1_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_156 \
    op interface \
    ports { tt1_156 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6413 \
    name tt1_157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_157 \
    op interface \
    ports { tt1_157 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6414 \
    name tt1_158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_158 \
    op interface \
    ports { tt1_158 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6415 \
    name tt1_159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_159 \
    op interface \
    ports { tt1_159 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6416 \
    name tt1_160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_160 \
    op interface \
    ports { tt1_160 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6417 \
    name tt1_161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_161 \
    op interface \
    ports { tt1_161 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6418 \
    name tt1_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_162 \
    op interface \
    ports { tt1_162 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6419 \
    name tt1_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_163 \
    op interface \
    ports { tt1_163 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6420 \
    name tt1_164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_164 \
    op interface \
    ports { tt1_164 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6421 \
    name tt1_165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_165 \
    op interface \
    ports { tt1_165 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6422 \
    name tt1_166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_166 \
    op interface \
    ports { tt1_166 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6423 \
    name tt1_167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_167 \
    op interface \
    ports { tt1_167 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6424 \
    name tt2_280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_280 \
    op interface \
    ports { tt2_280 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6425 \
    name tt2_281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_281 \
    op interface \
    ports { tt2_281 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6426 \
    name tt2_282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_282 \
    op interface \
    ports { tt2_282 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6427 \
    name tt2_283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_283 \
    op interface \
    ports { tt2_283 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6428 \
    name tt2_284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_284 \
    op interface \
    ports { tt2_284 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6429 \
    name tt2_285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_285 \
    op interface \
    ports { tt2_285 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6430 \
    name tt2_286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_286 \
    op interface \
    ports { tt2_286 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6431 \
    name tt2_287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_287 \
    op interface \
    ports { tt2_287 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6432 \
    name tt2_288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_288 \
    op interface \
    ports { tt2_288 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6433 \
    name tt2_289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_289 \
    op interface \
    ports { tt2_289 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6434 \
    name tt2_290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_290 \
    op interface \
    ports { tt2_290 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6435 \
    name tt2_291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_291 \
    op interface \
    ports { tt2_291 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6436 \
    name tt2_292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_292 \
    op interface \
    ports { tt2_292 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6437 \
    name tt2_293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_293 \
    op interface \
    ports { tt2_293 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6438 \
    name tt2_294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_294 \
    op interface \
    ports { tt2_294 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6439 \
    name tt2_295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_295 \
    op interface \
    ports { tt2_295 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6441 \
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


