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
    id 4267 \
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
    id 4235 \
    name tt1_203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_203 \
    op interface \
    ports { tt1_203 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4236 \
    name tt1_204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_204 \
    op interface \
    ports { tt1_204 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4237 \
    name tt1_205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_205 \
    op interface \
    ports { tt1_205 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4238 \
    name tt1_206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_206 \
    op interface \
    ports { tt1_206 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4239 \
    name tt1_207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_207 \
    op interface \
    ports { tt1_207 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4240 \
    name tt1_208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_208 \
    op interface \
    ports { tt1_208 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4241 \
    name tt1_209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_209 \
    op interface \
    ports { tt1_209 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4242 \
    name tt1_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_210 \
    op interface \
    ports { tt1_210 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4243 \
    name tt1_211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_211 \
    op interface \
    ports { tt1_211 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4244 \
    name tt1_212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_212 \
    op interface \
    ports { tt1_212 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4245 \
    name tt1_213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_213 \
    op interface \
    ports { tt1_213 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4246 \
    name tt1_214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_214 \
    op interface \
    ports { tt1_214 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4247 \
    name tt1_215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_215 \
    op interface \
    ports { tt1_215 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4248 \
    name tt1_216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_216 \
    op interface \
    ports { tt1_216 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4249 \
    name tt1_217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_217 \
    op interface \
    ports { tt1_217 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4250 \
    name tt1_218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_218 \
    op interface \
    ports { tt1_218 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4251 \
    name tt2_379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_379 \
    op interface \
    ports { tt2_379 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4252 \
    name tt2_380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_380 \
    op interface \
    ports { tt2_380 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4253 \
    name tt2_381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_381 \
    op interface \
    ports { tt2_381 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4254 \
    name tt2_382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_382 \
    op interface \
    ports { tt2_382 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4255 \
    name tt2_383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_383 \
    op interface \
    ports { tt2_383 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4256 \
    name tt2_384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_384 \
    op interface \
    ports { tt2_384 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4257 \
    name tt2_385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_385 \
    op interface \
    ports { tt2_385 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4258 \
    name tt2_386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_386 \
    op interface \
    ports { tt2_386 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4259 \
    name tt2_387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_387 \
    op interface \
    ports { tt2_387 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4260 \
    name tt2_388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_388 \
    op interface \
    ports { tt2_388 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4261 \
    name tt2_389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_389 \
    op interface \
    ports { tt2_389 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4262 \
    name tt2_390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_390 \
    op interface \
    ports { tt2_390 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4263 \
    name tt2_391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_391 \
    op interface \
    ports { tt2_391 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4264 \
    name tt2_392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_392 \
    op interface \
    ports { tt2_392 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4265 \
    name tt2_393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_393 \
    op interface \
    ports { tt2_393 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4266 \
    name tt2_394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_394 \
    op interface \
    ports { tt2_394 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4268 \
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


