"""
draw_hw_architecture.py
ハードウェアアーキテクチャレベルの詳細図を生成する。

生成される図:
  hw_01_rtl_pipeline.png    : RTL パイプライン全体図 (6ステージ + t[]フィードバック)
  hw_02_pp_dsp_chain.png    : PP Stage DSP ブロック + キャリー連鎖
  hw_03_red_m_compute.png   : m 計算 + RED Stage DSP ブロック
  hw_04_loop_dep_ii2.png    : ループ間依存と II=2 の成立根拠
  hw_05_array_partition.png : ARRAY_PARTITION の効果 (メモリ → レジスタバンク)
"""

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.patches as patches
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch, Rectangle, FancyArrow
from matplotlib.lines import Line2D
import numpy as np
import matplotlib.font_manager as fm

# ── フォント ──────────────────────────────────────────────────
def _find_jp():
    avail = {f.name for f in fm.fontManager.ttflist}
    for c in ["Noto Sans CJK JP", "Noto Sans CJK SC", "IPAexGothic", "DejaVu Sans"]:
        if c in avail:
            return c
    return "sans-serif"

JP = _find_jp()
matplotlib.rcParams["font.family"] = JP

# ── 描画ヘルパー ───────────────────────────────────────────────
def rect(ax, x, y, w, h, fc="#DDEEFF", ec="#3366AA", lw=1.5,
         text="", fs=9, fw="normal", va_txt="center", style="round,pad=0.05", zorder=2):
    p = FancyBboxPatch((x, y), w, h, boxstyle=style,
                       fc=fc, ec=ec, lw=lw, zorder=zorder)
    ax.add_patch(p)
    if text:
        ax.text(x+w/2, y+h/2, text, ha="center", va=va_txt,
                fontsize=fs, fontweight=fw, fontname=JP,
                wrap=True, zorder=zorder+1)

def txt(ax, x, y, s, fs=9, fw="normal", ha="center", va="center",
        color="#111111", zorder=5, bbox=None):
    kw = dict(ha=ha, va=va, fontsize=fs, fontweight=fw, fontname=JP,
              color=color, zorder=zorder)
    if bbox:
        kw["bbox"] = bbox
    ax.text(x, y, s, **kw)

def arr(ax, x0, y0, x1, y1, color="#333333", lw=1.5, hw=0.06, hl=0.1,
        style="->", rad=0.0, zorder=4):
    ax.annotate("", xy=(x1,y1), xytext=(x0,y0),
                arrowprops=dict(arrowstyle=style, color=color, lw=lw,
                                mutation_scale=12,
                                connectionstyle=f"arc3,rad={rad}"),
                zorder=zorder)

def hline(ax, y, x0, x1, color="#AAAAAA", lw=1.0, ls="--"):
    ax.plot([x0,x1],[y,y], color=color, lw=lw, ls=ls, zorder=1)

def vline(ax, x, y0, y1, color="#AAAAAA", lw=1.0, ls="--"):
    ax.plot([x,x],[y0,y1], color=color, lw=lw, ls=ls, zorder=1)

def save(fig, name, dpi=160):
    fig.savefig(name, dpi=dpi, bbox_inches="tight", facecolor="white")
    plt.close(fig)
    print(f"  保存: {name}")


