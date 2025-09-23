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
    id 1366 \
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
    id 1334 \
    name tt1_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_67 \
    op interface \
    ports { tt1_67 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1335 \
    name tt1_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_68 \
    op interface \
    ports { tt1_68 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1336 \
    name tt1_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_69 \
    op interface \
    ports { tt1_69 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1337 \
    name tt1_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_70 \
    op interface \
    ports { tt1_70 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1338 \
    name tt1_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_71 \
    op interface \
    ports { tt1_71 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1339 \
    name tt1_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_72 \
    op interface \
    ports { tt1_72 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1340 \
    name tt1_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_73 \
    op interface \
    ports { tt1_73 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1341 \
    name tt1_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_74 \
    op interface \
    ports { tt1_74 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1342 \
    name tt1_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_75 \
    op interface \
    ports { tt1_75 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1343 \
    name tt1_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_76 \
    op interface \
    ports { tt1_76 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1344 \
    name tt1_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_77 \
    op interface \
    ports { tt1_77 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1345 \
    name tt1_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_78 \
    op interface \
    ports { tt1_78 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1346 \
    name tt1_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_79 \
    op interface \
    ports { tt1_79 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1347 \
    name tt1_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_80 \
    op interface \
    ports { tt1_80 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1348 \
    name tt1_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_81 \
    op interface \
    ports { tt1_81 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1349 \
    name tt1_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_82 \
    op interface \
    ports { tt1_82 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1350 \
    name tt2_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_115 \
    op interface \
    ports { tt2_115 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1351 \
    name tt2_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_116 \
    op interface \
    ports { tt2_116 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1352 \
    name tt2_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_117 \
    op interface \
    ports { tt2_117 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1353 \
    name tt2_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_118 \
    op interface \
    ports { tt2_118 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1354 \
    name tt2_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_119 \
    op interface \
    ports { tt2_119 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1355 \
    name tt2_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_120 \
    op interface \
    ports { tt2_120 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1356 \
    name tt2_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_121 \
    op interface \
    ports { tt2_121 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1357 \
    name tt2_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_122 \
    op interface \
    ports { tt2_122 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1358 \
    name tt2_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_123 \
    op interface \
    ports { tt2_123 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1359 \
    name tt2_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_124 \
    op interface \
    ports { tt2_124 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1360 \
    name tt2_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_125 \
    op interface \
    ports { tt2_125 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1361 \
    name tt2_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_126 \
    op interface \
    ports { tt2_126 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1362 \
    name tt2_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_127 \
    op interface \
    ports { tt2_127 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1363 \
    name tt2_128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_128 \
    op interface \
    ports { tt2_128 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1364 \
    name tt2_129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_129 \
    op interface \
    ports { tt2_129 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1365 \
    name tt2_130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_130 \
    op interface \
    ports { tt2_130 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1367 \
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


