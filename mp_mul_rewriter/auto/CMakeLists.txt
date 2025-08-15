cmake_minimum_required(VERSION 3.20)
project(mpx_auto_rewriter LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 揃えたいメジャー版を指定（14 か 18 あたり）
set(LLVM_REQ 14 CACHE STRING "Required LLVM/Clang major version")

find_package(LLVM  ${LLVM_REQ} EXACT REQUIRED CONFIG)
find_package(Clang ${LLVM_REQ} EXACT REQUIRED CONFIG)

string(REGEX MATCH "^[0-9]+" CLANG_VERSION_MAJOR "${Clang_PACKAGE_VERSION}")
if (NOT LLVM_VERSION_MAJOR EQUAL CLANG_VERSION_MAJOR)
  message(FATAL_ERROR "LLVM/Clang version mismatch: LLVM ${LLVM_VERSION_MAJOR} vs Clang ${CLANG_VERSION_MAJOR}")
endif()

add_executable(mpx_auto_rewriter mpx_auto_rewriter.cpp)

# monolithic があればそれを優先（重複リンク回避）
if (TARGET clang-cpp)
  target_link_libraries(mpx_auto_rewriter PRIVATE clang-cpp)
else()
  target_link_libraries(mpx_auto_rewriter PRIVATE
    clangTooling clangASTMatchers clangFrontend clangAST clangBasic clangLex LLVMSupport)
endif()

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
