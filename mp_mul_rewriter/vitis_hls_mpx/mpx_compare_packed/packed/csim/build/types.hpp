#pragma once
#include <ap_int.h>
#include <climits>
#include <cstdint>

// === Global configuration for synthesis ===
using digit_t = uint64_t;             // 32/64 などに変更可
static const unsigned MAX_NWORDS = 8; // nwords <= MAX_NWORDS
static const bool     LSW_FIRST  = true; // false で MSW-first
