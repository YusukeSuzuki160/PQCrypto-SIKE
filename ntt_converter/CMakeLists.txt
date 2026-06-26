cmake_minimum_required(VERSION 3.20)
project(ntt_converter LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(LLVM_REQ 14 CACHE STRING "Required LLVM/Clang major version")

find_package(LLVM ${LLVM_REQ} REQUIRED CONFIG)
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "/usr/lib/llvm-14")
find_package(Clang REQUIRED CONFIG)

# ---- ntt_auto_rewriter ツール ----
add_executable(ntt_auto_rewriter ntt_auto_rewriter.cpp)

if(TARGET clang-cpp)
  target_link_libraries(ntt_auto_rewriter PRIVATE clang-cpp)
else()
  target_link_libraries(ntt_auto_rewriter PRIVATE
    clangTooling clangASTMatchers clangFrontend clangAST clangBasic clangLex LLVMSupport)
endif()

target_link_libraries(ntt_auto_rewriter PRIVATE ${LLVM_LIBRARIES})
target_link_directories(ntt_auto_rewriter PRIVATE /usr/lib/llvm-14/lib)
target_link_libraries(ntt_auto_rewriter PRIVATE /usr/lib/llvm-14/lib/libLLVM-14.so)

target_include_directories(ntt_auto_rewriter PRIVATE
  ${LLVM_INCLUDE_DIRS}
  ${CLANG_INCLUDE_DIRS})

target_compile_definitions(ntt_auto_rewriter PRIVATE ${LLVM_DEFINITIONS})

if(EXISTS ${LLVM_TOOLS_BINARY_DIR}/llvm-config)
  execute_process(
    COMMAND ${LLVM_TOOLS_BINARY_DIR}/llvm-config --libdir
    OUTPUT_VARIABLE LLVM_LIBDIR OUTPUT_STRIP_TRAILING_WHITESPACE)
  set_target_properties(ntt_auto_rewriter PROPERTIES
    BUILD_RPATH   "${LLVM_LIBDIR}"
    INSTALL_RPATH "${LLVM_LIBDIR}")
endif()

# ---- ソフトウェア検証用テスト（オプション） ----
option(BUILD_EXAMPLES "Build example NTT programs for software verification" ON)

if(BUILD_EXAMPLES)
  add_executable(test_ntt_ct  examples/test_ntt_ct.cpp)
  add_executable(test_ntt_gs  examples/test_ntt_gs.cpp)

  # C++17以降で __int128 が使える環境を想定
  target_compile_options(test_ntt_ct PRIVATE -Wall -Wextra -O2)
  target_compile_options(test_ntt_gs PRIVATE -Wall -Wextra -O2)
endif()
