# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(sikep503_kem_enc_hw)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xsikep503_kem_enc_hw.c)
collect (PROJECT_LIB_SOURCES xsikep503_kem_enc_hw_sinit.c)
collect (PROJECT_LIB_SOURCES xsikep503_kem_enc_hw_linux.c)
collect (PROJECT_LIB_SOURCES xsikep503_kem_enc_hw_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xsikep503_kem_enc_hw.h)
collect (PROJECT_LIB_HEADERS xsikep503_kem_enc_hw_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(sikep503_kem_enc_hw STATIC ${_sources})
set_target_properties(sikep503_kem_enc_hw PROPERTIES LINKER_LANGUAGE C)

