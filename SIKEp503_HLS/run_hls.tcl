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

# Add source files in dependency order
add_files src/fpx.c
add_files src/ec_isogeny.c
add_files src/sidh.c
add_files src/sike.c
add_files src/P503.c
add_files src/sikep503_kem_enc_tb.cpp

# Add generic directory files
add_files src/generic/fp_generic.c

# Add random directory files
add_files src/random/random.c

# Add sha3 directory files
add_files src/sha3/fips202.c

# Set the top-level function
set_top sikep503_kem_enc_hw

# Create solution
open_solution "solution1" -flow_target vivado

# Set target device
set_part {xc7z020clg484-1}

# Set target clock period
create_clock -period 10

# Add testbench file
set tb_file [file normalize "src/tb_top.cpp"]
add_files -tb $tb_file

# Run C simulation
csim_design

# Run C synthesis
csynth_design

# Run C/RTL cosimulation
config_cosim -trace_level all
cosim_design

# Export RTL
export_design -format ip_catalog

exit 