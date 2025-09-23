# Create a new project
open_project sikep503_hls

# Set include directories
set_include_path {
    src
    src/generic
    src/random
    src/sha3
    .
}

# Add all header files first
add_files src/P503_internal.h
add_files src/fpx.h
add_files src/ec_isogeny.h
add_files src/sidh.h
add_files src/sike.h
add_files src/config.h
add_files src/api.h
add_files src/random/random.h
add_files src/sha3/fips202.h
add_files src/generic/mpx_packed.hpp

# Add source files in dependency order
add_files src/fpx.cpp
add_files src/ec_isogeny.cpp
add_files src/sidh.cpp
add_files src/sike.cpp
add_files src/P503.cpp
add_files src/sikep503_kem_enc_hw.cpp

# Add generic directory files
add_files src/generic/fp_generic.cpp

# Add random directory files
add_files src/random/random.cpp

# Add sha3 directory files
add_files src/sha3/fips202.cpp

# Set the top-level function
set_top sikep503_kem_enc_hw

# Create solution
open_solution "solution1" -flow_target vivado

# Set target device
set_part {xcvu29p-fsga2577-2L-e}

# Set target clock period
create_clock -period 10


# Set interface directives
set_directive_interface -mode ap_ctrl_hs sikep503_kem_enc_hw
set_directive_interface -mode s_axilite sikep503_kem_enc_hw
set_directive_interface -mode m_axi -depth 402 sikep503_kem_enc_hw ct
set_directive_interface -mode m_axi -depth 378 sikep503_kem_enc_hw pk
set_directive_interface -mode m_axi -depth 16 sikep503_kem_enc_hw ss

# Add testbench file
set tb_file [file normalize "src/tb_top.cpp"]
add_files -tb $tb_file

# Run C simulation
csim_design

# Run C synthesis
csynth_design

# Run C/RTL cosimulation
cosim_design

# Export RTL
export_design -format ip_catalog

exit 