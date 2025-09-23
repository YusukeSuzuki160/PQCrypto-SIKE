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
    id 10048 \
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
    id 10016 \
    name tt1_135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_135 \
    op interface \
    ports { tt1_135 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10017 \
    name tt1_136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_136 \
    op interface \
    ports { tt1_136 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10018 \
    name tt1_137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_137 \
    op interface \
    ports { tt1_137 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10019 \
    name tt1_138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_138 \
    op interface \
    ports { tt1_138 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10020 \
    name tt1_139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_139 \
    op interface \
    ports { tt1_139 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10021 \
    name tt1_140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_140 \
    op interface \
    ports { tt1_140 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10022 \
    name tt1_141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_141 \
    op interface \
    ports { tt1_141 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10023 \
    name tt1_142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_142 \
    op interface \
    ports { tt1_142 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10024 \
    name tt1_143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_143 \
    op interface \
    ports { tt1_143 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10025 \
    name tt1_144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_144 \
    op interface \
    ports { tt1_144 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10026 \
    name tt1_145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_145 \
    op interface \
    ports { tt1_145 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10027 \
    name tt1_146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_146 \
    op interface \
    ports { tt1_146 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10028 \
    name tt1_147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_147 \
    op interface \
    ports { tt1_147 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10029 \
    name tt1_148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_148 \
    op interface \
    ports { tt1_148 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10030 \
    name tt1_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_149 \
    op interface \
    ports { tt1_149 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10031 \
    name tt1_150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_150 \
    op interface \
    ports { tt1_150 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10032 \
    name tt2_247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_247 \
    op interface \
    ports { tt2_247 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10033 \
    name tt2_248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_248 \
    op interface \
    ports { tt2_248 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10034 \
    name tt2_249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_249 \
    op interface \
    ports { tt2_249 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10035 \
    name tt2_250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_250 \
    op interface \
    ports { tt2_250 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10036 \
    name tt2_251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_251 \
    op interface \
    ports { tt2_251 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10037 \
    name tt2_252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_252 \
    op interface \
    ports { tt2_252 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10038 \
    name tt2_253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_253 \
    op interface \
    ports { tt2_253 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10039 \
    name tt2_254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_254 \
    op interface \
    ports { tt2_254 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10040 \
    name tt2_255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_255 \
    op interface \
    ports { tt2_255 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10041 \
    name tt2_256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_256 \
    op interface \
    ports { tt2_256 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10042 \
    name tt2_257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_257 \
    op interface \
    ports { tt2_257 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10043 \
    name tt2_258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_258 \
    op interface \
    ports { tt2_258 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10044 \
    name tt2_259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_259 \
    op interface \
    ports { tt2_259 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10045 \
    name tt2_260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_260 \
    op interface \
    ports { tt2_260 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10046 \
    name tt2_261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_261 \
    op interface \
    ports { tt2_261 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10047 \
    name tt2_262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_262 \
    op interface \
    ports { tt2_262 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10049 \
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


