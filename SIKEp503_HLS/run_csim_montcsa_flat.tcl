# run_csim_montcsa_flat.tcl — src_montcsa_flat (FIOS-CSA-Flat + 平方専用コア
# + ループ修正済み) の正確性をcsimのみで素早く確認する。
open_project -reset sikep503_hls_csim_montcsa_flat

set_include_path {
    src_montcsa_flat
    src_montcsa_flat/generic
    src_montcsa_flat/random
    src_montcsa_flat/sha3
    ../montgomery_converter/include
    .
}

add_files src_montcsa_flat/P503_internal.h
add_files src_montcsa_flat/fpx.h
add_files src_montcsa_flat/ec_isogeny.h
add_files src_montcsa_flat/sidh.h
add_files src_montcsa_flat/sike.h
add_files src_montcsa_flat/config.h
add_files src_montcsa_flat/api.h
add_files src_montcsa_flat/random/random.h
add_files src_montcsa_flat/sha3/fips202.h
add_files src_montcsa_flat/generic/mpx_iface_tvu_mul.hpp

add_files src_montcsa_flat/fpx.cpp -cflags "-I../montgomery_converter/include"
add_files src_montcsa_flat/ec_isogeny.cpp
add_files src_montcsa_flat/sidh.cpp
add_files src_montcsa_flat/sike.cpp
add_files src_montcsa_flat/P503.cpp
add_files src_montcsa_flat/sikep503_kem_enc_hw.cpp
add_files src_montcsa_flat/generic/fp_generic.cpp
add_files src_montcsa_flat/random/random.cpp
add_files src_montcsa_flat/sha3/fips202.cpp

set_top sikep503_kem_enc_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_montcsa_flat/tb_top.cpp"]
add_files -tb $tb_file

csim_design

exit
