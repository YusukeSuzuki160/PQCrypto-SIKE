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
    id 1582 \
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
    id 1550 \
    name tt1_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_33 \
    op interface \
    ports { tt1_33 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1551 \
    name tt1_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_34 \
    op interface \
    ports { tt1_34 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1552 \
    name tt1_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_35 \
    op interface \
    ports { tt1_35 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1553 \
    name tt1_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_36 \
    op interface \
    ports { tt1_36 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1554 \
    name tt1_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_37 \
    op interface \
    ports { tt1_37 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1555 \
    name tt1_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_38 \
    op interface \
    ports { tt1_38 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1556 \
    name tt1_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_39 \
    op interface \
    ports { tt1_39 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1557 \
    name tt1_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_40 \
    op interface \
    ports { tt1_40 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1558 \
    name tt1_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_41 \
    op interface \
    ports { tt1_41 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1559 \
    name tt1_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_42 \
    op interface \
    ports { tt1_42 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1560 \
    name tt1_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_43 \
    op interface \
    ports { tt1_43 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1561 \
    name tt1_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_44 \
    op interface \
    ports { tt1_44 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1562 \
    name tt1_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_45 \
    op interface \
    ports { tt1_45 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1563 \
    name tt1_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_46 \
    op interface \
    ports { tt1_46 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1564 \
    name tt1_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_47 \
    op interface \
    ports { tt1_47 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1565 \
    name tt1_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt1_48 \
    op interface \
    ports { tt1_48 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1566 \
    name tt2_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_49 \
    op interface \
    ports { tt2_49 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1567 \
    name tt2_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_50 \
    op interface \
    ports { tt2_50 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1568 \
    name tt2_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_51 \
    op interface \
    ports { tt2_51 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1569 \
    name tt2_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_52 \
    op interface \
    ports { tt2_52 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1570 \
    name tt2_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_53 \
    op interface \
    ports { tt2_53 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1571 \
    name tt2_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_54 \
    op interface \
    ports { tt2_54 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1572 \
    name tt2_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_55 \
    op interface \
    ports { tt2_55 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1573 \
    name tt2_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_56 \
    op interface \
    ports { tt2_56 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1574 \
    name tt2_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_57 \
    op interface \
    ports { tt2_57 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1575 \
    name tt2_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_58 \
    op interface \
    ports { tt2_58 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1576 \
    name tt2_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_59 \
    op interface \
    ports { tt2_59 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1577 \
    name tt2_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_60 \
    op interface \
    ports { tt2_60 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1578 \
    name tt2_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_61 \
    op interface \
    ports { tt2_61 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1579 \
    name tt2_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_62 \
    op interface \
    ports { tt2_62 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1580 \
    name tt2_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_63 \
    op interface \
    ports { tt2_63 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1581 \
    name tt2_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt2_64 \
    op interface \
    ports { tt2_64 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1583 \
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


