cmake_minimum_required(VERSION 3.20)
project(montgomery_converter LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(LLVM_REQ 14 CACHE STRING "Required LLVM/Clang major version")

find_package(LLVM ${LLVM_REQ} REQUIRED CONFIG)
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "/usr/lib/llvm-14")
find_package(Clang REQUIRED CONFIG)

# ---- montgomery_auto_rewriter ツール ----
add_executable(montgomery_auto_rewriter montgomery_auto_rewriter.cpp)

if(TARGET clang-cpp)
  target_link_libraries(montgomery_auto_rewriter PRIVATE clang-cpp)
else()
  target_link_libraries(montgomery_auto_rewriter PRIVATE
    clangTooling clangASTMatchers clangFrontend clangAST clangBasic clangLex LLVMSupport)
endif()

target_link_libraries(montgomery_auto_rewriter PRIVATE ${LLVM_LIBRARIES})
target_link_directories(montgomery_auto_rewriter PRIVATE /usr/lib/llvm-14/lib)
target_link_libraries(montgomery_auto_rewriter PRIVATE /usr/lib/llvm-14/lib/libLLVM-14.so)

target_include_directories(montgomery_auto_rewriter PRIVATE
  ${LLVM_INCLUDE_DIRS}
  ${CLANG_INCLUDE_DIRS})

target_compile_definitions(montgomery_auto_rewriter PRIVATE ${LLVM_DEFINITIONS})

if(EXISTS ${LLVM_TOOLS_BINARY_DIR}/llvm-config)
  execute_process(
    COMMAND ${LLVM_TOOLS_BINARY_DIR}/llvm-config --libdir
    OUTPUT_VARIABLE LLVM_LIBDIR OUTPUT_STRIP_TRAILING_WHITESPACE)
  set_target_properties(montgomery_auto_rewriter PROPERTIES
    BUILD_RPATH   "${LLVM_LIBDIR}"
    INSTALL_RPATH "${LLVM_LIBDIR}")
endif()

# ---- ソフトウェア検証用テスト（オプション） ----
option(BUILD_EXAMPLES "Build example Montgomery programs for software verification" ON)

if(BUILD_EXAMPLES)
  add_executable(test_mont_cios examples/test_mont_cios.cpp)
  target_include_directories(test_mont_cios PRIVATE include)
  target_compile_options(test_mont_cios PRIVATE -Wall -Wextra -O2)
endif()
