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
    id 9290 \
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
    id 9274 \
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
    id 9275 \
    name ma_read_498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_498 \
    op interface \
    ports { ma_read_498 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9276 \
    name ma_read_499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_499 \
    op interface \
    ports { ma_read_499 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9277 \
    name ma_read_500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_500 \
    op interface \
    ports { ma_read_500 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9278 \
    name ma_read_501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_501 \
    op interface \
    ports { ma_read_501 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9279 \
    name ma_read_502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_502 \
    op interface \
    ports { ma_read_502 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9280 \
    name ma_read_503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_503 \
    op interface \
    ports { ma_read_503 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9281 \
    name ma_read_504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_504 \
    op interface \
    ports { ma_read_504 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9282 \
    name ma_read_505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_505 \
    op interface \
    ports { ma_read_505 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9283 \
    name ma_read_506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_506 \
    op interface \
    ports { ma_read_506 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9284 \
    name ma_read_507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_507 \
    op interface \
    ports { ma_read_507 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9285 \
    name ma_read_508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_508 \
    op interface \
    ports { ma_read_508 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9286 \
    name ma_read_509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_509 \
    op interface \
    ports { ma_read_509 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9287 \
    name ma_read_510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_510 \
    op interface \
    ports { ma_read_510 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9288 \
    name ma_read_511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_511 \
    op interface \
    ports { ma_read_511 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9289 \
    name ma_read_512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ma_read_512 \
    op interface \
    ports { ma_read_512 { I 64 vector } } \
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


