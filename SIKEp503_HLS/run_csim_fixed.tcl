# run_csim_fixed.tcl — ループ修正版の正確性を csim_design のみで素早く確認
open_project -reset sikep503_hls_csim_fixed

set_include_path {
    src
    src/generic
    src/random
    src/sha3
    .
}

add_files src/P503_internal.h
add_files src/fpx.h
add_files src/ec_isogeny.h
add_files src/sidh.h
add_files src/sike.h
add_files src/config.h
add_files src/api.h
add_files src/random/random.h
add_files src/sha3/fips202.h
add_files src/generic/mpx_iface_tvu_mul.hpp

add_files src/fpx.cpp
add_files src/ec_isogeny.cpp
add_files src/sidh.cpp
add_files src/sike.cpp
add_files src/P503.cpp
add_files src/sikep503_kem_enc_hw.cpp
add_files src/generic/fp_generic.cpp
add_files src/random/random.cpp
add_files src/sha3/fips202.cpp

set_top sikep503_kem_enc_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src/tb_top.cpp"]
add_files -tb $tb_file

csim_design

exit
