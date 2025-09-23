# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5808 \
    name tt \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tt \
    op interface \
    ports { tt_i { I 64 vector } tt_o { O 64 vector } tt_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5809 \
    name tt_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tt_1 \
    op interface \
    ports { tt_1_i { I 64 vector } tt_1_o { O 64 vector } tt_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5810 \
    name tt_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tt_2 \
    op interface \
    ports { tt_2_i { I 64 vector } tt_2_o { O 64 vector } tt_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5811 \
    name tt_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tt_3 \
    op interface \
    ports { tt_3_i { I 64 vector } tt_3_o { O 64 vector } tt_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5812 \
    name tt_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tt_4 \
    op interface \
    ports { tt_4_i { I 64 vector } tt_4_o { O 64 vector } tt_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5813 \
    name tt_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tt_5 \
    op interface \
    ports { tt_5_i { I 64 vector } tt_5_o { O 64 vector } tt_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5814 \
    name tt_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tt_6 \
    op interface \
    ports { tt_6_i { I 64 vector } tt_6_o { O 64 vector } tt_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5815 \
    name tt_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_tt_7 \
    op interface \
    ports { tt_7_i { I 64 vector } tt_7_o { O 64 vector } tt_7_o_ap_vld { O 1 bit } } \
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


