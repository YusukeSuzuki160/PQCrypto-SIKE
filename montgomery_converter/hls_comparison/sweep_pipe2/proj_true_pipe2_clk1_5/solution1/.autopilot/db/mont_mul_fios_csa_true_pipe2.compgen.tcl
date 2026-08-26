# This script segment is generated automatically by AutoPilot

set name mont_mul_fios_csa_true_pipe2_mul_64ns_64ns_128_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name mont_mul_fios_csa_true_pipe2_mul_64s_64s_64_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_65ns_65ns_65_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_67ns_67ns_67_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_68ns_68ns_68_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_69ns_69ns_69_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_70ns_70ns_70_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_71ns_71ns_71_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_72ns_72ns_72_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_73ns_73ns_73_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_64ns_64ns_64_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_add_66ns_66ns_66_2_1 BINDTYPE {op} TYPE {add} IMPL {fabric} LATENCY 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mont_mul_fios_csa_true_pipe2_sub_65ns_65ns_65_2_1 BINDTYPE {op} TYPE {sub} IMPL {fabric} LATENCY 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name a_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_0 \
    op interface \
    ports { a_0 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name a_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_1 \
    op interface \
    ports { a_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name a_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_2 \
    op interface \
    ports { a_2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name a_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_3 \
    op interface \
    ports { a_3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name b_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_0 \
    op interface \
    ports { b_0 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name b_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_1 \
    op interface \
    ports { b_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name b_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_2 \
    op interface \
    ports { b_2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name b_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_3 \
    op interface \
    ports { b_3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name c_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_0 \
    op interface \
    ports { c_0 { O 64 vector } c_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name c_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_1 \
    op interface \
    ports { c_1 { O 64 vector } c_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name c_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_2 \
    op interface \
    ports { c_2 { O 64 vector } c_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name c_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_3 \
    op interface \
    ports { c_3 { O 64 vector } c_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name mod_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mod_0 \
    op interface \
    ports { mod_0 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name mod_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mod_1 \
    op interface \
    ports { mod_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name mod_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mod_2 \
    op interface \
    ports { mod_2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name mod_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mod_3 \
    op interface \
    ports { mod_3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name mprime \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mprime \
    op interface \
    ports { mprime { I 64 vector } } \
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


