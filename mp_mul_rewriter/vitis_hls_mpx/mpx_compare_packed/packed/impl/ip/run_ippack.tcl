# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
source -notrace "/home2/meltpoint/Xilinx/Vitis/2024.2/common/scripts/ipxhls.tcl"
set ip_dir "/home/meltpoint/eeic/PQCrypto-SIKE/mp_mul_rewriter/vitis_hls_mpx/mpx_compare_packed/packed/impl/ip"
set data_file "/home/meltpoint/eeic/PQCrypto-SIKE/mp_mul_rewriter/vitis_hls_mpx/mpx_compare_packed/packed/packed_data.json"
set ip_types "vitis sysgen"
if { [catch {::ipx::utils::package_hls_ip $ip_dir $data_file $ip_types } res] } {
  puts "Caught error:\n$::errorInfo"
  error $res
}
