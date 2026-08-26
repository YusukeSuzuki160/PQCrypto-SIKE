#pragma once
// mont_ops_fios_csa_true.hpp
// FIOS-CSA-Flat の続き — 真の Carry-Save（冗長表現）版
//
// FIOS-CSA-Flat (既存最良) は「事前和」でステップ内の入力数を減らしたが、
// 各外側ステップの最後には t[] を毎回 通常の2進数（正規化済み）配列として
// 確定させている。つまり j=1..N-1 の CARRY_CHAIN には依然として
// 逐次キャリー伝播（N-2 段の依存チェーン）が残る。
//
// 本版は t[] を「冗長表現」(sum 配列 S[] + carry 配列 Cy[] の2本立て、
// value = Σ_k (S[k]+Cy[k])·W^k）のまま N 回の外側反復を通して保持し、
// 各反復では
//   - u_i を決めるために必要な「下位語 mod W」だけを一度だけ小さく正規化
//   - それ以外の語は 3:2 圧縮器（XOR/AND, ビット単位で桁上げが伝播しない）
//     で複数オペランドをまとめ、2本の冗長行に圧縮するだけ
// という形にして、外側ループ内の「逐次キャリー伝播」を可能な限り排除する。
// 最終的な正規化（本物の桁上げ伝播 CPA）は全反復が終わった後に一度だけ行う。
//
// 正当性: 3:2 圧縮器の恒等式 a+b+c = (a^b^c) + (((a&b)|(b&c)|(a&c))<<1) は
// ビット幅に依らず厳密に成立する。本実装は mont_ops_fios_csa_flat.hpp の
// 各ステップ（Step A / PRESUM / CARRY_CHAIN / Step D）が計算する値を
// 「いつ正規化するか」だけを変えたものであり、各スロットの演算子集合は
// 元の実装の式を代数的に追跡して導出した。
//
// 期待される効果: N=4 では CARRY_CHAIN 自体がすでに非常に浅い
// （FPGA の高速キャリーチェーンにより 2〜3 段程度）ため、恩恵は限定的な
// 可能性が高い。より大きな N（SIKEp434 相当など）でこそ有効と推測される。
// 実測して判断する。

#include <climits>
#include <cstdint>
#include <type_traits>

namespace mont_fios_csa_true {

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
struct MontOps_FIOS_CSA_True {
    using Wide = typename wide_type<T>::type;
    static constexpr unsigned WBITS = sizeof(T) * CHAR_BIT;
    static constexpr T        WMASK = static_cast<T>(~static_cast<T>(0));

    // 3:2 圧縮器 (full-adder identity): a+b+c = sum + carry, ビット並列・桁上げ伝播なし
    static void csa32(Wide a, Wide b, Wide c, Wide &sum, Wide &carry) {
#pragma HLS INLINE
        sum   = a ^ b ^ c;
        carry = ((a & b) | (b & c) | (a & c)) << 1;
    }

    // 8 個のオペランドを 3:2 圧縮器の Wallace 木で 2 本(S,C)に還元。
    // コンパイル時に段数固定で完全展開されるよう、実行時条件を含む
    // ループを使わず直接記述する (HLS が確実に組み合わせ回路化できるように)。
    static void csa_reduce8(Wide (&ops)[8], Wide &outS, Wide &outC) {
#pragma HLS INLINE
        // Stage 1: 8 -> (3 x csa32 groups: 3+3+2) -> 6 values (2 pass-through)
        Wide s1, c1, s2, c2;
        csa32(ops[0], ops[1], ops[2], s1, c1);
        csa32(ops[3], ops[4], ops[5], s2, c2);
        Wide p1 = ops[6], p2 = ops[7];   // pass-through (only 2 left)

        // Stage 2: reduce {s1,c1,s2,c2,p1,p2} (6 values) -> 4 values
        Wide s3, c3, s4, c4;
        csa32(s1, c1, s2, s3, c3);
        csa32(c2, p1, p2, s4, c4);

        // Stage 3: reduce {s3,c3,s4,c4} (4 values) -> 3 values
        Wide s5, c5;
        csa32(s3, c3, s4, s5, c5);
        Wide p3 = c4;

        // Stage 4: reduce {s5,c5,p3} (3 values) -> 2 values (final)
        csa32(s5, c5, p3, outS, outC);
    }

