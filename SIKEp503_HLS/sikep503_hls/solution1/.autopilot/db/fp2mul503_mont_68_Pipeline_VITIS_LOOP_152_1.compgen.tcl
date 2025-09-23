# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_sparsemux_33_4_64_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
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
    id 1217 \
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
    id 1185 \
    name tt1_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_118 \
    op interface \
    ports { tt1_118 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1186 \
    name tt1_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_119 \
    op interface \
    ports { tt1_119 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1187 \
    name tt1_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_120 \
    op interface \
    ports { tt1_120 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1188 \
    name tt1_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_121 \
    op interface \
    ports { tt1_121 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1189 \
    name tt1_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_122 \
    op interface \
    ports { tt1_122 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1190 \
    name tt1_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_123 \
    op interface \
    ports { tt1_123 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1191 \
    name tt1_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_124 \
    op interface \
    ports { tt1_124 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1192 \
    name tt1_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_125 \
    op interface \
    ports { tt1_125 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1193 \
    name tt1_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_126 \
    op interface \
    ports { tt1_126 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1194 \
    name tt1_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_127 \
    op interface \
    ports { tt1_127 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1195 \
    name tt1_128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_128 \
    op interface \
    ports { tt1_128 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1196 \
    name tt1_129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_129 \
    op interface \
    ports { tt1_129 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1197 \
    name tt1_130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_130 \
    op interface \
    ports { tt1_130 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1198 \
    name tt1_131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_131 \
    op interface \
    ports { tt1_131 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1199 \
    name tt1_132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_132 \
    op interface \
    ports { tt1_132 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1200 \
    name tt1_133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_133 \
    op interface \
    ports { tt1_133 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1201 \
    name tt2_214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_214 \
    op interface \
    ports { tt2_214 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1202 \
    name tt2_215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_215 \
    op interface \
    ports { tt2_215 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1203 \
    name tt2_216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_216 \
    op interface \
    ports { tt2_216 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1204 \
    name tt2_217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_217 \
    op interface \
    ports { tt2_217 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1205 \
    name tt2_218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_218 \
    op interface \
    ports { tt2_218 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1206 \
    name tt2_219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_219 \
    op interface \
    ports { tt2_219 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1207 \
    name tt2_220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_220 \
    op interface \
    ports { tt2_220 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1208 \
    name tt2_221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_221 \
    op interface \
    ports { tt2_221 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1209 \
    name tt2_222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_222 \
    op interface \
    ports { tt2_222 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1210 \
    name tt2_223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_223 \
    op interface \
    ports { tt2_223 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1211 \
    name tt2_224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_224 \
    op interface \
    ports { tt2_224 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1212 \
    name tt2_225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_225 \
    op interface \
    ports { tt2_225 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1213 \
    name tt2_226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_226 \
    op interface \
    ports { tt2_226 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1214 \
    name tt2_227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_227 \
    op interface \
    ports { tt2_227 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1215 \
    name tt2_228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_228 \
    op interface \
    ports { tt2_228 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1216 \
    name tt2_229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_229 \
    op interface \
    ports { tt2_229 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1218 \
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