# ══════════════════════════════════════════════════════════════
# 図 HW-1: RTL パイプライン全体図
# ══════════════════════════════════════════════════════════════
def draw_rtl_pipeline():
    fig, ax = plt.subplots(figsize=(18, 10))
    ax.set_xlim(0, 18); ax.set_ylim(0, 10)
    ax.axis("off"); fig.patch.set_facecolor("white")

    txt(ax, 9, 9.7,
        "RTL パイプライン全体図  (WORD_BITS=32, NWORDS=8, II=2, Depth=6)",
        fs=14, fw="bold")

    # ── 入力レジスタ ──
    rect(ax, 0.2, 8.5, 2.2, 0.7, text="入力レジスタ\na[7:0]  b[7:0]\nmod[7:0]  mprime",
         fc="#EEF8EE", ec="#339933", fs=8)
    # ループカウンタ
    rect(ax, 0.2, 7.4, 2.2, 0.7,
         text="ループカウンタ\ni  (0..7)\n#pragma HLS PIPELINE",
         fc="#FFFFD0", ec="#AA8800", fs=8)

    # ── t[] レジスタバンク (左端) ──
    rect(ax, 0.2, 2.5, 2.2, 4.5,
         fc="#FFF8E0", ec="#CC8800", lw=2)
    txt(ax, 1.3, 6.7, "t[] レジスタバンク", fs=9, fw="bold")
    txt(ax, 1.3, 6.4, "(完全分割 × 10 個)", fs=8, color="#666600")
    for k in range(10):
        ry = 5.8 - k*0.32
        fc_c = "#FFFFAA" if k < 8 else "#FFEECC"
        rect(ax, 0.35, ry, 1.9, 0.26, fc=fc_c, ec="#CC8800", lw=1.0,
             text=f"t[{k}]  32bit FF", fs=7.5)

    # ── 6 ステージ ──
    stage_cfg = [
        # (x,   label,          detail,                                     fc,       ec      )
        (2.8,  "S1\nPP 前半",   "a[j]×b[i]\n乗算開始\n(DSP×8)",         "#FFE0FF","#884488"),
        (5.1,  "S2\nPP 後半",   "部分積 + C1\nキャリー連鎖\n(加算器×8)", "#FFE0FF","#884488"),
        (7.4,  "S3\nm 計算",    "p0>>W → C2\nm=t[0]×mprime\n(DSP×1)",   "#FFE8D0","#AA5500"),
        (9.7,  "S4\nRED 前半",  "m×mod[j]\n乗算開始\n(DSP×7)",          "#FFE0FF","#884488"),
        (12.0, "S5\nRED 後半",  "t[j]+積+C2\nキャリー連鎖\n(加算器×7)", "#FFE0FF","#884488"),
        (14.3, "S6\n書き戻し",  "t[j-1]←下位\nt[7..9] 更新\n(FF write)","#D0FFD0","#339933"),
    ]
    sw, sh = 2.0, 3.0
    sy = 4.2
    for sx, slabel, sdetail, fc_s, ec_s in stage_cfg:
        rect(ax, sx, sy, sw, sh, fc=fc_s, ec=ec_s, lw=2)
        txt(ax, sx+sw/2, sy+sh-0.45, slabel, fs=10, fw="bold", va="center")
        txt(ax, sx+sw/2, sy+sh/2-0.2, sdetail, fs=7.5, va="center")

    # パイプラインレジスタ (ステージ間)
    pr_xs = [sx + sw for sx,*_ in stage_cfg[:-1]]
    for px in pr_xs:
        rect(ax, px, sy+0.2, 0.18, sh-0.4,
             fc="#CCCCEE", ec="#555588", lw=1.0, text="", style="square,pad=0.0")
        txt(ax, px+0.09, sy+sh/2, "▓", fs=7, color="#555588")

    # ステージ間矢印
    for k, (sx,*_) in enumerate(stage_cfg[:-1]):
        arr(ax, sx+sw+0.18, sy+sh/2, stage_cfg[k+1][0], sy+sh/2,
            color="#555588", lw=2.0)

    # 入力 → S1
    arr(ax, 2.4, 8.85, 2.8+sw/2, sy+sh, color="#339933", lw=1.5)
    arr(ax, 2.4, 7.75, 2.8+sw/2, sy+sh, color="#AA8800", lw=1.5, rad=0.15)

    # S1 ← t[] (read)
    arr(ax, 2.4, 5.6, 2.8, 5.6, color="#CC8800", lw=2.0)
    txt(ax, 2.6, 5.85, "t[] read\n(全10要素\n並列)", fs=7.5, color="#996600")

    # S6 → t[] (write back, フィードバック)
    # 下を通るフィードバック矢印
    fb_y = 3.8
    ax.annotate("", xy=(2.4, 4.5), xytext=(16.3, 4.5),
                arrowprops=dict(arrowstyle="->", color="#CC3333", lw=2.5,
                                connectionstyle="arc3,rad=0.0"), zorder=6)
    ax.plot([16.3, 16.3, 2.4, 2.4], [sy+sh/2, fb_y, fb_y, 4.5],
            color="#CC3333", lw=2.5, zorder=5)
    txt(ax, 9.3, fb_y-0.22,
        "ループ間フィードバック: t[] write (S6) → t[] read (S1)  ← II=2 の原因",
        fs=9, fw="bold", color="#CC3333",
        bbox=dict(boxstyle="round", fc="#FFF0F0", ec="#CC3333", lw=1.5))

    # Cond Sub
    rect(ax, 5.0, 1.0, 8.0, 2.8,
         fc="#E8FFF0", ec="#009966", lw=2)
    txt(ax, 9.0, 3.5, "Cond Sub  (SUB_LOOP + SEL_LOOP, 完全 UNROLL)", fs=9, fw="bold")
    # 内部
    rect(ax, 5.4, 1.9, 3.0, 1.5,
         text="SUB_LOOP (j=0..7)\nu[j] = t[j]−mod[j]−borrow\n減算器×8 + borrow 連鎖",
         fc="#CCFCE8", ec="#009966", fs=8)
    rect(ax, 9.0, 1.9, 3.0, 1.5,
         text="SEL_LOOP (j=0..7)\nc[j] = MUX(t[j], u[j], keep_t)\nMUX×8 (タイミング定数)",
         fc="#CCFCE8", ec="#009966", fs=8)
    arr(ax, 8.4, 2.65, 9.0, 2.65, color="#009966", lw=1.5)
    # t[] → Cond Sub
    arr(ax, 2.4, 3.0, 5.4, 2.65, color="#CC8800", lw=1.5, rad=-0.1)

    # 出力
    rect(ax, 12.5, 1.0, 3.0, 0.7,
         text="c[7:0]  出力レジスタ  (a×b×R⁻¹ mod N)",
         fc="#EEF8EE", ec="#339933", fs=8.5)
    arr(ax, 12.0, 2.65, 12.5, 1.35, color="#339933", lw=1.5)

    # II=2 / Depth 注記
    rect(ax, 14.5, 8.5, 3.2, 1.2,
         text="パイプライン仕様\nII = 2 サイクル (auto)\nDepth = 6 ステージ\n"
              "CIOS latency: II×7+Depth = 20 clk",
         fc="#F0F8FF", ec="#3366AA", fs=8.5)

    save(fig, "hw_01_rtl_pipeline.png")


