# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2261 \
    name t2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2 \
    op interface \
    ports { t2 { O 64 vector } t2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2262 \
    name t2_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_7 \
    op interface \
    ports { t2_7 { O 64 vector } t2_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2263 \
    name t2_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_6 \
    op interface \
    ports { t2_6 { O 64 vector } t2_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2264 \
    name t2_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_5 \
    op interface \
    ports { t2_5 { O 64 vector } t2_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2265 \
    name t2_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_4 \
    op interface \
    ports { t2_4 { O 64 vector } t2_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2266 \
    name t2_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_3 \
    op interface \
    ports { t2_3 { O 64 vector } t2_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2267 \
    name t2_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_2 \
    op interface \
    ports { t2_2 { O 64 vector } t2_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2268 \
    name t2_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t2_1 \
    op interface \
    ports { t2_1 { O 64 vector } t2_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2269 \
    name c_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_0_load \
    op interface \
    ports { c_0_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2270 \
    name c_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_1_load \
    op interface \
    ports { c_1_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2271 \
    name c_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_2_load \
    op interface \
    ports { c_2_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2272 \
    name c_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_3_load \
    op interface \
    ports { c_3_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2273 \
    name c_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_4_load \
    op interface \
    ports { c_4_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2274 \
    name c_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_5_load \
    op interface \
    ports { c_5_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2275 \
    name c_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_6_load \
    op interface \
    ports { c_6_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2276 \
    name c_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_7_load \
    op interface \
    ports { c_7_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2277 \
    name c_0_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_0_load_18 \
    op interface \
    ports { c_0_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2278 \
    name c_1_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_1_load_18 \
    op interface \
    ports { c_1_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2279 \
    name c_2_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_2_load_18 \
    op interface \
    ports { c_2_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2280 \
    name c_3_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_3_load_18 \
    op interface \
    ports { c_3_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2281 \
    name c_4_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_4_load_18 \
    op interface \
    ports { c_4_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2282 \
    name c_5_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_5_load_18 \
    op interface \
    ports { c_5_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2283 \
    name c_6_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_6_load_18 \
    op interface \
    ports { c_6_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2284 \
    name c_7_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_7_load_18 \
    op interface \
    ports { c_7_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2285 \
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


