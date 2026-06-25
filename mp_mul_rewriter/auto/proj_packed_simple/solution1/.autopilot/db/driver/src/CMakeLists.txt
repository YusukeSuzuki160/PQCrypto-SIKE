# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(test_mul_packed_simple)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xtest_mul_packed_simple.c)
collect (PROJECT_LIB_SOURCES xtest_mul_packed_simple_sinit.c)
collect (PROJECT_LIB_SOURCES xtest_mul_packed_simple_linux.c)
collect (PROJECT_LIB_SOURCES xtest_mul_packed_simple_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xtest_mul_packed_simple.h)
collect (PROJECT_LIB_HEADERS xtest_mul_packed_simple_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(test_mul_packed_simple STATIC ${_sources})
set_target_properties(test_mul_packed_simple PROPERTIES LINKER_LANGUAGE C)

