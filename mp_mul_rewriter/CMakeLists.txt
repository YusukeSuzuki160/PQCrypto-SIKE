cmake_minimum_required(VERSION 3.20)
project(mp_mul_rewriter LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# zstdライブラリを明示的に見つける
find_package(PkgConfig REQUIRED)
pkg_check_modules(ZSTD REQUIRED libzstd)

# ==== ここで同じメジャーバージョンに固定 ====
# 例: 14 に揃えるなら 14、18 に揃えるなら 18 に変更
set(LLVM_REQ 14 CACHE STRING "Required LLVM/Clang major version")

# バージョン指定を緩和して、メジャーバージョンのみをチェック
find_package(LLVM REQUIRED CONFIG)
find_package(Clang REQUIRED CONFIG)

# バージョンチェックを明示的に行う
if (LLVM_VERSION_MAJOR LESS LLVM_REQ)
  message(FATAL_ERROR "LLVM ${LLVM_VERSION_MAJOR} is too old. Required: ${LLVM_REQ}")
endif()

# Clangのバージョンチェックを無効化（LLVM 14との互換性のため）
# if (DEFINED Clang_VERSION_MAJOR AND Clang_VERSION_MAJOR LESS LLVM_REQ)
#   message(FATAL_ERROR "Clang ${Clang_VERSION_MAJOR} is too old. Required: ${LLVM_REQ}")
# endif()

message(STATUS "LLVM ${LLVM_PACKAGE_VERSION} at ${LLVM_DIR}")
if (DEFINED Clang_PACKAGE_VERSION)
  message(STATUS "Clang ${Clang_PACKAGE_VERSION} at ${Clang_DIR}")
else()
  message(STATUS "Clang version not detected, but continuing...")
endif()
message(STATUS "zstd found at ${ZSTD_LIBRARY_DIRS}")

add_executable(mp_mul_rewriter mp_mul_rewriter.cpp)
add_executable(mpx_rewriter_v2 mpx_rewriter_v2.cpp)

# SYSTEM は使わず、こちらを優先させる
target_include_directories(mp_mul_rewriter PRIVATE
  ${LLVM_INCLUDE_DIRS}
  ${CLANG_INCLUDE_DIRS}
  ${ZSTD_INCLUDE_DIRS}
)
target_include_directories(mpx_rewriter_v2 PRIVATE
  ${LLVM_INCLUDE_DIRS}
  ${CLANG_INCLUDE_DIRS}
  ${ZSTD_INCLUDE_DIRS}
)
target_compile_definitions(mp_mul_rewriter PRIVATE ${LLVM_DEFINITIONS})
target_compile_definitions(mpx_rewriter_v2 PRIVATE ${LLVM_DEFINITIONS})

# zstdライブラリを明示的にリンク
target_link_libraries(mp_mul_rewriter PRIVATE ${ZSTD_LIBRARIES})
target_link_libraries(mpx_rewriter_v2 PRIVATE ${ZSTD_LIBRARIES})

# バージョン差異に耐えるように必要なら存在チェックしてリンク
target_link_libraries(mp_mul_rewriter PRIVATE
  clangTooling
  clangBasic
  clangASTMatchers
  clangFrontend
  clangAST
  clangLex
  LLVMSupport
)

target_link_libraries(mpx_rewriter_v2 PRIVATE
  clangTooling
  clangBasic
  clangASTMatchers
  clangFrontend
  clangAST
  clangLex
  LLVMSupport
)

# 一部のバージョンでは必要
if (TARGET clangRewriteFrontend)
  target_link_libraries(mp_mul_rewriter PRIVATE clangRewriteFrontend)
  target_link_libraries(mpx_rewriter_v2 PRIVATE clangRewriteFrontend)
elseif (TARGET clangRewrite)
  target_link_libraries(mp_mul_rewriter PRIVATE clangRewrite)
  target_link_libraries(mpx_rewriter_v2 PRIVATE clangRewrite)
endif()

foreach(lib IN ITEMS clangDriver clangParse clangSerialization clangSema clangAnalysis clangEdit)
  if (TARGET ${lib})
    target_link_libraries(mp_mul_rewriter PRIVATE ${lib})
    target_link_libraries(mpx_rewriter_v2 PRIVATE ${lib})
  endif()
endforeach()
