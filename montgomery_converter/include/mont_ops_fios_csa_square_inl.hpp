#pragma once
// mont_ops_fios_csa_square_inl.hpp — mont_ops_fios_csa_square.hpp から
// mul()の "#pragma HLS INLINE off" を除いた版 (トップPIPELINEとの公正な比較用)
#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios_csa_square_inl {

template <typename T>
struct wide_type {
    using type = typename std::conditional<
        sizeof(T) <= 1, uint16_t,
        typename std::conditional<
            sizeof(T) <= 2, uint32_t,
            typename std::conditional<
                sizeof(T) <= 4, uint64_t,
                __uint128_t>::type>::type>::type;
};

template <typename T, unsigned NWORDS>
struct MontOps_FIOS_CSA_Square_Inl {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    static void square_full(const T a[NWORDS], T prod[2 * NWORDS]) {
        Wide acc[2 * NWORDS];
#pragma HLS ARRAY_PARTITION variable=acc complete dim=1
        for (unsigned k = 0; k < 2 * NWORDS; k++) {
#pragma HLS UNROLL
            acc[k] = 0;
        }
        for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS UNROLL
            Wide p = static_cast<Wide>(a[i]) * static_cast<Wide>(a[i]);
            acc[2 * i]     += (p & WMASK);
            acc[2 * i + 1] += (p >> WBITS);
        }
        for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS UNROLL
            for (unsigned j = i + 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide p   = static_cast<Wide>(a[i]) * static_cast<Wide>(a[j]);
                Wide lo  = p & WMASK;
                Wide hi  = p >> WBITS;
                Wide lo2 = lo << 1;
                Wide hi2 = hi << 1;
                acc[i + j]     += (lo2 & WMASK);
                acc[i + j + 1] += (lo2 >> WBITS) + hi2;
            }
        }
        Wide carry = 0;
        for (unsigned k = 0; k < 2 * NWORDS; k++) {
#pragma HLS UNROLL
            Wide s = acc[k] + carry;
            prod[k] = static_cast<T>(s & WMASK);
            carry   = s >> WBITS;
        }
    }

    static void redc(T x[2 * NWORDS], const T mod[NWORDS], T mprime, T c[NWORDS]) {
        T t[2 * NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1
        for (unsigned k = 0; k < 2 * NWORDS; k++) {
#pragma HLS UNROLL
            t[k] = x[k];
        }
        t[2 * NWORDS] = 0;

        for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS UNROLL
            T m = static_cast<T>((static_cast<Wide>(t[i]) * static_cast<Wide>(mprime)) & WMASK);
            Wide C = 0;
            for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide p = static_cast<Wide>(t[i + j]) + static_cast<Wide>(m) * static_cast<Wide>(mod[j]) + C;
                t[i + j] = static_cast<T>(p & WMASK);
                C = p >> WBITS;
            }
            for (unsigned k = i + NWORDS; k <= 2 * NWORDS; k++) {
#pragma HLS UNROLL
                Wide s = static_cast<Wide>(t[k]) + C;
                t[k] = static_cast<T>(s & WMASK);
                C = s >> WBITS;
            }
        }

        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1
        Wide borrow = 0;
        for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t[NWORDS + j]) - static_cast<Wide>(mod[j]) - borrow;
            u[j] = static_cast<T>(d & WMASK);
            borrow = (d >> WBITS) & 1;
        }
        T keep_t = static_cast<T>(0) - static_cast<T>(t[2 * NWORDS] < static_cast<T>(borrow));
        for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            c[j] = (t[NWORDS + j] & keep_t) | (u[j] & static_cast<T>(~keep_t & WMASK));
        }
    }

    static void mul(const T a[NWORDS], T c[NWORDS], const T mod[NWORDS], T mprime) {
        T prod[2 * NWORDS];
#pragma HLS ARRAY_PARTITION variable=prod complete dim=1
        square_full(a, prod);
        redc(prod, mod, mprime, c);
    }
};

} // namespace mont_fios_csa_square_inl