# ══════════════════════════════════════════════════════════════
# 図 HW-2: PP Stage DSP ブロック + キャリー連鎖
# ══════════════════════════════════════════════════════════════
def draw_pp_dsp():
    fig, ax = plt.subplots(figsize=(18, 11))
    ax.set_xlim(0, 18); ax.set_ylim(0, 11)
    ax.axis("off"); fig.patch.set_facecolor("white")

    txt(ax, 9, 10.7,
        "PP Stage  ハードウェア構造  (j=0..7 完全展開、WORD_BITS=32)",
        fs=14, fw="bold")
    txt(ax, 9, 10.3,
        "t[j] += a[j] × b[i] + C1   (Wide p = uint64, carry C1 は 32bit)",
        fs=10, color="#333333")

    # b[i] バス (上部水平)
    ax.plot([0.5, 17.5], [9.5, 9.5], color="#339933", lw=3, zorder=3)
    txt(ax, 9, 9.7, "b[i]  ブロードキャストバス  (32bit)", fs=9, fw="bold",
        color="#339933")

    # S1 / S2 ステージ境界
    vline(ax, 9.0, 0.3, 9.2, color="#3366AA", lw=2, ls="-")
    txt(ax, 8.5, 9.2, "← S1 (乗算) →", fs=8, color="#3366AA", ha="right")
    txt(ax, 9.5, 9.2, "← S2 (累積+carry) →", fs=8, color="#3366AA", ha="left")
    rect(ax, 8.85, 0.3, 0.3, 9.0, fc="#CCCCEE", ec="#555588", lw=1.0,
         style="square,pad=0.0")
    txt(ax, 9.0, 4.8, "パイプライン\nレジスタ", fs=7.5, color="#333366",
        fw="bold")

    # j=0..7 各ユニット
    unit_x = [k * 2.1 + 0.3 for k in range(8)]
    dsp_y, reg_y, add_y, out_y = 6.8, 5.5, 3.8, 2.5

    for j, ux in enumerate(unit_x):
        uw = 1.8

        # a[j] 入力
        rect(ax, ux, 9.0, uw, 0.4, text=f"a[{j}]", fc="#FFF0E0", ec="#CC7700", fs=8)
        # b[i] から縦線
        ax.plot([ux+uw/2, ux+uw/2], [9.5, 9.4], color="#339933", lw=1.5)

        # DSP ブロック (乗算: a[j] × b[i])
        rect(ax, ux, dsp_y, uw, 1.1,
             fc="#E8D0FF", ec="#6633AA", lw=2)
        txt(ax, ux+uw/2, dsp_y+0.75, "DSP48E2", fs=8, fw="bold", color="#330088")
        txt(ax, ux+uw/2, dsp_y+0.35, f"a[{j}] × b[i]\n→ 64bit", fs=7.5)
        arr(ax, ux+uw/2, 9.0, ux+uw/2, dsp_y+1.1, color="#CC7700", lw=1.2)

        # パイプラインレジスタ (S1→S2)
        rect(ax, ux+uw/2-0.15, 6.2, 0.3, 0.45, fc="#CCCCEE", ec="#555588",
             lw=1.0, style="square,pad=0.0")
        txt(ax, ux+uw/2, 6.42, "FF", fs=7)
        arr(ax, ux+uw/2, dsp_y, ux+uw/2, 6.65, color="#6633AA", lw=1.2)

        # t[j] レジスタ（左から読出し）
        rect(ax, ux, reg_y, uw, 0.55, text=f"t[{j}]  FF", fc="#FFFFAA", ec="#999900",
             fs=8)
        arr(ax, ux+uw/2, reg_y, ux+uw/2, reg_y+0.55, color="#999900", lw=1.2)

        # 64bit 加算器: DSP出力 + t[j] + C1_in
        rect(ax, ux, add_y, uw, 1.2, fc="#D0F0FF", ec="#005588", lw=1.5)
        txt(ax, ux+uw/2, add_y+0.85, "加算器 (64bit)", fs=7.5, fw="bold",
            color="#003366")
        txt(ax, ux+uw/2, add_y+0.5, f"p = prod\n+ t[{j}] + C1", fs=7.5)
        arr(ax, ux+uw/2, 6.2, ux+uw/2, add_y+1.2, color="#6633AA", lw=1.2)
        arr(ax, ux+uw/2, reg_y, ux+uw/2, add_y+1.2, color="#999900", lw=1.2, rad=0.15)

        # 出力: 下位 32bit → 新 t[j]
        rect(ax, ux, out_y, uw*0.55, 0.5, text=f"新t[{j}]\n[31:0]",
             fc="#FFFFAA", ec="#999900", fs=7.5)
        arr(ax, ux+uw/2, add_y, ux+uw*0.27, out_y+0.5, color="#999900", lw=1.2)

        # 上位 32bit → C1 出力 (右へ)
        if j < 7:
            rect(ax, ux+uw*0.6, out_y, uw*0.4, 0.5, text="C1\n[63:32]",
                 fc="#FFE0E0", ec="#AA2244", fs=7)
            arr(ax, ux+uw*0.8, add_y, ux+uw*0.8, out_y+0.5,
                color="#AA2244", lw=1.2)

    # C1 キャリー連鎖 (水平矢印)
    for j in range(7):
        ux0 = unit_x[j] + 1.8*0.8    # C1 出力右端
        ux1 = unit_x[j+1] + 1.8*0.75 # 次のユニットの加算器
        ax.annotate("", xy=(ux1, add_y+0.6), xytext=(ux0, out_y+0.25),
                    arrowprops=dict(arrowstyle="->", color="#CC0000", lw=2.0,
                                   connectionstyle="arc3,rad=-0.2"), zorder=6)

    txt(ax, 9, 1.5,
        "C1 キャリー連鎖:  j=0 の上位32bit → j=1 加算器 → … → j=7 → t[8], t[9]",
        fs=9, fw="bold", color="#CC0000",
        bbox=dict(boxstyle="round", fc="#FFF0F0", ec="#CC0000", lw=1.5))

    # C1 初期値 (左端)
    txt(ax, -0.05, add_y+0.6, "C1=0 →", fs=8.5, color="#CC0000", ha="right")

    # t[8], t[9] 出力 (右端)
    ux_last = unit_x[7] + 1.8
    rect(ax, ux_last+0.1, out_y, 1.0, 0.5, text="t[8]\n[31:0]",
         fc="#FFEECC", ec="#CC7700", fs=7.5)
    rect(ax, ux_last+0.1, out_y-0.6, 1.0, 0.5, text="t[9]\n[31:0]",
         fc="#FFEECC", ec="#CC7700", fs=7.5)

    # リソース注記
    rect(ax, 0.2, 0.2, 4.5, 1.0,
         text="リソース内訳 (PP Stage)\n"
              "DSP48E2 × 8    (32×32 乗算)\n"
              "64bit 加算器 × 8  (LUT)\n"
              "キャリー連鎖  LUT or CARRY4",
         fc="#F8F8F8", ec="#888888", fs=8.5)

    save(fig, "hw_02_pp_dsp_chain.png")


