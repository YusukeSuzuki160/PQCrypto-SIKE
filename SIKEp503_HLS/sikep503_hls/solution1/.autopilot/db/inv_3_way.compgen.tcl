# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_inv_3_way_t3_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 6319 \
    name z1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z1_0 \
    op interface \
    ports { z1_0_address0 { O 1 vector } z1_0_ce0 { O 1 bit } z1_0_we0 { O 1 bit } z1_0_d0 { O 64 vector } z1_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6320 \
    name z1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z1_1 \
    op interface \
    ports { z1_1_address0 { O 1 vector } z1_1_ce0 { O 1 bit } z1_1_we0 { O 1 bit } z1_1_d0 { O 64 vector } z1_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6321 \
    name z1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z1_2 \
    op interface \
    ports { z1_2_address0 { O 1 vector } z1_2_ce0 { O 1 bit } z1_2_we0 { O 1 bit } z1_2_d0 { O 64 vector } z1_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6322 \
    name z1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z1_3 \
    op interface \
    ports { z1_3_address0 { O 1 vector } z1_3_ce0 { O 1 bit } z1_3_we0 { O 1 bit } z1_3_d0 { O 64 vector } z1_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6323 \
    name z1_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z1_4 \
    op interface \
    ports { z1_4_address0 { O 1 vector } z1_4_ce0 { O 1 bit } z1_4_we0 { O 1 bit } z1_4_d0 { O 64 vector } z1_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6324 \
    name z1_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z1_5 \
    op interface \
    ports { z1_5_address0 { O 1 vector } z1_5_ce0 { O 1 bit } z1_5_we0 { O 1 bit } z1_5_d0 { O 64 vector } z1_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6325 \
    name z1_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z1_6 \
    op interface \
    ports { z1_6_address0 { O 1 vector } z1_6_ce0 { O 1 bit } z1_6_we0 { O 1 bit } z1_6_d0 { O 64 vector } z1_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6326 \
    name z1_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z1_7 \
    op interface \
    ports { z1_7_address0 { O 1 vector } z1_7_ce0 { O 1 bit } z1_7_we0 { O 1 bit } z1_7_d0 { O 64 vector } z1_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6327 \
    name z2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z2_0 \
    op interface \
    ports { z2_0_address0 { O 1 vector } z2_0_ce0 { O 1 bit } z2_0_we0 { O 1 bit } z2_0_d0 { O 64 vector } z2_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6328 \
    name z2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z2_1 \
    op interface \
    ports { z2_1_address0 { O 1 vector } z2_1_ce0 { O 1 bit } z2_1_we0 { O 1 bit } z2_1_d0 { O 64 vector } z2_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6329 \
    name z2_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z2_2 \
    op interface \
    ports { z2_2_address0 { O 1 vector } z2_2_ce0 { O 1 bit } z2_2_we0 { O 1 bit } z2_2_d0 { O 64 vector } z2_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6330 \
    name z2_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z2_3 \
    op interface \
    ports { z2_3_address0 { O 1 vector } z2_3_ce0 { O 1 bit } z2_3_we0 { O 1 bit } z2_3_d0 { O 64 vector } z2_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6331 \
    name z2_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z2_4 \
    op interface \
    ports { z2_4_address0 { O 1 vector } z2_4_ce0 { O 1 bit } z2_4_we0 { O 1 bit } z2_4_d0 { O 64 vector } z2_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6332 \
    name z2_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z2_5 \
    op interface \
    ports { z2_5_address0 { O 1 vector } z2_5_ce0 { O 1 bit } z2_5_we0 { O 1 bit } z2_5_d0 { O 64 vector } z2_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6333 \
    name z2_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z2_6 \
    op interface \
    ports { z2_6_address0 { O 1 vector } z2_6_ce0 { O 1 bit } z2_6_we0 { O 1 bit } z2_6_d0 { O 64 vector } z2_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6334 \
    name z2_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z2_7 \
    op interface \
    ports { z2_7_address0 { O 1 vector } z2_7_ce0 { O 1 bit } z2_7_we0 { O 1 bit } z2_7_d0 { O 64 vector } z2_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6335 \
    name z3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z3_0 \
    op interface \
    ports { z3_0_address0 { O 1 vector } z3_0_ce0 { O 1 bit } z3_0_we0 { O 1 bit } z3_0_d0 { O 64 vector } z3_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6336 \
    name z3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z3_1 \
    op interface \
    ports { z3_1_address0 { O 1 vector } z3_1_ce0 { O 1 bit } z3_1_we0 { O 1 bit } z3_1_d0 { O 64 vector } z3_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6337 \
    name z3_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z3_2 \
    op interface \
    ports { z3_2_address0 { O 1 vector } z3_2_ce0 { O 1 bit } z3_2_we0 { O 1 bit } z3_2_d0 { O 64 vector } z3_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6338 \
    name z3_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z3_3 \
    op interface \
    ports { z3_3_address0 { O 1 vector } z3_3_ce0 { O 1 bit } z3_3_we0 { O 1 bit } z3_3_d0 { O 64 vector } z3_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6339 \
    name z3_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z3_4 \
    op interface \
    ports { z3_4_address0 { O 1 vector } z3_4_ce0 { O 1 bit } z3_4_we0 { O 1 bit } z3_4_d0 { O 64 vector } z3_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z3_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6340 \
    name z3_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z3_5 \
    op interface \
    ports { z3_5_address0 { O 1 vector } z3_5_ce0 { O 1 bit } z3_5_we0 { O 1 bit } z3_5_d0 { O 64 vector } z3_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z3_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6341 \
    name z3_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z3_6 \
    op interface \
    ports { z3_6_address0 { O 1 vector } z3_6_ce0 { O 1 bit } z3_6_we0 { O 1 bit } z3_6_d0 { O 64 vector } z3_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z3_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6342 \
    name z3_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename z3_7 \
    op interface \
    ports { z3_7_address0 { O 1 vector } z3_7_ce0 { O 1 bit } z3_7_we0 { O 1 bit } z3_7_d0 { O 64 vector } z3_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'z3_7'"
}
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


