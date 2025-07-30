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
    id 5648 \
    name R_X \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_X \
    op interface \
    ports { R_X_address0 { O 4 vector } R_X_ce0 { O 1 bit } R_X_we0 { O 1 bit } R_X_d0 { O 64 vector } R_X_q0 { I 64 vector } R_X_address1 { O 4 vector } R_X_ce1 { O 1 bit } R_X_we1 { O 1 bit } R_X_d1 { O 64 vector } R_X_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_X'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5650 \
    name R_Z \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename R_Z \
    op interface \
    ports { R_Z_address0 { O 4 vector } R_Z_ce0 { O 1 bit } R_Z_we0 { O 1 bit } R_Z_d0 { O 64 vector } R_Z_q0 { I 64 vector } R_Z_address1 { O 4 vector } R_Z_ce1 { O 1 bit } R_Z_we1 { O 1 bit } R_Z_d1 { O 64 vector } R_Z_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'R_Z'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5616 \
    name R2_Z_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_15_load \
    op interface \
    ports { R2_Z_15_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5617 \
    name R2_Z_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_14_load \
    op interface \
    ports { R2_Z_14_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5618 \
    name R2_Z_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_13_load \
    op interface \
    ports { R2_Z_13_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5619 \
    name R2_Z_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_12_load \
    op interface \
    ports { R2_Z_12_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5620 \
    name R2_Z_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_11_load \
    op interface \
    ports { R2_Z_11_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5621 \
    name R2_Z_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_10_load \
    op interface \
    ports { R2_Z_10_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5622 \
    name R2_Z_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_9_load \
    op interface \
    ports { R2_Z_9_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5623 \
    name R2_Z_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_8_load \
    op interface \
    ports { R2_Z_8_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5624 \
    name R2_Z_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_7_load \
    op interface \
    ports { R2_Z_7_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5625 \
    name R2_Z_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_6_load \
    op interface \
    ports { R2_Z_6_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5626 \
    name R2_Z_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_5_load \
    op interface \
    ports { R2_Z_5_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5627 \
    name R2_Z_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_4_load \
    op interface \
    ports { R2_Z_4_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5628 \
    name R2_Z_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_3_load \
    op interface \
    ports { R2_Z_3_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5629 \
    name R2_Z_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_2_load \
    op interface \
    ports { R2_Z_2_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5630 \
    name R2_Z_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_1_load \
    op interface \
    ports { R2_Z_1_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5631 \
    name R2_Z_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_Z_load \
    op interface \
    ports { R2_Z_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5632 \
    name R2_X_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_15_load \
    op interface \
    ports { R2_X_15_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5633 \
    name R2_X_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_14_load \
    op interface \
    ports { R2_X_14_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5634 \
    name R2_X_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_13_load \
    op interface \
    ports { R2_X_13_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5635 \
    name R2_X_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_12_load \
    op interface \
    ports { R2_X_12_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5636 \
    name R2_X_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_11_load \
    op interface \
    ports { R2_X_11_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5637 \
    name R2_X_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_10_load \
    op interface \
    ports { R2_X_10_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5638 \
    name R2_X_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_9_load \
    op interface \
    ports { R2_X_9_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5639 \
    name R2_X_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_8_load \
    op interface \
    ports { R2_X_8_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5640 \
    name R2_X_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_7_load \
    op interface \
    ports { R2_X_7_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5641 \
    name R2_X_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_6_load \
    op interface \
    ports { R2_X_6_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5642 \
    name R2_X_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_5_load \
    op interface \
    ports { R2_X_5_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5643 \
    name R2_X_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_4_load \
    op interface \
    ports { R2_X_4_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5644 \
    name R2_X_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_3_load \
    op interface \
    ports { R2_X_3_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5645 \
    name R2_X_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_2_load \
    op interface \
    ports { R2_X_2_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5646 \
    name R2_X_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_1_load \
    op interface \
    ports { R2_X_1_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5647 \
    name R2_X_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_R2_X_load \
    op interface \
    ports { R2_X_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5649 \
    name sext_ln290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln290 \
    op interface \
    ports { sext_ln290 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5651 \
    name xor102_i70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor102_i70_out \
    op interface \
    ports { xor102_i70_out { O 64 vector } xor102_i70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5652 \
    name xor102_i68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor102_i68_out \
    op interface \
    ports { xor102_i68_out { O 64 vector } xor102_i68_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5653 \
    name xor102_i66_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor102_i66_out \
    op interface \
    ports { xor102_i66_out { O 64 vector } xor102_i66_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5654 \
    name xor102_i64_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor102_i64_out \
    op interface \
    ports { xor102_i64_out { O 64 vector } xor102_i64_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5655 \
    name xor102_i62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor102_i62_out \
    op interface \
    ports { xor102_i62_out { O 64 vector } xor102_i62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5656 \
    name xor102_i60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor102_i60_out \
    op interface \
    ports { xor102_i60_out { O 64 vector } xor102_i60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5657 \
    name xor102_i58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor102_i58_out \
    op interface \
    ports { xor102_i58_out { O 64 vector } xor102_i58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5658 \
    name xor102_i56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor102_i56_out \
    op interface \
    ports { xor102_i56_out { O 64 vector } xor102_i56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5659 \
    name xor46_i54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor46_i54_out \
    op interface \
    ports { xor46_i54_out { O 64 vector } xor46_i54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5660 \
    name xor46_i52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor46_i52_out \
    op interface \
    ports { xor46_i52_out { O 64 vector } xor46_i52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5661 \
    name xor46_i50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor46_i50_out \
    op interface \
    ports { xor46_i50_out { O 64 vector } xor46_i50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5662 \
    name xor46_i48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor46_i48_out \
    op interface \
    ports { xor46_i48_out { O 64 vector } xor46_i48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5663 \
    name xor46_i46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor46_i46_out \
    op interface \
    ports { xor46_i46_out { O 64 vector } xor46_i46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5664 \
    name xor46_i44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor46_i44_out \
    op interface \
    ports { xor46_i44_out { O 64 vector } xor46_i44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5665 \
    name xor46_i42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor46_i42_out \
    op interface \
    ports { xor46_i42_out { O 64 vector } xor46_i42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5666 \
    name xor46_i40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor46_i40_out \
    op interface \
    ports { xor46_i40_out { O 64 vector } xor46_i40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5667 \
    name xor74_i38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor74_i38_out \
    op interface \
    ports { xor74_i38_out { O 64 vector } xor74_i38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5668 \
    name xor74_i36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor74_i36_out \
    op interface \
    ports { xor74_i36_out { O 64 vector } xor74_i36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5669 \
    name xor74_i34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor74_i34_out \
    op interface \
    ports { xor74_i34_out { O 64 vector } xor74_i34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5670 \
    name xor74_i32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor74_i32_out \
    op interface \
    ports { xor74_i32_out { O 64 vector } xor74_i32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5671 \
    name xor74_i30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor74_i30_out \
    op interface \
    ports { xor74_i30_out { O 64 vector } xor74_i30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5672 \
    name xor74_i28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor74_i28_out \
    op interface \
    ports { xor74_i28_out { O 64 vector } xor74_i28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5673 \
    name xor74_i26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor74_i26_out \
    op interface \
    ports { xor74_i26_out { O 64 vector } xor74_i26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5674 \
    name xor74_i24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor74_i24_out \
    op interface \
    ports { xor74_i24_out { O 64 vector } xor74_i24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5675 \
    name xor19_i22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor19_i22_out \
    op interface \
    ports { xor19_i22_out { O 64 vector } xor19_i22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5676 \
    name xor19_i20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor19_i20_out \
    op interface \
    ports { xor19_i20_out { O 64 vector } xor19_i20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5677 \
    name xor19_i18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor19_i18_out \
    op interface \
    ports { xor19_i18_out { O 64 vector } xor19_i18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5678 \
    name xor19_i16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor19_i16_out \
    op interface \
    ports { xor19_i16_out { O 64 vector } xor19_i16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5679 \
    name xor19_i14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor19_i14_out \
    op interface \
    ports { xor19_i14_out { O 64 vector } xor19_i14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5680 \
    name xor19_i12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor19_i12_out \
    op interface \
    ports { xor19_i12_out { O 64 vector } xor19_i12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5681 \
    name xor19_i10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor19_i10_out \
    op interface \
    ports { xor19_i10_out { O 64 vector } xor19_i10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5682 \
    name xor19_i8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_xor19_i8_out \
    op interface \
    ports { xor19_i8_out { O 64 vector } xor19_i8_out_ap_vld { O 1 bit } } \
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


