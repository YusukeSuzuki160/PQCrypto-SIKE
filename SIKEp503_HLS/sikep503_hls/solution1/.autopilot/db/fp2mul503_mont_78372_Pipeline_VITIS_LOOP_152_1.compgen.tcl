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
    id 6746 \
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
    id 6714 \
    name tt1_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_50 \
    op interface \
    ports { tt1_50 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6715 \
    name tt1_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_51 \
    op interface \
    ports { tt1_51 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6716 \
    name tt1_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_52 \
    op interface \
    ports { tt1_52 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6717 \
    name tt1_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_53 \
    op interface \
    ports { tt1_53 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6718 \
    name tt1_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_54 \
    op interface \
    ports { tt1_54 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6719 \
    name tt1_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_55 \
    op interface \
    ports { tt1_55 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6720 \
    name tt1_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_56 \
    op interface \
    ports { tt1_56 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6721 \
    name tt1_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_57 \
    op interface \
    ports { tt1_57 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6722 \
    name tt1_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_58 \
    op interface \
    ports { tt1_58 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6723 \
    name tt1_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_59 \
    op interface \
    ports { tt1_59 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6724 \
    name tt1_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_60 \
    op interface \
    ports { tt1_60 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6725 \
    name tt1_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_61 \
    op interface \
    ports { tt1_61 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6726 \
    name tt1_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_62 \
    op interface \
    ports { tt1_62 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6727 \
    name tt1_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_63 \
    op interface \
    ports { tt1_63 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6728 \
    name tt1_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_64 \
    op interface \
    ports { tt1_64 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6729 \
    name tt1_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_65 \
    op interface \
    ports { tt1_65 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6730 \
    name tt2_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_82 \
    op interface \
    ports { tt2_82 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6731 \
    name tt2_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_83 \
    op interface \
    ports { tt2_83 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6732 \
    name tt2_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_84 \
    op interface \
    ports { tt2_84 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6733 \
    name tt2_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_85 \
    op interface \
    ports { tt2_85 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6734 \
    name tt2_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_86 \
    op interface \
    ports { tt2_86 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6735 \
    name tt2_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_87 \
    op interface \
    ports { tt2_87 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6736 \
    name tt2_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_88 \
    op interface \
    ports { tt2_88 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6737 \
    name tt2_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_89 \
    op interface \
    ports { tt2_89 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6738 \
    name tt2_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_90 \
    op interface \
    ports { tt2_90 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6739 \
    name tt2_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_91 \
    op interface \
    ports { tt2_91 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6740 \
    name tt2_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_92 \
    op interface \
    ports { tt2_92 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6741 \
    name tt2_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_93 \
    op interface \
    ports { tt2_93 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6742 \
    name tt2_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_94 \
    op interface \
    ports { tt2_94 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6743 \
    name tt2_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_95 \
    op interface \
    ports { tt2_95 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6744 \
    name tt2_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_96 \
    op interface \
    ports { tt2_96 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6745 \
    name tt2_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_97 \
    op interface \
    ports { tt2_97 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6747 \
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