# ══════════════════════════════════════════════════════════════
# 図 HW-3: m 計算 + RED Stage DSP ブロック
# ══════════════════════════════════════════════════════════════
def draw_red_dsp():
    fig, ax = plt.subplots(figsize=(18, 11))
    ax.set_xlim(0, 18); ax.set_ylim(0, 11)
    ax.axis("off"); fig.patch.set_facecolor("white")

    txt(ax, 9, 10.7,
        "m 計算 + RED Stage  ハードウェア構造  (j=1..7 完全展開、WORD_BITS=32)",
        fs=14, fw="bold")
    txt(ax, 9, 10.3,
        "m = (t[0]×mprime) & MASK    t[j-1] = t[j] + m×mod[j] + C2",
        fs=10, color="#333333")

    # m 計算ブロック (S3)
    rect(ax, 0.3, 7.5, 3.5, 2.5, fc="#FFFCE0", ec="#AA7700", lw=2)
    txt(ax, 2.05, 9.7, "S3:  m 計算", fs=11, fw="bold", color="#885500")
    rect(ax, 0.6, 8.6, 1.2, 0.7, text="t[0]\n(32bit)", fc="#FFFFAA", ec="#999900", fs=8)
    rect(ax, 2.0, 8.6, 1.5, 0.7, text="mprime\n(定数 32bit)", fc="#FFE8D0", ec="#CC7700", fs=8)
    rect(ax, 0.6, 7.6, 2.9, 0.7,
         text="DSP48E2:  t[0] × mprime  →  64bit",
         fc="#E8D0FF", ec="#6633AA", lw=1.5, fs=8)
    arr(ax, 1.2, 8.6, 1.2, 8.3, color="#999900", lw=1.2)
    arr(ax, 2.75, 8.6, 2.75, 8.3, color="#CC7700", lw=1.2)
    txt(ax, 2.05, 7.3, "m = 積[31:0]  (下位32bitのみ取出し)", fs=7.5, color="#333333")

    # m バス
    ax.plot([0.3, 17.5], [7.1, 7.1], color="#AA5500", lw=3, zorder=3)
    txt(ax, 9, 7.35, "m  ブロードキャストバス  (32bit)", fs=9, fw="bold", color="#AA5500")
    arr(ax, 2.05, 7.6, 2.05, 7.1, color="#AA5500", lw=2)

    # S4/S5 ステージ境界
    vline(ax, 11.5, 0.3, 7.0, color="#3366AA", lw=2, ls="-")
    rect(ax, 11.35, 0.3, 0.3, 6.8, fc="#CCCCEE", ec="#555588", lw=1.0,
         style="square,pad=0.0")
    txt(ax, 11.5, 3.7, "パイプライン\nレジスタ", fs=7.5, color="#333366", fw="bold")
    txt(ax, 10.5, 7.0, "← S4 (RED 乗算) →", fs=8, color="#3366AA", ha="center")
    txt(ax, 13.0, 7.0, "← S5 (累積+carry) →", fs=8, color="#3366AA", ha="center")

    # j=1..7 RED ユニット
    unit_x = [k * 2.1 + 3.8 for k in range(7)]   # j=1..7
    dsp_y, reg_y, add_y, out_y = 5.3, 4.1, 2.5, 1.3

    # mod[] バス
    ax.plot([3.8, 17.5], [6.5, 6.5], color="#3355AA", lw=2.5, ls="--", zorder=2)
    txt(ax, 12.0, 6.7, "mod[1..7]  (32bit×7)", fs=8.5, color="#3355AA")

    for k, ux in enumerate(unit_x):
        j = k + 1
        uw = 1.85

        # mod[j]
        rect(ax, ux, 6.15, uw, 0.35, text=f"mod[{j}]", fc="#E0EEFF", ec="#3355AA", fs=7.5)
        ax.plot([ux+uw/2, ux+uw/2], [6.5, 6.5], color="#3355AA", lw=1.5)

        # m から縦線
        ax.plot([ux+uw/2, ux+uw/2], [7.1, 6.5], color="#AA5500", lw=1.5)

        # DSP: m × mod[j]
        rect(ax, ux, dsp_y, uw, 0.95, fc="#E8D0FF", ec="#6633AA", lw=2)
        txt(ax, ux+uw/2, dsp_y+0.65, "DSP48E2", fs=7.5, fw="bold", color="#330088")
        txt(ax, ux+uw/2, dsp_y+0.3, f"m × mod[{j}]\n→ 64bit", fs=7.5)
        arr(ax, ux+uw/2, 6.15, ux+uw/2, dsp_y+0.95, color="#3355AA", lw=1.2)

        # パイプライン FF (S4→S5)
        rect(ax, ux+uw/2-0.15, 4.8, 0.3, 0.38, fc="#CCCCEE", ec="#555588",
             lw=1.0, style="square,pad=0.0")
        txt(ax, ux+uw/2, 4.99, "FF", fs=7)
        arr(ax, ux+uw/2, dsp_y, ux+uw/2, 5.18, color="#6633AA", lw=1.2)

        # t[j] レジスタ
        rect(ax, ux, reg_y, uw, 0.5, text=f"t[{j}]  FF", fc="#FFFFAA", ec="#999900", fs=8)
        arr(ax, ux+uw/2, reg_y, ux+uw/2, reg_y+0.5, color="#999900", lw=1.2)

        # 64bit 加算器
        rect(ax, ux, add_y, uw, 1.25, fc="#D0F0FF", ec="#005588", lw=1.5)
        txt(ax, ux+uw/2, add_y+0.95, "加算器 (64bit)", fs=7.5, fw="bold", color="#003366")
        txt(ax, ux+uw/2, add_y+0.55, f"p = t[{j}]\n+ m·mod[{j}] + C2", fs=7.5)
        arr(ax, ux+uw/2, 4.8, ux+uw/2, add_y+1.25, color="#6633AA", lw=1.2)
        arr(ax, ux+uw/2, reg_y, ux+uw/2, add_y+1.25, color="#999900", lw=1.2, rad=0.15)

        # 下位 32bit → 新 t[j-1]
        rect(ax, ux, out_y, uw*0.6, 0.5, text=f"新t[{j-1}]\n[31:0]",
             fc="#FFFFAA", ec="#999900", fs=7.5)
        arr(ax, ux+uw/2, add_y, ux+uw*0.3, out_y+0.5, color="#999900", lw=1.2)

        # 上位 → C2 出力
        if j < 7:
            rect(ax, ux+uw*0.65, out_y, uw*0.35, 0.5, text="C2\n[63:32]",
                 fc="#FFE0E0", ec="#AA2244", fs=7)
            arr(ax, ux+uw*0.82, add_y, ux+uw*0.82, out_y+0.5,
                color="#AA2244", lw=1.2)

    # C2 キャリー連鎖
    for k in range(6):
        ux0 = unit_x[k] + 1.85*0.82
        ux1 = unit_x[k+1] + 1.85*0.8
        ax.annotate("", xy=(ux1, add_y+0.65), xytext=(ux0, out_y+0.25),
                    arrowprops=dict(arrowstyle="->", color="#CC0000", lw=2.0,
                                   connectionstyle="arc3,rad=-0.2"), zorder=6)

    txt(ax, 9, 0.55,
        "C2 キャリー連鎖:  j=1 の上位32bit → j=2 加算器 → … → j=7 → 新t[6], 新t[7]",
        fs=9, fw="bold", color="#CC0000",
        bbox=dict(boxstyle="round", fc="#FFF0F0", ec="#CC0000", lw=1.5))

    txt(ax, 3.5, 7.0, "C2=0 →", fs=8.5, color="#CC0000", ha="right")

    # p0 (j=0) の C2 初期値計算
    rect(ax, 0.3, 5.5, 3.2, 1.5, fc="#FFFCE0", ec="#AA7700", lw=1.5)
    txt(ax, 1.9, 6.7, "p0 = t[0] + m×mod[0]", fs=8, fw="bold", color="#885500")
    txt(ax, 1.9, 6.3, "C2_init = p0 >> 32", fs=8, color="#885500")
    txt(ax, 1.9, 5.9, "(t[0] の下位は捨てる = RED の shift)", fs=7.5)
    arr(ax, 1.9, 7.1, 1.9, 7.0, color="#AA7700", lw=1.5)
    arr(ax, 3.5, 6.25, 3.8+1.85*0.82, add_y+0.65, color="#CC0000", lw=2.0)

    rect(ax, 0.2, 0.2, 4.0, 1.0,
         text="リソース内訳 (RED Stage)\n"
              "DSP48E2 × 8  (m計算×1 + mod乗算×7)\n"
              "64bit 加算器 × 7  (LUT)\n"
              "キャリー連鎖  LUT or CARRY4",
         fc="#F8F8F8", ec="#888888", fs=8.5)

    save(fig, "hw_03_red_m_compute.png")


