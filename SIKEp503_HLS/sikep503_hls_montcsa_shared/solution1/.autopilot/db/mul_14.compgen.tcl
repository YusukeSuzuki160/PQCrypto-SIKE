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
    id 1983 \
    name c \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c \
    op interface \
    ports { c_address0 { O 3 vector } c_ce0 { O 1 bit } c_we0 { O 1 bit } c_d0 { O 64 vector } c_q0 { I 64 vector } c_address1 { O 3 vector } c_ce1 { O 1 bit } c_we1 { O 1 bit } c_d1 { O 64 vector } c_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1975 \
    name a_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read \
    op interface \
    ports { a_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1976 \
    name a_read_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_8 \
    op interface \
    ports { a_read_8 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1977 \
    name a_read_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_9 \
    op interface \
    ports { a_read_9 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1978 \
    name a_read_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_10 \
    op interface \
    ports { a_read_10 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1979 \
    name a_read_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_11 \
    op interface \
    ports { a_read_11 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1980 \
    name a_read_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_12 \
    op interface \
    ports { a_read_12 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1981 \
    name a_read_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_13 \
    op interface \
    ports { a_read_13 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1982 \
    name a_read_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_read_14 \
    op interface \
    ports { a_read_14 { I 64 vector } } \
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


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


