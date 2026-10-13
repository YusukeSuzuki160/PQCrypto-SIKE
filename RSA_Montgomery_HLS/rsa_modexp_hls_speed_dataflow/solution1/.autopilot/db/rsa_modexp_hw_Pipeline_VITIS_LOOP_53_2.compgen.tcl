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
    id 159 \
    name table_r \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename table_r \
    op interface \
    ports { table_r_address0 { O 8 vector } table_r_ce0 { O 1 bit } table_r_we0 { O 1 bit } table_r_d0 { O 32 vector } table_r_q0 { I 32 vector } table_r_address1 { O 8 vector } table_r_ce1 { O 1 bit } table_r_we1 { O 1 bit } table_r_d1 { O 32 vector } table_r_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'table_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_0_AWVALID { O 1 bit } m_axi_gmem_0_AWREADY { I 1 bit } m_axi_gmem_0_AWADDR { O 64 vector } m_axi_gmem_0_AWID { O 1 vector } m_axi_gmem_0_AWLEN { O 32 vector } m_axi_gmem_0_AWSIZE { O 3 vector } m_axi_gmem_0_AWBURST { O 2 vector } m_axi_gmem_0_AWLOCK { O 2 vector } m_axi_gmem_0_AWCACHE { O 4 vector } m_axi_gmem_0_AWPROT { O 3 vector } m_axi_gmem_0_AWQOS { O 4 vector } m_axi_gmem_0_AWREGION { O 4 vector } m_axi_gmem_0_AWUSER { O 1 vector } m_axi_gmem_0_WVALID { O 1 bit } m_axi_gmem_0_WREADY { I 1 bit } m_axi_gmem_0_WDATA { O 32 vector } m_axi_gmem_0_WSTRB { O 4 vector } m_axi_gmem_0_WLAST { O 1 bit } m_axi_gmem_0_WID { O 1 vector } m_axi_gmem_0_WUSER { O 1 vector } m_axi_gmem_0_ARVALID { O 1 bit } m_axi_gmem_0_ARREADY { I 1 bit } m_axi_gmem_0_ARADDR { O 64 vector } m_axi_gmem_0_ARID { O 1 vector } m_axi_gmem_0_ARLEN { O 32 vector } m_axi_gmem_0_ARSIZE { O 3 vector } m_axi_gmem_0_ARBURST { O 2 vector } m_axi_gmem_0_ARLOCK { O 2 vector } m_axi_gmem_0_ARCACHE { O 4 vector } m_axi_gmem_0_ARPROT { O 3 vector } m_axi_gmem_0_ARQOS { O 4 vector } m_axi_gmem_0_ARREGION { O 4 vector } m_axi_gmem_0_ARUSER { O 1 vector } m_axi_gmem_0_RVALID { I 1 bit } m_axi_gmem_0_RREADY { O 1 bit } m_axi_gmem_0_RDATA { I 32 vector } m_axi_gmem_0_RLAST { I 1 bit } m_axi_gmem_0_RID { I 1 vector } m_axi_gmem_0_RFIFONUM { I 9 vector } m_axi_gmem_0_RUSER { I 1 vector } m_axi_gmem_0_RRESP { I 2 vector } m_axi_gmem_0_BVALID { I 1 bit } m_axi_gmem_0_BREADY { O 1 bit } m_axi_gmem_0_BRESP { I 2 vector } m_axi_gmem_0_BID { I 1 vector } m_axi_gmem_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name opx_30_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_30_cast \
    op interface \
    ports { opx_30_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name opx_29_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_29_cast \
    op interface \
    ports { opx_29_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name opx_28_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_28_cast \
    op interface \
    ports { opx_28_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name opx_27_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_27_cast \
    op interface \
    ports { opx_27_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name opx_26_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_26_cast \
    op interface \
    ports { opx_26_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name opx_25_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_25_cast \
    op interface \
    ports { opx_25_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name opx_24_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_24_cast \
    op interface \
    ports { opx_24_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name opx_23_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_23_cast \
    op interface \
    ports { opx_23_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name opx_22_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_22_cast \
    op interface \
    ports { opx_22_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name opx_21_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_21_cast \
    op interface \
    ports { opx_21_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name opx_20_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_20_cast \
    op interface \
    ports { opx_20_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name opx_19_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_19_cast \
    op interface \
    ports { opx_19_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name opx_18_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_18_cast \
    op interface \
    ports { opx_18_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name opx_17_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_17_cast \
    op interface \
    ports { opx_17_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name opx_16_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_opx_16_cast \
    op interface \
    ports { opx_16_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name m \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_m \
    op interface \
    ports { m { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
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
    id 127 \
    name p_cast_cast90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast_cast90 \
    op interface \
    ports { p_cast_cast90 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name p_cast89_cast91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast89_cast91 \
    op interface \
    ports { p_cast89_cast91 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name p_cast92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast92 \
    op interface \
    ports { p_cast92 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name p_cast93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast93 \
    op interface \
    ports { p_cast93 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name p_cast94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast94 \
    op interface \
    ports { p_cast94 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name p_cast95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast95 \
    op interface \
    ports { p_cast95 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name p_cast96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast96 \
    op interface \
    ports { p_cast96 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name p_cast97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast97 \
    op interface \
    ports { p_cast97 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name p_cast98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast98 \
    op interface \
    ports { p_cast98 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_cast99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast99 \
    op interface \
    ports { p_cast99 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_cast100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast100 \
    op interface \
    ports { p_cast100 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_cast101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast101 \
    op interface \
    ports { p_cast101 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_cast102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast102 \
    op interface \
    ports { p_cast102 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_cast103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast103 \
    op interface \
    ports { p_cast103 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_cast104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast104 \
    op interface \
    ports { p_cast104 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_cast105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast105 \
    op interface \
    ports { p_cast105 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_cast106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast106 \
    op interface \
    ports { p_cast106 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_cast107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast107 \
    op interface \
    ports { p_cast107 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name p_cast108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast108 \
    op interface \
    ports { p_cast108 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name p_cast109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast109 \
    op interface \
    ports { p_cast109 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name p_cast110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast110 \
    op interface \
    ports { p_cast110 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name p_cast111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast111 \
    op interface \
    ports { p_cast111 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name p_cast112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast112 \
    op interface \
    ports { p_cast112 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name p_cast113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast113 \
    op interface \
    ports { p_cast113 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name p_cast114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast114 \
    op interface \
    ports { p_cast114 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name p_cast115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast115 \
    op interface \
    ports { p_cast115 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name p_cast116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast116 \
    op interface \
    ports { p_cast116 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name p_cast117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast117 \
    op interface \
    ports { p_cast117 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name p_cast118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast118 \
    op interface \
    ports { p_cast118 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name p_cast119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast119 \
    op interface \
    ports { p_cast119 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name p_cast120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast120 \
    op interface \
    ports { p_cast120 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name p_cast121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast121 \
    op interface \
    ports { p_cast121 { I 63 vector } } \
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


