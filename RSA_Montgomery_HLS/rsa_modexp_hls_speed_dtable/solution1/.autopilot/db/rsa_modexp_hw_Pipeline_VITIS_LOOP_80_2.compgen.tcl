# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_80_2_batch_dstA_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_80_2_batch_dstB_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_80_2_batch_aA_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_80_2_batch_bA_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler rsa_modexp_hw_rsa_modexp_hw_Pipeline_VITIS_LOOP_80_2_batch_aB_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


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
    id 118 \
    name table_r \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename table_r \
    op interface \
    ports { table_r_address0 { O 9 vector } table_r_ce0 { O 1 bit } table_r_we0 { O 1 bit } table_r_d0 { O 32 vector } table_r_q0 { I 32 vector } table_r_address1 { O 9 vector } table_r_ce1 { O 1 bit } table_r_we1 { O 1 bit } table_r_d1 { O 32 vector } table_r_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'table_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name opx \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx \
    op interface \
    ports { opx_address0 { O 1 vector } opx_ce0 { O 1 bit } opx_we0 { O 1 bit } opx_d0 { O 32 vector } opx_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name opx_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_1 \
    op interface \
    ports { opx_1_address0 { O 1 vector } opx_1_ce0 { O 1 bit } opx_1_we0 { O 1 bit } opx_1_d0 { O 32 vector } opx_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name opx_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_2 \
    op interface \
    ports { opx_2_address0 { O 1 vector } opx_2_ce0 { O 1 bit } opx_2_we0 { O 1 bit } opx_2_d0 { O 32 vector } opx_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name opx_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_3 \
    op interface \
    ports { opx_3_address0 { O 1 vector } opx_3_ce0 { O 1 bit } opx_3_we0 { O 1 bit } opx_3_d0 { O 32 vector } opx_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name opx_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_4 \
    op interface \
    ports { opx_4_address0 { O 1 vector } opx_4_ce0 { O 1 bit } opx_4_we0 { O 1 bit } opx_4_d0 { O 32 vector } opx_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name opx_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_5 \
    op interface \
    ports { opx_5_address0 { O 1 vector } opx_5_ce0 { O 1 bit } opx_5_we0 { O 1 bit } opx_5_d0 { O 32 vector } opx_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name opx_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_6 \
    op interface \
    ports { opx_6_address0 { O 1 vector } opx_6_ce0 { O 1 bit } opx_6_we0 { O 1 bit } opx_6_d0 { O 32 vector } opx_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name opx_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_7 \
    op interface \
    ports { opx_7_address0 { O 1 vector } opx_7_ce0 { O 1 bit } opx_7_we0 { O 1 bit } opx_7_d0 { O 32 vector } opx_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name opx_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_8 \
    op interface \
    ports { opx_8_address0 { O 1 vector } opx_8_ce0 { O 1 bit } opx_8_we0 { O 1 bit } opx_8_d0 { O 32 vector } opx_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name opx_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_9 \
    op interface \
    ports { opx_9_address0 { O 1 vector } opx_9_ce0 { O 1 bit } opx_9_we0 { O 1 bit } opx_9_d0 { O 32 vector } opx_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name opx_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_10 \
    op interface \
    ports { opx_10_address0 { O 1 vector } opx_10_ce0 { O 1 bit } opx_10_we0 { O 1 bit } opx_10_d0 { O 32 vector } opx_10_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name opx_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_11 \
    op interface \
    ports { opx_11_address0 { O 1 vector } opx_11_ce0 { O 1 bit } opx_11_we0 { O 1 bit } opx_11_d0 { O 32 vector } opx_11_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name opx_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_12 \
    op interface \
    ports { opx_12_address0 { O 1 vector } opx_12_ce0 { O 1 bit } opx_12_we0 { O 1 bit } opx_12_d0 { O 32 vector } opx_12_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name opx_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_13 \
    op interface \
    ports { opx_13_address0 { O 1 vector } opx_13_ce0 { O 1 bit } opx_13_we0 { O 1 bit } opx_13_d0 { O 32 vector } opx_13_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name opx_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_14 \
    op interface \
    ports { opx_14_address0 { O 1 vector } opx_14_ce0 { O 1 bit } opx_14_we0 { O 1 bit } opx_14_d0 { O 32 vector } opx_14_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name opx_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename opx_15 \
    op interface \
    ports { opx_15_address0 { O 1 vector } opx_15_ce0 { O 1 bit } opx_15_we0 { O 1 bit } opx_15_d0 { O 32 vector } opx_15_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'opx_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
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
    id 116 \
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
    id 117 \
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
    id 119 \
    name one_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_cast \
    op interface \
    ports { one_load_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name one_load_1_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_1_cast \
    op interface \
    ports { one_load_1_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name one_load_2_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_2_cast \
    op interface \
    ports { one_load_2_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name one_load_3_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_3_cast \
    op interface \
    ports { one_load_3_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name one_load_4_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_4_cast \
    op interface \
    ports { one_load_4_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name one_load_5_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_5_cast \
    op interface \
    ports { one_load_5_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name one_load_6_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_6_cast \
    op interface \
    ports { one_load_6_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name one_load_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_7_cast \
    op interface \
    ports { one_load_7_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name one_load_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_8_cast \
    op interface \
    ports { one_load_8_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name one_load_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_9_cast \
    op interface \
    ports { one_load_9_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name one_load_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_10_cast \
    op interface \
    ports { one_load_10_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name one_load_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_11_cast \
    op interface \
    ports { one_load_11_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name one_load_12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_12_cast \
    op interface \
    ports { one_load_12_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name one_load_13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_13_cast \
    op interface \
    ports { one_load_13_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name one_load_14_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_one_load_14_cast \
    op interface \
    ports { one_load_14_cast { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name p_cast_cast979 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast_cast979 \
    op interface \
    ports { p_cast_cast979 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name p_cast976_cast980 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast976_cast980 \
    op interface \
    ports { p_cast976_cast980 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name p_cast981 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast981 \
    op interface \
    ports { p_cast981 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name p_cast982 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast982 \
    op interface \
    ports { p_cast982 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name p_cast983 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast983 \
    op interface \
    ports { p_cast983 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name p_cast984 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast984 \
    op interface \
    ports { p_cast984 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name p_cast985 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast985 \
    op interface \
    ports { p_cast985 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name p_cast986 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast986 \
    op interface \
    ports { p_cast986 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name p_cast987 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast987 \
    op interface \
    ports { p_cast987 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name p_cast988 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast988 \
    op interface \
    ports { p_cast988 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name p_cast989 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast989 \
    op interface \
    ports { p_cast989 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name p_cast990 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast990 \
    op interface \
    ports { p_cast990 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name p_cast991 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast991 \
    op interface \
    ports { p_cast991 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name p_cast992 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast992 \
    op interface \
    ports { p_cast992 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name p_cast993 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast993 \
    op interface \
    ports { p_cast993 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name p_cast994 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast994 \
    op interface \
    ports { p_cast994 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name p_cast995 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast995 \
    op interface \
    ports { p_cast995 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name p_cast996 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast996 \
    op interface \
    ports { p_cast996 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name p_cast997 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast997 \
    op interface \
    ports { p_cast997 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name p_cast998 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast998 \
    op interface \
    ports { p_cast998 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name p_cast999 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast999 \
    op interface \
    ports { p_cast999 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name p_cast1000 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1000 \
    op interface \
    ports { p_cast1000 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name p_cast1001 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1001 \
    op interface \
    ports { p_cast1001 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name p_cast1002 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1002 \
    op interface \
    ports { p_cast1002 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name p_cast1003 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1003 \
    op interface \
    ports { p_cast1003 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name p_cast1004 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1004 \
    op interface \
    ports { p_cast1004 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name p_cast1005 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1005 \
    op interface \
    ports { p_cast1005 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name p_cast1006 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1006 \
    op interface \
    ports { p_cast1006 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name p_cast1007 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1007 \
    op interface \
    ports { p_cast1007 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name p_cast1008 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1008 \
    op interface \
    ports { p_cast1008 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name p_cast1009 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1009 \
    op interface \
    ports { p_cast1009 { I 63 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name p_cast1010 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast1010 \
    op interface \
    ports { p_cast1010 { I 63 vector } } \
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