# ══════════════════════════════════════════════════════════════
# 図 HW-4: ループ間依存と II=2 の成立根拠
# ══════════════════════════════════════════════════════════════
def draw_loop_dep():
    fig, ax = plt.subplots(figsize=(16, 9))
    ax.set_xlim(0, 16); ax.set_ylim(0, 9)
    ax.axis("off"); fig.patch.set_facecolor("white")

    txt(ax, 8, 8.7, "ループ間データ依存  と  II=2 の成立根拠",
        fs=14, fw="bold")

    # ── 上半分: タイミング図 ──
    stages = ["S1\nPP前半", "S2\nPP後半", "S3\nm計算", "S4\nRED前半", "S5\nRED後半", "S6\n書戻"]
    stage_colors = ["#FFD8FF","#FFD8FF","#FFE8D0","#FFD8FF","#FFD8FF","#D0FFD0"]
    n_stages = 6
    ii = 2
    N  = 4   # 図の都合上 4反復分だけ描画

    base_x, base_y = 2.5, 5.0
    cell_w, cell_h = 1.5, 0.65

    # サイクル目盛
    max_cyc = ii * (N-1) + n_stages + 1
    for c in range(1, max_cyc+1):
        xc = base_x + (c-1)*cell_w
        txt(ax, xc+cell_w/2, base_y+N*cell_h+0.35, str(c), fs=8.5)
        vline(ax, xc, base_y-0.1, base_y+N*cell_h+0.15, color="#DDDDDD", lw=0.7)

    # 反復ラベル
    for i in range(N):
        txt(ax, 2.0, base_y+(N-1-i)*cell_h+cell_h/2,
            f"i = {i}", fs=10, fw="bold", ha="right")

    # 各反復のステージ矩形
    for i in range(N):
        start_cyc = ii * i
        for s in range(n_stages):
            xc = base_x + (start_cyc + s)*cell_w
            yc = base_y + (N-1-i)*cell_h
            r = Rectangle((xc, yc), cell_w, cell_h*0.85,
                           fc=stage_colors[s], ec="#666666", lw=1.0)
            ax.add_patch(r)
            txt(ax, xc+cell_w/2, yc+cell_h*0.42,
                stages[s].split("\n")[0], fs=7.5)

    # t[] write (S6 = ステージ5, 6サイクル目) と read (S1 = ステージ0) の矢印
    dep_color = "#CC0000"
    for i in range(N-1):
        # S6 の中心: start = ii*i, S6 = start+5
        s6_x = base_x + (ii*i + 5)*cell_w + cell_w/2
        s6_y = base_y + (N-1-i)*cell_h + cell_h*0.42
        # 次の反復 S1 の中心: start = ii*(i+1)
        s1_x = base_x + (ii*(i+1))*cell_w + cell_w/2
        s1_y = base_y + (N-1-(i+1))*cell_h + cell_h*0.42

        ax.annotate("",
                    xy=(s1_x, s1_y+cell_h*0.42),
                    xytext=(s6_x, s6_y-cell_h*0.42),
                    arrowprops=dict(arrowstyle="->", color=dep_color, lw=2.5,
                                   connectionstyle="arc3,rad=0.3"), zorder=7)

    # 依存の説明
    txt(ax, 12.5, 7.2,
        "t[] write (S6) ──► t[] read (S1)\n"
        "の間: II=2 サイクルあれば解決",
        fs=9, color="#CC0000", fw="bold",
        bbox=dict(boxstyle="round", fc="#FFF0F0", ec="#CC0000", lw=1.5))

    # II スパン
    ax.annotate("", xy=(base_x+ii*cell_w, base_y+(N-1)*cell_h+cell_h+0.08),
                xytext=(base_x, base_y+(N-1)*cell_h+cell_h+0.08),
                arrowprops=dict(arrowstyle="<->", color="#0000CC", lw=2))
    txt(ax, base_x+ii*cell_w/2, base_y+(N-1)*cell_h+cell_h+0.25,
        "II=2", fs=10, fw="bold", color="#0000CC")

    # ── 下半分: II=1 (不可能) vs II=2 (可能) の説明 ──
    # II=1 の場合
    rect(ax, 0.3, 0.3, 7.0, 4.2,
         fc="#FFF0F0", ec="#CC3333", lw=2)
    txt(ax, 3.8, 4.3, "II=1 の場合  (不可能)", fs=11, fw="bold", color="#CC0000")

    txt(ax, 0.5, 4.0, "サイクル k:    i=m の S6 で t[] を 書き込み", fs=9, ha="left")
    txt(ax, 0.5, 3.6, "サイクル k+1: i=m+1 の S1 で t[] を 読み出す ← 1サイクル後", fs=9, ha="left", color="#CC0000")
    txt(ax, 0.5, 3.1,
        "問題:  S6 の書き込みが FF に確定するのは\n"
        "       サイクル k の終わり (立下りエッジ後)\n"
        "       S1 は サイクル k+1 の始めに値を必要とする\n\n"
        "       → セットアップ違反 / 組合せループ発生\n"
        "       → HLS は II=1 を選択しない",
        fs=8.5, ha="left", va="top", color="#880000")

    # II=2 の場合
    rect(ax, 8.0, 0.3, 7.5, 4.2,
         fc="#F0FFF0", ec="#339933", lw=2)
    txt(ax, 11.75, 4.3, "II=2 の場合  (OK)", fs=11, fw="bold", color="#009900")

    txt(ax, 8.2, 4.0, "サイクル k:    i=m の S6 で t[] を 書き込み", fs=9, ha="left")
    txt(ax, 8.2, 3.6, "サイクル k+1: (パイプライン内に別の処理、t[] はアイドル)", fs=9, ha="left", color="#555555")
    txt(ax, 8.2, 3.2, "サイクル k+2: i=m+1 の S1 で t[] を 読み出す ← 2サイクル後", fs=9, ha="left", color="#009900")
    txt(ax, 8.2, 2.6,
        "余裕:  書き込み FF → 次サイクルで値確定\n"
        "       (FF→FF パス = 1クロック分の余裕)\n\n"
        "       タイミング制約クリア\n"
        "       → HLS auto が II=2 を選択",
        fs=8.5, ha="left", va="top", color="#006600")

    # ループ間依存パス説明
    rect(ax, 0.2, 0.1, 15.6, 0.25,
         text="",
         fc="#FFFFD0", ec="#CCAA00", lw=1, style="square,pad=0.0")
    txt(ax, 8, 0.22,
        "ループ間依存 (RAW): t[] を書くのは CIOS_LOOP i=m の中 → 読むのは i=m+1 の中。"
        "  依存チェーンが II を 2 以上に制約する。",
        fs=8.5, color="#664400")

    save(fig, "hw_04_loop_dep_ii2.png")


