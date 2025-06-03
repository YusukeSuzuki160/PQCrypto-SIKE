# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sikep503_kem_enc_hw_sparsemux_35_5_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
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
    id 3785 \
    name s \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename s \
    op interface \
    ports { s_address0 { O 5 vector } s_ce0 { O 1 bit } s_we0 { O 8 vector } s_d0 { O 64 vector } s_address1 { O 5 vector } s_ce1 { O 1 bit } s_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3658 \
    name t_312_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_312_reload \
    op interface \
    ports { t_312_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3659 \
    name t_320_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_320_reload \
    op interface \
    ports { t_320_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3660 \
    name t_328_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_328_reload \
    op interface \
    ports { t_328_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3661 \
    name t_336_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_336_reload \
    op interface \
    ports { t_336_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3662 \
    name t_344_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_344_reload \
    op interface \
    ports { t_344_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3663 \
    name t_352_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_352_reload \
    op interface \
    ports { t_352_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3664 \
    name t_360_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_360_reload \
    op interface \
    ports { t_360_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3665 \
    name t_368_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_368_reload \
    op interface \
    ports { t_368_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3666 \
    name t_376_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_376_reload \
    op interface \
    ports { t_376_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3667 \
    name t_384_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_384_reload \
    op interface \
    ports { t_384_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3668 \
    name t_392_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_392_reload \
    op interface \
    ports { t_392_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3669 \
    name t_400_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_400_reload \
    op interface \
    ports { t_400_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3670 \
    name t_408_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_408_reload \
    op interface \
    ports { t_408_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3671 \
    name t_416_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_416_reload \
    op interface \
    ports { t_416_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3672 \
    name t_424_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_424_reload \
    op interface \
    ports { t_424_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3673 \
    name t_432_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_432_reload \
    op interface \
    ports { t_432_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3674 \
    name t_313_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_313_reload \
    op interface \
    ports { t_313_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3675 \
    name t_321_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_321_reload \
    op interface \
    ports { t_321_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3676 \
    name t_329_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_329_reload \
    op interface \
    ports { t_329_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3677 \
    name t_337_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_337_reload \
    op interface \
    ports { t_337_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3678 \
    name t_345_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_345_reload \
    op interface \
    ports { t_345_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3679 \
    name t_353_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_353_reload \
    op interface \
    ports { t_353_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3680 \
    name t_361_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_361_reload \
    op interface \
    ports { t_361_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3681 \
    name t_369_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_369_reload \
    op interface \
    ports { t_369_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3682 \
    name t_377_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_377_reload \
    op interface \
    ports { t_377_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3683 \
    name t_385_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_385_reload \
    op interface \
    ports { t_385_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3684 \
    name t_393_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_393_reload \
    op interface \
    ports { t_393_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3685 \
    name t_401_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_401_reload \
    op interface \
    ports { t_401_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3686 \
    name t_409_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_409_reload \
    op interface \
    ports { t_409_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3687 \
    name t_417_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_417_reload \
    op interface \
    ports { t_417_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3688 \
    name t_425_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_425_reload \
    op interface \
    ports { t_425_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3689 \
    name t_433_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_433_reload \
    op interface \
    ports { t_433_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3690 \
    name t_314_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_314_reload \
    op interface \
    ports { t_314_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3691 \
    name t_322_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_322_reload \
    op interface \
    ports { t_322_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3692 \
    name t_330_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_330_reload \
    op interface \
    ports { t_330_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3693 \
    name t_338_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_338_reload \
    op interface \
    ports { t_338_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3694 \
    name t_346_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_346_reload \
    op interface \
    ports { t_346_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3695 \
    name t_354_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_354_reload \
    op interface \
    ports { t_354_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3696 \
    name t_362_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_362_reload \
    op interface \
    ports { t_362_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3697 \
    name t_370_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_370_reload \
    op interface \
    ports { t_370_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3698 \
    name t_378_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_378_reload \
    op interface \
    ports { t_378_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3699 \
    name t_386_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_386_reload \
    op interface \
    ports { t_386_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3700 \
    name t_394_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_394_reload \
    op interface \
    ports { t_394_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3701 \
    name t_402_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_402_reload \
    op interface \
    ports { t_402_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3702 \
    name t_410_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_410_reload \
    op interface \
    ports { t_410_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3703 \
    name t_418_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_418_reload \
    op interface \
    ports { t_418_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3704 \
    name t_426_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_426_reload \
    op interface \
    ports { t_426_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3705 \
    name t_434_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_434_reload \
    op interface \
    ports { t_434_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3706 \
    name t_315_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_315_reload \
    op interface \
    ports { t_315_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3707 \
    name t_323_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_323_reload \
    op interface \
    ports { t_323_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3708 \
    name t_331_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_331_reload \
    op interface \
    ports { t_331_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3709 \
    name t_339_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_339_reload \
    op interface \
    ports { t_339_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3710 \
    name t_347_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_347_reload \
    op interface \
    ports { t_347_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3711 \
    name t_355_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_355_reload \
    op interface \
    ports { t_355_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3712 \
    name t_363_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_363_reload \
    op interface \
    ports { t_363_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3713 \
    name t_371_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_371_reload \
    op interface \
    ports { t_371_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3714 \
    name t_379_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_379_reload \
    op interface \
    ports { t_379_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3715 \
    name t_387_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_387_reload \
    op interface \
    ports { t_387_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3716 \
    name t_395_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_395_reload \
    op interface \
    ports { t_395_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3717 \
    name t_403_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_403_reload \
    op interface \
    ports { t_403_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3718 \
    name t_411_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_411_reload \
    op interface \
    ports { t_411_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3719 \
    name t_419_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_419_reload \
    op interface \
    ports { t_419_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3720 \
    name t_427_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_427_reload \
    op interface \
    ports { t_427_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3721 \
    name t_435_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_435_reload \
    op interface \
    ports { t_435_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3722 \
    name t_316_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_316_reload \
    op interface \
    ports { t_316_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3723 \
    name t_324_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_324_reload \
    op interface \
    ports { t_324_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3724 \
    name t_332_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_332_reload \
    op interface \
    ports { t_332_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3725 \
    name t_340_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_340_reload \
    op interface \
    ports { t_340_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3726 \
    name t_348_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_348_reload \
    op interface \
    ports { t_348_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3727 \
    name t_356_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_356_reload \
    op interface \
    ports { t_356_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3728 \
    name t_364_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_364_reload \
    op interface \
    ports { t_364_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3729 \
    name t_372_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_372_reload \
    op interface \
    ports { t_372_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3730 \
    name t_380_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_380_reload \
    op interface \
    ports { t_380_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3731 \
    name t_388_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_388_reload \
    op interface \
    ports { t_388_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3732 \
    name t_396_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_396_reload \
    op interface \
    ports { t_396_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3733 \
    name t_404_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_404_reload \
    op interface \
    ports { t_404_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3734 \
    name t_412_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_412_reload \
    op interface \
    ports { t_412_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3735 \
    name t_420_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_420_reload \
    op interface \
    ports { t_420_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3736 \
    name t_428_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_428_reload \
    op interface \
    ports { t_428_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3737 \
    name t_436_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_436_reload \
    op interface \
    ports { t_436_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3738 \
    name t_317_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_317_reload \
    op interface \
    ports { t_317_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3739 \
    name t_325_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_325_reload \
    op interface \
    ports { t_325_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3740 \
    name t_333_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_333_reload \
    op interface \
    ports { t_333_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3741 \
    name t_341_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_341_reload \
    op interface \
    ports { t_341_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3742 \
    name t_349_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_349_reload \
    op interface \
    ports { t_349_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3743 \
    name t_357_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_357_reload \
    op interface \
    ports { t_357_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3744 \
    name t_365_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_365_reload \
    op interface \
    ports { t_365_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3745 \
    name t_373_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_373_reload \
    op interface \
    ports { t_373_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3746 \
    name t_381_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_381_reload \
    op interface \
    ports { t_381_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3747 \
    name t_389_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_389_reload \
    op interface \
    ports { t_389_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3748 \
    name t_397_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_397_reload \
    op interface \
    ports { t_397_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3749 \
    name t_405_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_405_reload \
    op interface \
    ports { t_405_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3750 \
    name t_413_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_413_reload \
    op interface \
    ports { t_413_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3751 \
    name t_421_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_421_reload \
    op interface \
    ports { t_421_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3752 \
    name t_429_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_429_reload \
    op interface \
    ports { t_429_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3753 \
    name t_437_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_437_reload \
    op interface \
    ports { t_437_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3754 \
    name t_318_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_318_reload \
    op interface \
    ports { t_318_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3755 \
    name t_326_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_326_reload \
    op interface \
    ports { t_326_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3756 \
    name t_334_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_334_reload \
    op interface \
    ports { t_334_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3757 \
    name t_342_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_342_reload \
    op interface \
    ports { t_342_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3758 \
    name t_350_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_350_reload \
    op interface \
    ports { t_350_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3759 \
    name t_358_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_358_reload \
    op interface \
    ports { t_358_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3760 \
    name t_366_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_366_reload \
    op interface \
    ports { t_366_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3761 \
    name t_374_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_374_reload \
    op interface \
    ports { t_374_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3762 \
    name t_382_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_382_reload \
    op interface \
    ports { t_382_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3763 \
    name t_390_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_390_reload \
    op interface \
    ports { t_390_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3764 \
    name t_398_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_398_reload \
    op interface \
    ports { t_398_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3765 \
    name t_406_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_406_reload \
    op interface \
    ports { t_406_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3766 \
    name t_414_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_414_reload \
    op interface \
    ports { t_414_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3767 \
    name t_422_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_422_reload \
    op interface \
    ports { t_422_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3768 \
    name t_430_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_430_reload \
    op interface \
    ports { t_430_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3769 \
    name t_319_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_319_reload \
    op interface \
    ports { t_319_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3770 \
    name t_327_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_327_reload \
    op interface \
    ports { t_327_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3771 \
    name t_335_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_335_reload \
    op interface \
    ports { t_335_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3772 \
    name t_343_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_343_reload \
    op interface \
    ports { t_343_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3773 \
    name t_351_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_351_reload \
    op interface \
    ports { t_351_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3774 \
    name t_359_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_359_reload \
    op interface \
    ports { t_359_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3775 \
    name t_367_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_367_reload \
    op interface \
    ports { t_367_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3776 \
    name t_375_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_375_reload \
    op interface \
    ports { t_375_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3777 \
    name t_383_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_383_reload \
    op interface \
    ports { t_383_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3778 \
    name t_391_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_391_reload \
    op interface \
    ports { t_391_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3779 \
    name t_399_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_399_reload \
    op interface \
    ports { t_399_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3780 \
    name t_407_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_407_reload \
    op interface \
    ports { t_407_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3781 \
    name t_415_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_415_reload \
    op interface \
    ports { t_415_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3782 \
    name t_423_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_423_reload \
    op interface \
    ports { t_423_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3783 \
    name t_431_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_431_reload \
    op interface \
    ports { t_431_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3784 \
    name t_311 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_311 \
    op interface \
    ports { t_311 { I 8 vector } } \
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