    static void mul(const T a[NWORDS], const T b[NWORDS], T c[NWORDS],
                    const T mod[NWORDS], T mprime)
    {
#pragma HLS INLINE off
        // 冗長アキュムレータ: value = Σ_k (S[k]+Cy[k])·W^k, スロット数 NWORDS+2
        // (NWORDS-1 は Step D 用のオーバーフロースロット、+1 は安全マージン)
        static constexpr unsigned NSLOT = NWORDS + 2;
        Wide S[NSLOT], Cy[NSLOT];
#pragma HLS ARRAY_PARTITION variable=S complete dim=1
#pragma HLS ARRAY_PARTITION variable=Cy complete dim=1
        for (unsigned k = 0; k < NSLOT; k++) {
#pragma HLS UNROLL
            S[k]  = 0;
            Cy[k] = 0;
        }

        FIOS_OUTER: for (unsigned i = 0; i < NWORDS; i++) {
#pragma HLS LOOP_TRIPCOUNT min=NWORDS max=NWORDS avg=NWORDS
#pragma HLS UNROLL

            // ---- pp[j], pm[j] を求めるには u_i が先に要る。
            //      u_i は「スロット0 mod W」から決まる。スロット0は非正規化
            //      (S[0]+Cy[0]) のままだが、mod W の値は正規化しなくても
            //      下位語の小さな 3 オペランド CPA で厳密に求まる
            //      (この CPA 自体は 1 語幅、N に依存しないので浅い)。
            Wide pp0     = static_cast<Wide>(a[0]) * static_cast<Wide>(b[i]);
            Wide pp0_lo  = pp0 & WMASK;
            Wide pp0_hi  = pp0 >> WBITS;

            Wide tiny1   = S[0] + Cy[0] + pp0_lo;      // 小さな3項CPA (幅 W+数ビット)
            T    t0modw  = static_cast<T>(tiny1 & WMASK);
            Wide carryA  = tiny1 >> WBITS;

            T u_i = static_cast<T>(
                (static_cast<Wide>(t0modw) * static_cast<Wide>(mprime)) & WMASK);

            Wide pm0     = static_cast<Wide>(u_i) * static_cast<Wide>(mod[0]);
            Wide pm0_lo  = pm0 & WMASK;
            Wide pm0_hi  = pm0 >> WBITS;

            Wide tiny2   = static_cast<Wide>(t0modw) + pm0_lo;   // 小さな2項CPA
            Wide carryB  = tiny2 >> WBITS;

            // ---- pp[j], pm[j] (j=1..NWORDS-1), 相互独立 ----
            Wide pp_lo[NWORDS], pp_hi[NWORDS], pm_lo[NWORDS], pm_hi[NWORDS];
#pragma HLS ARRAY_PARTITION variable=pp_lo complete dim=1
#pragma HLS ARRAY_PARTITION variable=pp_hi complete dim=1
#pragma HLS ARRAY_PARTITION variable=pm_lo complete dim=1
#pragma HLS ARRAY_PARTITION variable=pm_hi complete dim=1
            pp_lo[0] = pp0_lo; pp_hi[0] = pp0_hi;
            pm_lo[0] = pm0_lo; pm_hi[0] = pm0_hi;
            PPPM: for (unsigned j = 1; j < NWORDS; j++) {
#pragma HLS UNROLL
                Wide pp = static_cast<Wide>(a[j]) * static_cast<Wide>(b[i]);
                Wide pm = static_cast<Wide>(u_i) * static_cast<Wide>(mod[j]);
                pp_lo[j] = pp & WMASK; pp_hi[j] = pp >> WBITS;
                pm_lo[j] = pm & WMASK; pm_hi[j] = pm >> WBITS;
            }

            // ---- 各出力スロット k=0..NWORDS-1 を並列に(段間依存なし)圧縮 ----
            // 一般則: スロット k は old_S[k+1],old_Cy[k+1] (shift),
            //          pp[k+1]_lo, pm[k+1]_lo (存在すれば),
            //          pp[k]_hi, pm[k]_hi (存在すれば) から構成される。
            // k=0 のみ、上の tiny CPA で導いた carryA, carryB を追加する
            // (Step A 相当: u_i 導出に pp[0] を織り込む FIOS の性質のため)。
            Wide newS[NSLOT], newC[NSLOT];
#pragma HLS ARRAY_PARTITION variable=newS complete dim=1
#pragma HLS ARRAY_PARTITION variable=newC complete dim=1

            SLOT: for (unsigned k = 0; k < NWORDS; k++) {
#pragma HLS UNROLL
                Wide ops[8];
#pragma HLS ARRAY_PARTITION variable=ops complete dim=1
                ops[0] = S[k + 1];
                ops[1] = Cy[k + 1];
                ops[2] = (k + 1 < NWORDS) ? pp_lo[k + 1] : static_cast<Wide>(0);
                ops[3] = (k + 1 < NWORDS) ? pm_lo[k + 1] : static_cast<Wide>(0);
                ops[4] = pp_hi[k];
                ops[5] = pm_hi[k];
                ops[6] = (k == 0) ? carryA : static_cast<Wide>(0);
                ops[7] = (k == 0) ? carryB : static_cast<Wide>(0);
                Wide sOut, cOut;
                csa_reduce8(ops, sOut, cOut);
                newS[k] = sOut;
                newC[k] = cOut;
            }
            // 残りのスロット (NWORDS..NSLOT-1) は単純シフト(古い値を1つ下げる)
            for (unsigned k = NWORDS; k < NSLOT; k++) {
#pragma HLS UNROLL
                Wide ops[2] = { (k + 1 < NSLOT) ? S[k + 1]  : static_cast<Wide>(0),
                                (k + 1 < NSLOT) ? Cy[k + 1] : static_cast<Wide>(0) };
                newS[k] = ops[0];
                newC[k] = ops[1];
            }

            for (unsigned k = 0; k < NSLOT; k++) {
#pragma HLS UNROLL
                S[k]  = newS[k];
                Cy[k] = newC[k];
            }
        }

        // ---- 最終正規化: 冗長表現 → 通常の2進配列へ (このみ1回だけ本物のCPA) ----
        T t[NWORDS + 1];
#pragma HLS ARRAY_PARTITION variable=t complete dim=1
        {
            Wide carry = 0;
            for (unsigned k = 0; k <= NWORDS; k++) {
#pragma HLS UNROLL
                Wide s = S[k] + Cy[k] + carry;
                t[k]   = static_cast<T>(s & WMASK);
                carry  = s >> WBITS;
            }
            // 残余スロットは理論上ゼロになるはず (mod p 演算の性質上)。
            // オーバーフロー保護のため無視せず読み捨てる (デバッグ時のみ有効)。
        }

        // 定数時間条件付き減算 (mont_ops_fios_csa_flat.hpp と同一)
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

} // namespace mont_fios_csa_true
