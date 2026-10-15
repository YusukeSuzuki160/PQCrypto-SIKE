# This script segment is generated automatically by AutoPilot

set name kernel_top_mul_32ns_32ns_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name kernel_top_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 47 \
    name x \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename x \
    op interface \
    ports { x_address0 { O 4 vector } x_ce0 { O 1 bit } x_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name t_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_17 \
    op interface \
    ports { t_load_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name t_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_16 \
    op interface \
    ports { t_load_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name t_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_15 \
    op interface \
    ports { t_load_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name t_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_14 \
    op interface \
    ports { t_load_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name t_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_13 \
    op interface \
    ports { t_load_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name t_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_12 \
    op interface \
    ports { t_load_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name t_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_11 \
    op interface \
    ports { t_load_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name t_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_10 \
    op interface \
    ports { t_load_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name t_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_9 \
    op interface \
    ports { t_load_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name t_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_8 \
    op interface \
    ports { t_load_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name t_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_7 \
    op interface \
    ports { t_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name t_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_6 \
    op interface \
    ports { t_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name t_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_5 \
    op interface \
    ports { t_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name t_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_4 \
    op interface \
    ports { t_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name t_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_3 \
    op interface \
    ports { t_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name t_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_2 \
    op interface \
    ports { t_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name t_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load_1 \
    op interface \
    ports { t_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name t_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_load \
    op interface \
    ports { t_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name conv16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16 \
    op interface \
    ports { conv16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name conv16_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_1 \
    op interface \
    ports { conv16_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name conv16_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_2 \
    op interface \
    ports { conv16_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name conv16_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_3 \
    op interface \
    ports { conv16_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name conv16_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_4 \
    op interface \
    ports { conv16_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name conv16_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_5 \
    op interface \
    ports { conv16_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name conv16_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_6 \
    op interface \
    ports { conv16_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name conv16_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_7 \
    op interface \
    ports { conv16_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name conv16_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_8 \
    op interface \
    ports { conv16_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name conv16_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_9 \
    op interface \
    ports { conv16_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name conv16_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_10 \
    op interface \
    ports { conv16_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name conv16_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_11 \
    op interface \
    ports { conv16_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name conv16_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_12 \
    op interface \
    ports { conv16_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name conv16_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_13 \
    op interface \
    ports { conv16_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name conv16_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_14 \
    op interface \
    ports { conv16_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name conv16_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv16_15 \
    op interface \
    ports { conv16_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name mprime \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mprime \
    op interface \
    ports { mprime { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name conv48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48 \
    op interface \
    ports { conv48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name conv48_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_1 \
    op interface \
    ports { conv48_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name conv48_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_2 \
    op interface \
    ports { conv48_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name conv48_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_3 \
    op interface \
    ports { conv48_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name conv48_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_4 \
    op interface \
    ports { conv48_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name conv48_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_5 \
    op interface \
    ports { conv48_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name conv48_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_6 \
    op interface \
    ports { conv48_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name conv48_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_7 \
    op interface \
    ports { conv48_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name conv48_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_8 \
    op interface \
    ports { conv48_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name conv48_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_9 \
    op interface \
    ports { conv48_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name conv48_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_10 \
    op interface \
    ports { conv48_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name conv48_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_11 \
    op interface \
    ports { conv48_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name conv48_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_12 \
    op interface \
    ports { conv48_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name conv48_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_13 \
    op interface \
    ports { conv48_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name conv48_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_14 \
    op interface \
    ports { conv48_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name conv48_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv48_15 \
    op interface \
    ports { conv48_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name add6822_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add6822_out \
    op interface \
    ports { add6822_out { O 32 vector } add6822_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name conv6321_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv6321_out \
    op interface \
    ports { conv6321_out { O 32 vector } conv6321_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name conv52_1520_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1520_out \
    op interface \
    ports { conv52_1520_out { O 32 vector } conv52_1520_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name conv52_1419_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1419_out \
    op interface \
    ports { conv52_1419_out { O 32 vector } conv52_1419_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name conv52_1318_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1318_out \
    op interface \
    ports { conv52_1318_out { O 32 vector } conv52_1318_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name conv52_1217_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1217_out \
    op interface \
    ports { conv52_1217_out { O 32 vector } conv52_1217_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name conv52_1116_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1116_out \
    op interface \
    ports { conv52_1116_out { O 32 vector } conv52_1116_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name conv52_1015_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_1015_out \
    op interface \
    ports { conv52_1015_out { O 32 vector } conv52_1015_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name conv52_914_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_914_out \
    op interface \
    ports { conv52_914_out { O 32 vector } conv52_914_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name conv52_813_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_813_out \
    op interface \
    ports { conv52_813_out { O 32 vector } conv52_813_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name conv52_712_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_712_out \
    op interface \
    ports { conv52_712_out { O 32 vector } conv52_712_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name conv52_611_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_611_out \
    op interface \
    ports { conv52_611_out { O 32 vector } conv52_611_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name conv52_510_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_510_out \
    op interface \
    ports { conv52_510_out { O 32 vector } conv52_510_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name conv52_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_49_out \
    op interface \
    ports { conv52_49_out { O 32 vector } conv52_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name conv52_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_38_out \
    op interface \
    ports { conv52_38_out { O 32 vector } conv52_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name conv52_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_27_out \
    op interface \
    ports { conv52_27_out { O 32 vector } conv52_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name conv52_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_conv52_16_out \
    op interface \
    ports { conv52_16_out { O 32 vector } conv52_16_out_ap_vld { O 1 bit } } \
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
set InstName kernel_top_flow_control_loop_pipe_sequential_init_U
set CompName kernel_top_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix kernel_top_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


