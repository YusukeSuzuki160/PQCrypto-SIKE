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
    id 9765 \
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
    id 9733 \
    name tt1_169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_169 \
    op interface \
    ports { tt1_169 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9734 \
    name tt1_170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_170 \
    op interface \
    ports { tt1_170 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9735 \
    name tt1_171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_171 \
    op interface \
    ports { tt1_171 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9736 \
    name tt1_172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_172 \
    op interface \
    ports { tt1_172 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9737 \
    name tt1_173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_173 \
    op interface \
    ports { tt1_173 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9738 \
    name tt1_174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_174 \
    op interface \
    ports { tt1_174 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9739 \
    name tt1_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_175 \
    op interface \
    ports { tt1_175 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9740 \
    name tt1_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_176 \
    op interface \
    ports { tt1_176 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9741 \
    name tt1_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_177 \
    op interface \
    ports { tt1_177 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9742 \
    name tt1_178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_178 \
    op interface \
    ports { tt1_178 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9743 \
    name tt1_179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_179 \
    op interface \
    ports { tt1_179 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9744 \
    name tt1_180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_180 \
    op interface \
    ports { tt1_180 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9745 \
    name tt1_181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_181 \
    op interface \
    ports { tt1_181 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9746 \
    name tt1_182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_182 \
    op interface \
    ports { tt1_182 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9747 \
    name tt1_183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_183 \
    op interface \
    ports { tt1_183 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9748 \
    name tt1_184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_184 \
    op interface \
    ports { tt1_184 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9749 \
    name tt2_313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_313 \
    op interface \
    ports { tt2_313 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9750 \
    name tt2_314 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_314 \
    op interface \
    ports { tt2_314 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9751 \
    name tt2_315 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_315 \
    op interface \
    ports { tt2_315 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9752 \
    name tt2_316 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_316 \
    op interface \
    ports { tt2_316 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9753 \
    name tt2_317 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_317 \
    op interface \
    ports { tt2_317 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9754 \
    name tt2_318 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_318 \
    op interface \
    ports { tt2_318 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9755 \
    name tt2_319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_319 \
    op interface \
    ports { tt2_319 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9756 \
    name tt2_320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_320 \
    op interface \
    ports { tt2_320 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9757 \
    name tt2_321 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_321 \
    op interface \
    ports { tt2_321 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9758 \
    name tt2_322 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_322 \
    op interface \
    ports { tt2_322 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9759 \
    name tt2_323 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_323 \
    op interface \
    ports { tt2_323 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9760 \
    name tt2_324 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_324 \
    op interface \
    ports { tt2_324 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9761 \
    name tt2_325 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_325 \
    op interface \
    ports { tt2_325 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9762 \
    name tt2_326 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_326 \
    op interface \
    ports { tt2_326 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9763 \
    name tt2_327 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_327 \
    op interface \
    ports { tt2_327 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9764 \
    name tt2_328 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_328 \
    op interface \
    ports { tt2_328 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9766 \
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


