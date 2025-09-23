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
    id 8968 \
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
    id 8936 \
    name tt1_254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_254 \
    op interface \
    ports { tt1_254 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8937 \
    name tt1_255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_255 \
    op interface \
    ports { tt1_255 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8938 \
    name tt1_256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_256 \
    op interface \
    ports { tt1_256 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8939 \
    name tt1_257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_257 \
    op interface \
    ports { tt1_257 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8940 \
    name tt1_258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_258 \
    op interface \
    ports { tt1_258 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8941 \
    name tt1_259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_259 \
    op interface \
    ports { tt1_259 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8942 \
    name tt1_260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_260 \
    op interface \
    ports { tt1_260 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8943 \
    name tt1_261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_261 \
    op interface \
    ports { tt1_261 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8944 \
    name tt1_262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_262 \
    op interface \
    ports { tt1_262 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8945 \
    name tt1_263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_263 \
    op interface \
    ports { tt1_263 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8946 \
    name tt1_264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_264 \
    op interface \
    ports { tt1_264 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8947 \
    name tt1_265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_265 \
    op interface \
    ports { tt1_265 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8948 \
    name tt1_266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_266 \
    op interface \
    ports { tt1_266 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8949 \
    name tt1_267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_267 \
    op interface \
    ports { tt1_267 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8950 \
    name tt1_268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_268 \
    op interface \
    ports { tt1_268 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8951 \
    name tt1_269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_269 \
    op interface \
    ports { tt1_269 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8952 \
    name tt2_478 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_478 \
    op interface \
    ports { tt2_478 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8953 \
    name tt2_479 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_479 \
    op interface \
    ports { tt2_479 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8954 \
    name tt2_480 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_480 \
    op interface \
    ports { tt2_480 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8955 \
    name tt2_481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_481 \
    op interface \
    ports { tt2_481 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8956 \
    name tt2_482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_482 \
    op interface \
    ports { tt2_482 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8957 \
    name tt2_483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_483 \
    op interface \
    ports { tt2_483 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8958 \
    name tt2_484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_484 \
    op interface \
    ports { tt2_484 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8959 \
    name tt2_485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_485 \
    op interface \
    ports { tt2_485 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8960 \
    name tt2_486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_486 \
    op interface \
    ports { tt2_486 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8961 \
    name tt2_487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_487 \
    op interface \
    ports { tt2_487 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8962 \
    name tt2_488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_488 \
    op interface \
    ports { tt2_488 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8963 \
    name tt2_489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_489 \
    op interface \
    ports { tt2_489 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8964 \
    name tt2_490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_490 \
    op interface \
    ports { tt2_490 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8965 \
    name tt2_491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_491 \
    op interface \
    ports { tt2_491 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8966 \
    name tt2_492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_492 \
    op interface \
    ports { tt2_492 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8967 \
    name tt2_493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_493 \
    op interface \
    ports { tt2_493 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8969 \
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


