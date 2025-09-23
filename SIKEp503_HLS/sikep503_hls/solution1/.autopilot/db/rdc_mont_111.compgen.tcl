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
    id 4573 \
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
    id 4557 \
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
    id 4558 \
    name ma_read_543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_543 \
    op interface \
    ports { ma_read_543 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4559 \
    name ma_read_544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_544 \
    op interface \
    ports { ma_read_544 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4560 \
    name ma_read_545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_545 \
    op interface \
    ports { ma_read_545 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4561 \
    name ma_read_546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_546 \
    op interface \
    ports { ma_read_546 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4562 \
    name ma_read_547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_547 \
    op interface \
    ports { ma_read_547 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4563 \
    name ma_read_548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_548 \
    op interface \
    ports { ma_read_548 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4564 \
    name ma_read_549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_549 \
    op interface \
    ports { ma_read_549 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4565 \
    name ma_read_550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_550 \
    op interface \
    ports { ma_read_550 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4566 \
    name ma_read_551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_551 \
    op interface \
    ports { ma_read_551 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4567 \
    name ma_read_552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_552 \
    op interface \
    ports { ma_read_552 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4568 \
    name ma_read_553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_553 \
    op interface \
    ports { ma_read_553 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4569 \
    name ma_read_554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_554 \
    op interface \
    ports { ma_read_554 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4570 \
    name ma_read_555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_555 \
    op interface \
    ports { ma_read_555 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4571 \
    name ma_read_556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_556 \
    op interface \
    ports { ma_read_556 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4572 \
    name ma_read_557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_557 \
    op interface \
    ports { ma_read_557 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4574 \
    name mc \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mc \
    op interface \
    ports { mc { I 9 vector } } \
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


