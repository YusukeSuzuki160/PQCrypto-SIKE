cmake_minimum_required(VERSION 3.16)
project(mpx_tests LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# You can pass -DHLS_INCLUDE_DIR=/path/to/Vitis_HLS/include
set(HLS_INCLUDE_DIR "" CACHE PATH "Path to ap_int.h (e.g., Vitis/Vivado HLS include directory)")

# Add Boost (header-only for multiprecision)
find_package(Boost QUIET)

include_directories(${HLS_INCLUDE_DIR})
include_directories(${CMAKE_SOURCE_DIR}/includes)

add_executable(test_mpx_packed tests/test_mpx_packed.cpp)
target_compile_options(test_mpx_packed PRIVATE -O0 -g -Wall -Wextra -DDEBUG)
