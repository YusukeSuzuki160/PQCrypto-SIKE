# Create a new project
open_project sikep503_hls

# Add all source files
add_files src/top.cpp
add_files src/P503.c
add_files src/P503_internal.h
add_files src/P503_constants.c
add_files src/ec_isogeny.c
add_files src/fpx.c
add_files src/sidh.c
add_files src/sike.c
add_files src/config.sikep503_hls
add_files src/api.h

# Add generic directory files
add_files src/generic/fp_generic.c

# Add random directory files
add_files src/random/random.c
add_files src/random/random.h

# Add sha3 directory files
add_files src/sha3/fips202.c
add_files src/sha3/fips202.h

# Add testbench file
add_files -tb src/tb_top.cpp

# Set the top-level function
set_top sikep503_kem_enc_hw

# Create solution
open_solution "solution1"

# Set target device
set_part {xc7z020clg484-1}

# Set target clock period
create_clock -period 10

# Set include directories
config_interface -m_axi_addr64=false
config_interface -m_axi_offset=slave

# Run C simulation
csim_design

# Run C synthesis
csynth_design

# Run C/RTL cosimulation
cosim_design

# Export RTL
export_design -format ip_catalog

exit 