# ══════════════════════════════════════════════════════════════
# 図 HW-5: ARRAY_PARTITION の効果 (メモリ → レジスタバンク)
# ══════════════════════════════════════════════════════════════
def draw_array_partition():
    fig, ax = plt.subplots(figsize=(15, 10))
    ax.set_xlim(0, 15); ax.set_ylim(0, 10)
    ax.axis("off"); fig.patch.set_facecolor("white")

    txt(ax, 7.5, 9.7,
        "#pragma HLS ARRAY_PARTITION  variable=t  complete  dim=1",
        fs=13, fw="bold", color="#220066")
    txt(ax, 7.5, 9.35,
        "t[10] の HLS 合成結果の変化  (NWORDS=8)",
        fs=10, color="#333333")

    # ═══ 左: ARRAY_PARTITION なし ═══
    rect(ax, 0.2, 0.5, 6.5, 8.5, fc="#FFF4F4", ec="#CC3333", lw=2)
    txt(ax, 3.45, 8.7, "ARRAY_PARTITION なし  (NG)", fs=12, fw="bold", color="#CC0000")
    txt(ax, 3.45, 8.35, "→ HLS は BRAM or 分散 RAM に合成", fs=9, color="#880000")

    # シングルポート RAM の図
    rect(ax, 1.2, 3.5, 4.5, 4.3, fc="#FFD0D0", ec="#CC3333", lw=2)
    txt(ax, 3.45, 7.55, "シングルポート RAM", fs=10, fw="bold", color="#660000")
    txt(ax, 3.45, 7.2, "(10 × 32bit)", fs=9)
    for k in range(10):
        ry = 6.8 - k*0.28
        rect(ax, 1.4, ry, 4.1, 0.24, text=f"[{k}]  32bit",
             fc="#FFEEEE", ec="#CC3333", lw=0.8, fs=7.5)

    # アドレスバス、データバス (1本)
    ax.plot([3.45, 3.45], [3.5, 3.0], color="#CC3333", lw=2)
    txt(ax, 3.45, 2.8, "アドレス 1本\nデータ 1本\n1サイクルに 1アクセスのみ",
        fs=9, color="#CC0000")

    # 問題点
    txt(ax, 3.45, 1.8,
        "PP_LOOP / RED_LOOP で\nt[0..7] に同時アクセス不可\n→ 内側ループを UNROLL 不可\n→ 内側 PIPELINE のみ",
        fs=9, color="#880000",
        bbox=dict(boxstyle="round", fc="#FFE8E8", ec="#CC3333", lw=1.5))

    # latency 結果
    rect(ax, 0.5, 0.5, 5.8, 0.65,
         text="結果: 内側 PIPELINE → 外側 PIPELINE 不可 → latency ≈ 218 clk",
         fc="#FFCCCC", ec="#CC0000", lw=2, fs=9, fw="bold")

    # ═══ 右: ARRAY_PARTITION あり ═══
    rect(ax, 8.0, 0.5, 6.8, 8.5, fc="#F4FFF4", ec="#339933", lw=2)
    txt(ax, 11.4, 8.7, "ARRAY_PARTITION complete  (OK)", fs=12, fw="bold", color="#009900")
    txt(ax, 11.4, 8.35, "→ HLS は FF (フリップフロップ) に合成", fs=9, color="#006600")

    # 10 個の独立 FF
    ff_xs = [8.3, 9.05, 9.8, 10.55, 11.3, 12.05, 12.8, 13.55, 8.65, 12.15]
    ff_ys = [7.0]*8 + [5.5, 5.5]

    for k in range(10):
        fc_ff = "#FFFFAA" if k < 8 else "#FFE8AA"
        rect(ax, ff_xs[k], ff_ys[k], 0.65, 0.7,
             text=f"FF\nt[{k}]", fc=fc_ff, ec="#999900", lw=1.5, fs=7.5)

    txt(ax, 11.4, 6.6, "10 個の独立レジスタ (FF)", fs=10, fw="bold", color="#669900")
    txt(ax, 11.4, 6.3, "全要素へ同時並列アクセス可能", fs=9, color="#336600")

    # 並列アクセス矢印 (下から)
    for k in range(8):
        ax.plot([ff_xs[k]+0.325, ff_xs[k]+0.325],
                [ff_ys[k]-0.1, ff_ys[k]-0.5],
                color="#339933", lw=1.2)

    ax.plot([8.3+0.325, 13.55+0.325], [6.5, 6.5], color="#339933", lw=2)
    txt(ax, 11.4, 6.35, "↑↑↑↑↑↑↑↑ 全 8 要素 同時アクセス ↑↑↑↑↑↑↑↑",
        fs=8.5, color="#009900")

    # 並列演算ブロック
    rect(ax, 8.2, 3.0, 6.4, 2.8, fc="#D0FFD0", ec="#339933", lw=2)
    txt(ax, 11.4, 5.6, "PP_LOOP  /  RED_LOOP  完全 UNROLL", fs=9, fw="bold", color="#006600")
    txt(ax, 11.4, 5.25,
        "j=0: t[0] + a[0]×b[i] → 新t[0]\n"
        "j=1: t[1] + a[1]×b[i] → 新t[1]\n"
        "j=2: t[2] + a[2]×b[i] → 新t[2]\n"
        "         ⋮\n"
        "j=7: t[7] + a[7]×b[i] → 新t[7]\n"
        "※ 全 8 演算が 1 パイプラインステージ内",
        fs=8.5, ha="center", va="top")

    # latency 結果
    rect(ax, 8.2, 0.5, 6.4, 0.65,
         text="結果: 内側 UNROLL → 外側 PIPELINE II=2 → latency 31 clk",
         fc="#CCFFCC", ec="#009900", lw=2, fs=9, fw="bold")

    # 中央の vs
    txt(ax, 7.5, 5.0, "vs", fs=18, fw="bold", color="#555555")
    arr(ax, 6.8, 5.0, 8.0, 5.0, color="#555555", lw=2, style="->")

    save(fig, "hw_05_array_partition.png")


# ══════════════════════════════════════════════════════════════
# main
# ══════════════════════════════════════════════════════════════
if __name__ == "__main__":
    import os
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    print("ハードウェアアーキテクチャ図を生成中...")
    draw_rtl_pipeline()
    draw_pp_dsp()
    draw_red_dsp()
    draw_loop_dep()
    draw_array_partition()
    print("完了。")
