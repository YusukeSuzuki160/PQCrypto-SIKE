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
    id 3466 \
    name t_i \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename t_i \
    op interface \
    ports { t_i_address0 { O 4 vector } t_i_ce0 { O 1 bit } t_i_we0 { O 1 bit } t_i_d0 { O 64 vector } t_i_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 't_i'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3450 \
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
    id 3451 \
    name ma_read_633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_633 \
    op interface \
    ports { ma_read_633 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3452 \
    name ma_read_634 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_634 \
    op interface \
    ports { ma_read_634 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3453 \
    name ma_read_635 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_635 \
    op interface \
    ports { ma_read_635 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3454 \
    name ma_read_636 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_636 \
    op interface \
    ports { ma_read_636 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3455 \
    name ma_read_637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_637 \
    op interface \
    ports { ma_read_637 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3456 \
    name ma_read_638 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_638 \
    op interface \
    ports { ma_read_638 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3457 \
    name ma_read_639 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_639 \
    op interface \
    ports { ma_read_639 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3458 \
    name ma_read_640 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_640 \
    op interface \
    ports { ma_read_640 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3459 \
    name ma_read_641 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_641 \
    op interface \
    ports { ma_read_641 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3460 \
    name ma_read_642 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_642 \
    op interface \
    ports { ma_read_642 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3461 \
    name ma_read_643 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_643 \
    op interface \
    ports { ma_read_643 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3462 \
    name ma_read_644 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_644 \
    op interface \
    ports { ma_read_644 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3463 \
    name ma_read_645 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_645 \
    op interface \
    ports { ma_read_645 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3464 \
    name ma_read_646 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_646 \
    op interface \
    ports { ma_read_646 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3465 \
    name ma_read_647 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_647 \
    op interface \
    ports { ma_read_647 { I 64 vector } } \
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


