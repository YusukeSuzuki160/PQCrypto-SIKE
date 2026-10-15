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
    id 130 \
    name b \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b \
    op interface \
    ports { b_address0 { O 4 vector } b_ce0 { O 1 bit } b_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name a_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_cast \
    op interface \
    ports { a_load_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name a_load_1_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_1_cast \
    op interface \
    ports { a_load_1_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name a_load_2_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_2_cast \
    op interface \
    ports { a_load_2_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name a_load_3_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_3_cast \
    op interface \
    ports { a_load_3_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name a_load_4_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_4_cast \
    op interface \
    ports { a_load_4_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name a_load_5_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_5_cast \
    op interface \
    ports { a_load_5_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name a_load_6_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_6_cast \
    op interface \
    ports { a_load_6_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name a_load_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_7_cast \
    op interface \
    ports { a_load_7_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name a_load_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_8_cast \
    op interface \
    ports { a_load_8_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name a_load_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_9_cast \
    op interface \
    ports { a_load_9_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name a_load_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_10_cast \
    op interface \
    ports { a_load_10_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name a_load_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_11_cast \
    op interface \
    ports { a_load_11_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name a_load_12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_12_cast \
    op interface \
    ports { a_load_12_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name a_load_13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_13_cast \
    op interface \
    ports { a_load_13_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name a_load_14_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_14_cast \
    op interface \
    ports { a_load_14_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name a_load_15_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_load_15_cast \
    op interface \
    ports { a_load_15_cast { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name mprime \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mprime \
    op interface \
    ports { mprime { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name conv46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv46 \
    op interface \
    ports { conv46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name conv62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62 \
    op interface \
    ports { conv62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name conv62_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_1 \
    op interface \
    ports { conv62_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name conv62_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_2 \
    op interface \
    ports { conv62_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name conv62_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_3 \
    op interface \
    ports { conv62_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name conv62_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_4 \
    op interface \
    ports { conv62_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name conv62_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_5 \
    op interface \
    ports { conv62_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name conv62_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_6 \
    op interface \
    ports { conv62_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name conv62_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_7 \
    op interface \
    ports { conv62_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name conv62_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_8 \
    op interface \
    ports { conv62_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name conv62_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_9 \
    op interface \
    ports { conv62_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name conv62_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_10 \
    op interface \
    ports { conv62_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name conv62_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_11 \
    op interface \
    ports { conv62_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name conv62_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_12 \
    op interface \
    ports { conv62_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name conv62_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_13 \
    op interface \
    ports { conv62_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name conv62_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv62_14 \
    op interface \
    ports { conv62_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name conv8520_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv8520_out \
    op interface \
    ports { conv8520_out { O 1 vector } conv8520_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name conv7919_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv7919_out \
    op interface \
    ports { conv7919_out { O 32 vector } conv7919_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name conv67_1418_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1418_out \
    op interface \
    ports { conv67_1418_out { O 32 vector } conv67_1418_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name conv67_1317_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1317_out \
    op interface \
    ports { conv67_1317_out { O 32 vector } conv67_1317_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name conv67_1216_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1216_out \
    op interface \
    ports { conv67_1216_out { O 32 vector } conv67_1216_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name conv67_1115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1115_out \
    op interface \
    ports { conv67_1115_out { O 32 vector } conv67_1115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name conv67_1014_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_1014_out \
    op interface \
    ports { conv67_1014_out { O 32 vector } conv67_1014_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name conv67_913_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_913_out \
    op interface \
    ports { conv67_913_out { O 32 vector } conv67_913_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name conv67_812_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_812_out \
    op interface \
    ports { conv67_812_out { O 32 vector } conv67_812_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name conv67_711_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_711_out \
    op interface \
    ports { conv67_711_out { O 32 vector } conv67_711_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name conv67_610_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_610_out \
    op interface \
    ports { conv67_610_out { O 32 vector } conv67_610_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name conv67_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_59_out \
    op interface \
    ports { conv67_59_out { O 32 vector } conv67_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name conv67_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_48_out \
    op interface \
    ports { conv67_48_out { O 32 vector } conv67_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name conv67_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_37_out \
    op interface \
    ports { conv67_37_out { O 32 vector } conv67_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name conv67_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_26_out \
    op interface \
    ports { conv67_26_out { O 32 vector } conv67_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name conv67_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv67_15_out \
    op interface \
    ports { conv67_15_out { O 32 vector } conv67_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name conv671_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv671_out \
    op interface \
    ports { conv671_out { O 32 vector } conv671_out_ap_vld { O 1 bit } } \
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
set InstName rsa_modexp_hw_flow_control_loop_pipe_sequential_init_U
set CompName rsa_modexp_hw_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix rsa_modexp_hw_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


