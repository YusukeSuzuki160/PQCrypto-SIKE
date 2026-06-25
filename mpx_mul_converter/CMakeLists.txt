cmake_minimum_required(VERSION 3.20)
project(mpx_mul_converter LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(LLVM_REQ 14 CACHE STRING "Required LLVM/Clang major version")

find_package(LLVM ${LLVM_REQ} REQUIRED CONFIG)
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "/usr/lib/llvm-14")
find_package(Clang REQUIRED CONFIG)

add_executable(mpx_auto_rewriter mpx_auto_rewriter.cpp)

if (TARGET clang-cpp)
  target_link_libraries(mpx_auto_rewriter PRIVATE clang-cpp)
else()
  target_link_libraries(mpx_auto_rewriter PRIVATE
    clangTooling clangASTMatchers clangFrontend clangAST clangBasic clangLex LLVMSupport)
endif()

target_link_libraries(mpx_auto_rewriter PRIVATE ${LLVM_LIBRARIES})
target_link_directories(mpx_auto_rewriter PRIVATE /usr/lib/llvm-14/lib)
target_link_libraries(mpx_auto_rewriter PRIVATE /usr/lib/llvm-14/lib/libLLVM-14.so)

target_include_directories(mpx_auto_rewriter PRIVATE ${LLVM_INCLUDE_DIRS} ${CLANG_INCLUDE_DIRS})
target_compile_definitions(mpx_auto_rewriter PRIVATE ${LLVM_DEFINITIONS})

if (EXISTS ${LLVM_TOOLS_BINARY_DIR}/llvm-config)
  execute_process(COMMAND ${LLVM_TOOLS_BINARY_DIR}/llvm-config --libdir
                  OUTPUT_VARIABLE LLVM_LIBDIR OUTPUT_STRIP_TRAILING_WHITESPACE)
  set_target_properties(mpx_auto_rewriter PROPERTIES
    BUILD_RPATH   "${LLVM_LIBDIR}"
    INSTALL_RPATH "${LLVM_LIBDIR}")
endif()
