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
    id 244 \
    name x \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename x \
    op interface \
    ports { x_address0 { O 4 vector } x_ce0 { O 1 bit } x_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name t_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_57 \
    op interface \
    ports { t_load_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name t_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_56 \
    op interface \
    ports { t_load_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name t_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_55 \
    op interface \
    ports { t_load_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name t_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_54 \
    op interface \
    ports { t_load_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name t_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_53 \
    op interface \
    ports { t_load_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name t_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_52 \
    op interface \
    ports { t_load_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name t_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_51 \
    op interface \
    ports { t_load_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name t_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_50 \
    op interface \
    ports { t_load_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name t_load_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_49 \
    op interface \
    ports { t_load_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name t_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_48 \
    op interface \
    ports { t_load_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name t_load_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_47 \
    op interface \
    ports { t_load_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name t_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_46 \
    op interface \
    ports { t_load_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name t_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_45 \
    op interface \
    ports { t_load_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name t_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_44 \
    op interface \
    ports { t_load_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name t_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_43 \
    op interface \
    ports { t_load_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name t_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_42 \
    op interface \
    ports { t_load_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name t_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_41 \
    op interface \
    ports { t_load_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name t_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load \
    op interface \
    ports { t_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
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
    id 243 \
    name p_cast_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast_cast \
    op interface \
    ports { p_cast_cast { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name sext_ln39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39 \
    op interface \
    ports { sext_ln39 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name sext_ln39_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_1 \
    op interface \
    ports { sext_ln39_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name sext_ln39_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_2 \
    op interface \
    ports { sext_ln39_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name sext_ln39_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_3 \
    op interface \
    ports { sext_ln39_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name sext_ln39_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_4 \
    op interface \
    ports { sext_ln39_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name sext_ln39_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_5 \
    op interface \
    ports { sext_ln39_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name sext_ln39_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_6 \
    op interface \
    ports { sext_ln39_6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name sext_ln39_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_7 \
    op interface \
    ports { sext_ln39_7 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name sext_ln39_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_8 \
    op interface \
    ports { sext_ln39_8 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name sext_ln39_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_9 \
    op interface \
    ports { sext_ln39_9 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name sext_ln39_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_10 \
    op interface \
    ports { sext_ln39_10 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name sext_ln39_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_11 \
    op interface \
    ports { sext_ln39_11 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name sext_ln39_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_12 \
    op interface \
    ports { sext_ln39_12 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name sext_ln39_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_13 \
    op interface \
    ports { sext_ln39_13 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name sext_ln39_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_14 \
    op interface \
    ports { sext_ln39_14 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name sext_ln39_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln39_15 \
    op interface \
    ports { sext_ln39_15 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
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
    id 262 \
    name add6822_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add6822_out \
    op interface \
    ports { add6822_out { O 32 vector } add6822_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name conv6321_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv6321_out \
    op interface \
    ports { conv6321_out { O 32 vector } conv6321_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name conv52_1520_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1520_out \
    op interface \
    ports { conv52_1520_out { O 32 vector } conv52_1520_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name conv52_1419_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1419_out \
    op interface \
    ports { conv52_1419_out { O 32 vector } conv52_1419_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name conv52_1318_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1318_out \
    op interface \
    ports { conv52_1318_out { O 32 vector } conv52_1318_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name conv52_1217_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1217_out \
    op interface \
    ports { conv52_1217_out { O 32 vector } conv52_1217_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name conv52_1116_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1116_out \
    op interface \
    ports { conv52_1116_out { O 32 vector } conv52_1116_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name conv52_1015_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1015_out \
    op interface \
    ports { conv52_1015_out { O 32 vector } conv52_1015_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name conv52_914_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_914_out \
    op interface \
    ports { conv52_914_out { O 32 vector } conv52_914_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name conv52_813_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_813_out \
    op interface \
    ports { conv52_813_out { O 32 vector } conv52_813_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name conv52_712_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_712_out \
    op interface \
    ports { conv52_712_out { O 32 vector } conv52_712_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name conv52_611_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_611_out \
    op interface \
    ports { conv52_611_out { O 32 vector } conv52_611_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name conv52_510_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_510_out \
    op interface \
    ports { conv52_510_out { O 32 vector } conv52_510_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name conv52_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_49_out \
    op interface \
    ports { conv52_49_out { O 32 vector } conv52_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name conv52_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_38_out \
    op interface \
    ports { conv52_38_out { O 32 vector } conv52_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name conv52_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_27_out \
    op interface \
    ports { conv52_27_out { O 32 vector } conv52_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name conv52_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_16_out \
    op interface \
    ports { conv52_16_out { O 32 vector } conv52_16_out_ap_vld { O 1 bit } } \
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


