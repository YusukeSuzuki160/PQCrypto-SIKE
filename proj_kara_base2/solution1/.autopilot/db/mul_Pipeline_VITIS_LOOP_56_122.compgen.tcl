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
    id 214 \
    name Bl_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bl_reload \
    op interface \
    ports { Bl_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name Bl_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bl_1_reload \
    op interface \
    ports { Bl_1_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name Bl_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bl_2_reload \
    op interface \
    ports { Bl_2_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name Bl_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bl_3_reload \
    op interface \
    ports { Bl_3_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name Bh_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bh_reload \
    op interface \
    ports { Bh_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name Bh_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bh_1_reload \
    op interface \
    ports { Bh_1_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name Bh_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bh_2_reload \
    op interface \
    ports { Bh_2_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name Bh_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Bh_3_reload \
    op interface \
    ports { Bh_3_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name Sbl_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Sbl_11_out \
    op interface \
    ports { Sbl_11_out { O 64 vector } Sbl_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name Sbl_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Sbl_10_out \
    op interface \
    ports { Sbl_10_out { O 64 vector } Sbl_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name Sbl_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Sbl_9_out \
    op interface \
    ports { Sbl_9_out { O 64 vector } Sbl_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name Sbl_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Sbl_8_out \
    op interface \
    ports { Sbl_8_out { O 64 vector } Sbl_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name carry_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_carry_17_out \
    op interface \
    ports { carry_17_out { O 2 vector } carry_17_out_ap_vld { O 1 bit } } \
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
set InstName test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init_U
set CompName test_mul_karatsuba_configurable_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix test_mul_karatsuba_configurable_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


