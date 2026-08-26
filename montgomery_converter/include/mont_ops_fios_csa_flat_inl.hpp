#pragma once
// mont_ops_fios_csa_flat_inl.hpp — mont_ops_fios_csa_flat.hpp から
// "#pragma HLS INLINE off" を除いた版。トップ関数レベル PIPELINE との
// 公正な比較のために使用 (INLINE off があるとサブモジュール境界で
// パイプライン化を阻害する可能性があるため)。

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios_csa_flat_inl {

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
struct MontOps_FIOS_CSA_Flat_Inl {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
        T t[NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1

        for (unsigned k = 0; k < NWORDS + 1; k++) {
#pragma HLS UNROLL
            t[k] = 0;
        }

        FIOS_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS UNROLL

            Wide pp0  = static_cast<Wide>(a[0]) * static_cast<Wide>(b[i]);
            Wide lo0  = (pp0 & WMASK) + static_cast<Wide>(t[0]);
            Wide hi0  = (pp0 >> WBITS) + (lo0 >> WBITS);
            T u_i = static_cast<T>(
                (static_cast<Wide>(static_cast<T>(lo0 & WMASK))
                 * static_cast<Wide>(mprime)) & WMASK);
            Wide pm0  = static_cast<Wide>(u_i) * static_cast<Wide>(mod[0]);
            Wide j0lo = (lo0 & WMASK) + (pm0 & WMASK);
            Wide C    = hi0 + (pm0 >> WBITS) + (j0lo >> WBITS);

            Wide base_lo[NWORDS], base_hi[NWORDS];
#pragma HLS ARRAY_PARTITION variable=base_lo complete dim=1
#pragma HLS ARRAY_PARTITION variable=base_hi complete dim=1

            PRESUM: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide pp = static_cast<Wide>(a[j]) * static_cast<Wide>(b[i]);
                Wide pm = static_cast<Wide>(u_i) * static_cast<Wide>(mod[j]);
                Wide blo_full  = (pp & WMASK) + (pm & WMASK) + static_cast<Wide>(t[j]);
                base_lo[j]     = blo_full & WMASK;
                base_hi[j]     = (pp >> WBITS) + (pm >> WBITS) + (blo_full >> WBITS);
            }

            CARRY_CHAIN: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide C_lo = C & WMASK;
                Wide C_hi = C >> WBITS;
                Wide lo_sum   = base_lo[j] + C_lo;
                Wide lo_carry = lo_sum >> WBITS;
                Wide hi_sum   = base_hi[j] + C_hi + lo_carry;
                t[j - 1] = static_cast<T>(lo_sum & WMASK);
                C         = hi_sum;
            }

            Wide s        = static_cast<Wide>(t[NWORDS]) + C;
            t[NWORDS - 1] = static_cast<T>(s & WMASK);
            t[NWORDS]     = static_cast<T>(s >> WBITS);
        }

        T u[NWORDS];
#pragma HLS ARRAY_PARTITION variable=u complete dim=1
        Wide borrow = 0;
        CSUB_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            Wide d = static_cast<Wide>(t[j])
                   - static_cast<Wide>(mod[j]) - borrow;
            u[j]   = static_cast<T>(d & WMASK);
            borrow  = (d >> WBITS) & 1;
        }
        T keep_t = static_cast<T>(0)
                 - static_cast<T>(t[NWORDS] == 0 && borrow == 1);
        SEL_LOOP: for (unsigned j = 0; j < NWORDS; j++) {
#pragma HLS UNROLL
            c[j] = (t[j] & keep_t) | (u[j] & static_cast<T>(~keep_t & WMASK));
        }
    }
};

} // namespace mont_fios_csa_flat_inl
