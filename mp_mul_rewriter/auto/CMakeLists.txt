cmake_minimum_required(VERSION 3.20)
project(mpx_auto_rewriter LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Vitis HLSのヘッダーファイルパスを設定
set(VITIS_HLS_INCLUDE "/home2/meltpoint/Xilinx/Vitis/2024.2/include")
set(VITIS_HLS_AUTOPILOT "/home2/meltpoint/Xilinx/Vitis/2024.2/common/technology/autopilot")

# 揃えたいメジャー版を指定（14 か 18 あたり）
set(LLVM_REQ 14 CACHE STRING "Required LLVM/Clang major version")

find_package(LLVM  ${LLVM_REQ} REQUIRED CONFIG)
# Clangの検索パスを明示的に指定
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "/usr/lib/llvm-14")
find_package(Clang REQUIRED CONFIG)

# バージョンチェックを一時的に無効化（Clangのバージョン情報が正しく取得できない場合があるため）
# string(REGEX MATCH "^[0-9]+" CLANG_VERSION_MAJOR "${Clang_PACKAGE_VERSION}")
# if (NOT LLVM_VERSION_MAJOR EQUAL CLANG_VERSION_MAJOR)
#   message(FATAL_ERROR "LLVM/Clang version mismatch: LLVM ${LLVM_VERSION_MAJOR} vs Clang ${CLANG_VERSION_MAJOR}")
# endif()

add_executable(mpx_auto_rewriter mpx_auto_rewriter.cpp)

# monolithic があればそれを優先（重複リンク回避）
if (TARGET clang-cpp)
  target_link_libraries(mpx_auto_rewriter PRIVATE clang-cpp)
else()
  target_link_libraries(mpx_auto_rewriter PRIVATE
    clangTooling clangASTMatchers clangFrontend clangAST clangBasic clangLex LLVMSupport)
endif()

# LLVMのライブラリも明示的にリンク
target_link_libraries(mpx_auto_rewriter PRIVATE ${LLVM_LIBRARIES})

# LLVMのライブラリパスを明示的に指定
target_link_directories(mpx_auto_rewriter PRIVATE /usr/lib/llvm-14/lib)

# LLVM 14のライブラリを明示的に指定
target_link_libraries(mpx_auto_rewriter PRIVATE /usr/lib/llvm-14/lib/libLLVM-14.so)

target_include_directories(mpx_auto_rewriter PRIVATE ${LLVM_INCLUDE_DIRS} ${CLANG_INCLUDE_DIRS})
target_compile_definitions(mpx_auto_rewriter PRIVATE ${LLVM_DEFINITIONS})

# 実行時のライブラリ探索を固定（LD_LIBRARY_PATH 不要に）
if (EXISTS ${LLVM_TOOLS_BINARY_DIR}/llvm-config)
  execute_process(COMMAND ${LLVM_TOOLS_BINARY_DIR}/llvm-config --libdir
                  OUTPUT_VARIABLE LLVM_LIBDIR OUTPUT_STRIP_TRAILING_WHITESPACE)
  set_target_properties(mpx_auto_rewriter PROPERTIES
    BUILD_RPATH   "${LLVM_LIBDIR}"
    INSTALL_RPATH "${LLVM_LIBDIR}")
endif()

# テストプログラムをビルド
add_executable(mp_test_program mp_test_program.cpp)

# テストプログラムのインクルードディレクトリを設定
target_include_directories(mp_test_program PRIVATE 
    ${VITIS_HLS_INCLUDE}
    ${VITIS_HLS_AUTOPILOT}
    ${CMAKE_CURRENT_SOURCE_DIR}
)

# USE_AP_INTマクロを定義してap_int.hを使用
target_compile_definitions(mp_test_program PRIVATE USE_AP_INT)

# テストプログラムのコンパイルオプション
target_compile_options(mp_test_program PRIVATE -O2)

# mp_mul_orig 本体に近い TSC ベンチ（x86 のみ想定）
add_executable(bench_mp_mul_orig_cycles bench_mp_mul_orig_cycles.cpp)
target_compile_options(bench_mp_mul_orig_cycles PRIVATE -O3 -march=native)
