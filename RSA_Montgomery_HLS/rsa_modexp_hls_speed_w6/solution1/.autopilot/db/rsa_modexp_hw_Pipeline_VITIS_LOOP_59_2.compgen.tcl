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
    ports { table_r_address0 { O 10 vector } table_r_ce0 { O 1 bit } table_r_we0 { O 1 bit } table_r_d0 { O 32 vector } table_r_q0 { I 32 vector } table_r_address1 { O 10 vector } table_r_ce1 { O 1 bit } table_r_we1 { O 1 bit } table_r_d1 { O 32 vector } table_r_q1 { I 32 vector } } \
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
    name p_cast_cast2003 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast_cast2003 \
    op interface \
    ports { p_cast_cast2003 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name p_cast2000_cast2004 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2000_cast2004 \
    op interface \
    ports { p_cast2000_cast2004 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name p_cast2005 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2005 \
    op interface \
    ports { p_cast2005 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name p_cast2006 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2006 \
    op interface \
    ports { p_cast2006 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name p_cast2007 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2007 \
    op interface \
    ports { p_cast2007 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name p_cast2008 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2008 \
    op interface \
    ports { p_cast2008 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name p_cast2009 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2009 \
    op interface \
    ports { p_cast2009 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name p_cast2010 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2010 \
    op interface \
    ports { p_cast2010 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name p_cast2011 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2011 \
    op interface \
    ports { p_cast2011 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_cast2012 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2012 \
    op interface \
    ports { p_cast2012 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_cast2013 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2013 \
    op interface \
    ports { p_cast2013 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_cast2014 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2014 \
    op interface \
    ports { p_cast2014 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_cast2015 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2015 \
    op interface \
    ports { p_cast2015 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_cast2016 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2016 \
    op interface \
    ports { p_cast2016 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_cast2017 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2017 \
    op interface \
    ports { p_cast2017 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_cast2018 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2018 \
    op interface \
    ports { p_cast2018 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_cast2019 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2019 \
    op interface \
    ports { p_cast2019 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_cast2020 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2020 \
    op interface \
    ports { p_cast2020 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name p_cast2021 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2021 \
    op interface \
    ports { p_cast2021 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name p_cast2022 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2022 \
    op interface \
    ports { p_cast2022 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name p_cast2023 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2023 \
    op interface \
    ports { p_cast2023 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name p_cast2024 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2024 \
    op interface \
    ports { p_cast2024 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name p_cast2025 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2025 \
    op interface \
    ports { p_cast2025 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name p_cast2026 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2026 \
    op interface \
    ports { p_cast2026 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name p_cast2027 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2027 \
    op interface \
    ports { p_cast2027 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name p_cast2028 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2028 \
    op interface \
    ports { p_cast2028 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name p_cast2029 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2029 \
    op interface \
    ports { p_cast2029 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name p_cast2030 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2030 \
    op interface \
    ports { p_cast2030 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name p_cast2031 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2031 \
    op interface \
    ports { p_cast2031 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name p_cast2032 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2032 \
    op interface \
    ports { p_cast2032 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name p_cast2033 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2033 \
    op interface \
    ports { p_cast2033 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name p_cast2034 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast2034 \
    op interface \
    ports { p_cast2034 { I 63 vector } } \
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


