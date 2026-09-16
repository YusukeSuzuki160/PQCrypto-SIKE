# This script segment is generated automatically by AutoPilot

set name rsa_modexp_hw_mul_32ns_32ns_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name rsa_modexp_hw_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name a_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read \
    op interface \
    ports { a_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name a_read_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_16 \
    op interface \
    ports { a_read_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name a_read_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_17 \
    op interface \
    ports { a_read_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name a_read_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_18 \
    op interface \
    ports { a_read_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name a_read_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_19 \
    op interface \
    ports { a_read_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name a_read_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_20 \
    op interface \
    ports { a_read_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name a_read_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_21 \
    op interface \
    ports { a_read_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name a_read_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_22 \
    op interface \
    ports { a_read_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name a_read_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_23 \
    op interface \
    ports { a_read_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name a_read_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_24 \
    op interface \
    ports { a_read_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name a_read_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_25 \
    op interface \
    ports { a_read_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name a_read_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_26 \
    op interface \
    ports { a_read_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name a_read_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_27 \
    op interface \
    ports { a_read_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name a_read_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_28 \
    op interface \
    ports { a_read_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name a_read_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_29 \
    op interface \
    ports { a_read_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name a_read_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_30 \
    op interface \
    ports { a_read_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name b_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read \
    op interface \
    ports { b_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name b_read_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_46 \
    op interface \
    ports { b_read_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name b_read_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_47 \
    op interface \
    ports { b_read_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name b_read_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_48 \
    op interface \
    ports { b_read_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name b_read_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_49 \
    op interface \
    ports { b_read_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name b_read_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_50 \
    op interface \
    ports { b_read_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name b_read_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_51 \
    op interface \
    ports { b_read_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name b_read_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_52 \
    op interface \
    ports { b_read_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name b_read_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_53 \
    op interface \
    ports { b_read_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name b_read_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_54 \
    op interface \
    ports { b_read_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name b_read_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_55 \
    op interface \
    ports { b_read_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name b_read_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_56 \
    op interface \
    ports { b_read_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name b_read_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_57 \
    op interface \
    ports { b_read_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name b_read_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_58 \
    op interface \
    ports { b_read_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name b_read_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_59 \
    op interface \
    ports { b_read_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name b_read_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_read_60 \
    op interface \
    ports { b_read_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
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
    id 72 \
    name mod_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mod_r \
    op interface \
    ports { mod_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -5 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


