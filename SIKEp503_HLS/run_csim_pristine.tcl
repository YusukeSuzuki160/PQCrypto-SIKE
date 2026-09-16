# run_csim_pristine.tcl — オリジナル(未修正)ソースでcsimを再実行し、
# 今回のfixed版と同一環境・同一実行タイミングで比較する対照実験。
open_project -reset sikep503_hls_csim_pristine

set_include_path {
    src_pristine
    src_pristine/generic
    src_pristine/random
    src_pristine/sha3
    .
}

add_files src_pristine/P503_internal.h
add_files src_pristine/fpx.h
add_files src_pristine/ec_isogeny.h
add_files src_pristine/sidh.h
add_files src_pristine/sike.h
add_files src_pristine/config.h
add_files src_pristine/api.h
add_files src_pristine/random/random.h
add_files src_pristine/sha3/fips202.h
add_files src_pristine/generic/mpx_iface_tvu_mul.hpp

add_files src_pristine/fpx.cpp
add_files src_pristine/ec_isogeny.cpp
add_files src_pristine/sidh.cpp
add_files src_pristine/sike.cpp
add_files src_pristine/P503.cpp
add_files src_pristine/sikep503_kem_enc_hw.cpp
add_files src_pristine/generic/fp_generic.cpp
add_files src_pristine/random/random.cpp
add_files src_pristine/sha3/fips202.cpp

set_top sikep503_kem_enc_hw

open_solution "solution1" -flow_target vivado
set_part {xcvu29p-fsga2577-2L-e}
create_clock -period 10

set tb_file [file normalize "src_pristine/tb_top.cpp"]
add_files -tb $tb_file

csim_design

exit
