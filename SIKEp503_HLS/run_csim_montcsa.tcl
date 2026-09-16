# run_csim_montcsa.tcl — src_montcsa (FIOS-CSA-True + 平方専用コア + ループ修正済み)
# の正確性をcsimのみで素早く確認する。
open_project -reset sikep503_hls_csim_montcsa

set_include_path {
    src_montcsa
    src_montcsa/generic
    src_montcsa/random
    src_montcsa/sha3
    ../montgomery_converter/include
    .
}

add_files src_montcsa/P503_internal.h
add_files src_montcsa/fpx.h
add_files src_montcsa/ec_isogeny.h
add_files src_montcsa/sidh.h
add_files src_montcsa/sike.h
add_files src_montcsa/config.h
add_files src_montcsa/api.h
add_files src_montcsa/random/random.h
add_files src_montcsa/sha3/fips202.h
add_files src_montcsa/generic/mpx_iface_tvu_mul.hpp

add_files src_montcsa/fpx.cpp -cflags "-I../montgomery_converter/include"
add_files src_montcsa/ec_isogeny.cpp
add_files src_montcsa/sidh.cpp
add_files src_montcsa/sike.cpp
add_files src_montcsa/P503.cpp
add_files src_montcsa/sikep503_kem_enc_hw.cpp
add_files src_montcsa/generic/fp_generic.cpp
add_files src_montcsa/random/random.cpp
add_files src_montcsa/sha3/fips202.cpp

set_top sikep503_kem_enc_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_montcsa/tb_top.cpp"]
add_files -tb $tb_file

csim_design

exit
