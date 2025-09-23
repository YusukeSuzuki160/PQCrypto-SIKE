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
    id 4494 \
    name PKB \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename PKB \
    op interface \
    ports { PKB_address0 { O 6 vector } PKB_ce0 { O 1 bit } PKB_we0 { O 8 vector } PKB_d0 { O 64 vector } PKB_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'PKB'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4478 \
    name ma_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read \
    op interface \
    ports { ma_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4479 \
    name ma_read_588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_588 \
    op interface \
    ports { ma_read_588 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4480 \
    name ma_read_589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_589 \
    op interface \
    ports { ma_read_589 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4481 \
    name ma_read_590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_590 \
    op interface \
    ports { ma_read_590 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4482 \
    name ma_read_591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_591 \
    op interface \
    ports { ma_read_591 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4483 \
    name ma_read_592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_592 \
    op interface \
    ports { ma_read_592 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4484 \
    name ma_read_593 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_593 \
    op interface \
    ports { ma_read_593 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4485 \
    name ma_read_594 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_594 \
    op interface \
    ports { ma_read_594 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4486 \
    name ma_read_595 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_595 \
    op interface \
    ports { ma_read_595 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4487 \
    name ma_read_596 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_596 \
    op interface \
    ports { ma_read_596 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4488 \
    name ma_read_597 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_597 \
    op interface \
    ports { ma_read_597 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4489 \
    name ma_read_598 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_598 \
    op interface \
    ports { ma_read_598 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4490 \
    name ma_read_599 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_599 \
    op interface \
    ports { ma_read_599 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4491 \
    name ma_read_600 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_600 \
    op interface \
    ports { ma_read_600 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4492 \
    name ma_read_601 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_601 \
    op interface \
    ports { ma_read_601 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4493 \
    name ma_read_602 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_602 \
    op interface \
    ports { ma_read_602 { I 64 vector } } \
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


