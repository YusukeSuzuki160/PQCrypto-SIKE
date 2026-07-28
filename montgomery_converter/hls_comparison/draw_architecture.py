"""
draw_architecture.py
変換後モンゴメリ乗算器のアーキテクチャ図を PNG として生成する。

生成される図:
  arch_01_toplevel.png   : 最上位ブロック図
  arch_02_cios_stage.png : CIOS ステージ データパス
  arch_03_pipeline.png   : パイプライン タイミング図
  arch_04_comparison.png : 変換前 vs 変換後 比較
  arch_05_unroll.png     : INNER_UNROLL によるアーキテクチャ変化
"""

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch
import numpy as np

# --------------------------------------------------------------------------
# 日本語フォント設定
# --------------------------------------------------------------------------
import matplotlib.font_manager as _fm

def _find_cjk_font():
    candidates = ["Noto Sans CJK JP", "Noto Sans CJK SC", "IPAexGothic",
                  "VL Gothic", "TakaoGothic", "Mplus 1p"]
    available = {f.name for f in _fm.fontManager.ttflist}
    for c in candidates:
        if c in available:
            return c
    return "DejaVu Sans"

_JP_FONT = _find_cjk_font()
import matplotlib as _mpl
_mpl.rcParams["font.family"] = _JP_FONT

def jfont(size=10, bold=False):
    return {"fontname": _JP_FONT, "fontsize": size,
            "fontweight": "bold" if bold else "normal"}

def box(ax, x, y, w, h, text, fc="#DDEEFF", ec="#3366AA", lw=1.5,
        fontsize=10, bold=False, style="round,pad=0.1", valign="center"):
    bp = FancyBboxPatch((x, y), w, h,
                        boxstyle=style,
                        facecolor=fc, edgecolor=ec, linewidth=lw, zorder=2)
    ax.add_patch(bp)
    ax.text(x + w/2, y + h/2, text,
            ha="center", va=valign, fontsize=fontsize,
            fontweight="bold" if bold else "normal",
            wrap=True, zorder=3,
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

def arrow(ax, x0, y0, x1, y1, color="#333333", lw=1.5, style="->"):
    ax.annotate("", xy=(x1, y1), xytext=(x0, y0),
                arrowprops=dict(arrowstyle=style, color=color,
                                lw=lw, connectionstyle="arc3,rad=0.0"),
                zorder=4)

def label(ax, x, y, text, fontsize=9, color="#222222", ha="center", va="center", bold=False):
    ax.text(x, y, text, ha=ha, va=va, fontsize=fontsize,
            color=color, fontweight="bold" if bold else "normal",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()},
            zorder=5)

def save(fig, name, dpi=150):
    fig.savefig(name, dpi=dpi, bbox_inches="tight", facecolor="white")
    plt.close(fig)
    print(f"  保存: {name}")


# ==========================================================================
# 図1: 最上位ブロック図
# ==========================================================================
def draw_toplevel():
    fig, ax = plt.subplots(figsize=(12, 14))
    ax.set_xlim(0, 12)
    ax.set_ylim(0, 14)
    ax.axis("off")
    ax.set_facecolor("white")
    fig.patch.set_facecolor("white")

    # タイトル
    ax.text(6, 13.6, "変換後モンゴメリ乗算器 最上位ブロック図",
            ha="center", va="center", fontsize=14, fontweight="bold",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
    ax.text(6, 13.2, "CIOS アルゴリズム / WORD_BITS=32, NWORDS=8 (256-bit法)",
            ha="center", va="center", fontsize=10, color="#555555",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # ---- 入力ポート ----
    inp_y = 12.5
    ports = [
        (1.5,  "a[7:0]\n(32bit×8)"),
        (3.5,  "b[7:0]\n(32bit×8)"),
        (5.5,  "mod[7:0]\n(32bit×8)"),
        (8.0,  "mprime\n(32bit)"),
    ]
    for px, pt in ports:
        box(ax, px-0.8, inp_y-0.3, 1.6, 0.6, pt,
            fc="#EEF8EE", ec="#339933", fontsize=8)
        arrow(ax, px, inp_y-0.3, px, inp_y-0.7)

    # ---- 外枠 ----
    outer = FancyBboxPatch((0.3, 0.5), 11.4, 12.0,
                           boxstyle="round,pad=0.1",
                           facecolor="#F8F8FF", edgecolor="#6666AA",
                           linewidth=2, zorder=1)
    ax.add_patch(outer)
    ax.text(6, 11.7, "mont_mul_top_param  (MontOps_Param::mul)",
            ha="center", va="center", fontsize=10, color="#333399", fontweight="bold",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # ---- t[] レジスタ配列 ----
    box(ax, 0.8, 10.5, 10.4, 0.9,
        "t[9:0]  完全分割レジスタ配列  (#pragma HLS ARRAY_PARTITION complete)\n"
        "t[0]  t[1]  t[2]  t[3]  t[4]  t[5]  t[6]  t[7]  t[8]  t[9]   各 32bit",
        fc="#FFF8E0", ec="#CC8800", lw=2, fontsize=9)

    # ---- ① Init ----
    box(ax, 1.5, 9.0, 9.0, 0.9,
        "① Init Loop  (#pragma HLS UNROLL)\n"
        "t[k] ← 0  (k = 0..9)                                    ~ 1 サイクル",
        fc="#E8FFE8", ec="#339933", lw=1.5, fontsize=9)
    arrow(ax, 6, 10.5, 6, 9.9)

    # ---- ② CIOS_LOOP 外枠 ----
    cios_box = FancyBboxPatch((0.8, 4.5), 10.4, 4.3,
                              boxstyle="round,pad=0.1",
                              facecolor="#EEF4FF", edgecolor="#3366AA",
                              linewidth=2, zorder=2)
    ax.add_patch(cios_box)
    ax.text(6, 8.6, "② CIOS_LOOP   i = 0, 1, ..., 7",
            ha="center", va="center", fontsize=10, fontweight="bold", color="#1144AA",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
    ax.text(6, 8.25,
            "#pragma HLS PIPELINE  (HLS auto → II = 2, Depth = 6)    ~ 21 サイクル",
            ha="center", va="center", fontsize=8.5, color="#333366",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
    arrow(ax, 6, 9.0, 6, 8.8)

    # PP Stage
    box(ax, 1.2, 7.1, 9.6, 0.9,
        "PP Stage  (#pragma HLS UNROLL  ← j=0..7 完全展開)\n"
        "t[j] += a[j] × b[i] + C1    C1: キャリー連鎖   t[8],t[9] にオーバーフロー格納",
        fc="#FFE8FF", ec="#884488", fontsize=8.5)

    # m 計算
    box(ax, 1.2, 6.0, 9.6, 0.85,
        "m 計算\n"
        "m = ( t[0] × mprime ) & WMASK         (mprime = −N⁻¹ mod 2³², 定数)",
        fc="#FFE8D0", ec="#AA5500", fontsize=8.5)

    # RED Stage
    box(ax, 1.2, 4.8, 9.6, 0.95,
        "RED Stage  (#pragma HLS UNROLL  ← j=1..7 完全展開)\n"
        "t[j−1] = t[j] + m × mod[j] + C2    C2: キャリー連鎖   t[7],t[8] 更新",
        fc="#FFE8FF", ec="#884488", fontsize=8.5)

    # 内部矢印
    arrow(ax, 6, 8.05, 6, 8.0)
    arrow(ax, 6, 7.1,  6, 6.85)
    arrow(ax, 6, 6.0,  6, 5.75)

    # ループバック矢印
    ax.annotate("", xy=(10.9, 8.6), xytext=(10.9, 4.8),
                arrowprops=dict(arrowstyle="->", color="#3366AA", lw=1.5,
                                connectionstyle="arc3,rad=0.0"), zorder=4)
    ax.text(11.2, 6.7, "i++\n(II=2\nサイクル)", ha="center", va="center",
            fontsize=8, color="#3366AA",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # ---- ③ Cond Sub ----
    box(ax, 1.5, 2.5, 9.0, 1.7,
        "③ Cond Sub  (#pragma HLS UNROLL)                           ~ 9 サイクル\n\n"
        "SUB_LOOP (j=0..7):   u[j] = t[j] − mod[j] − borrow\n"
        "keep_t = (t[8]==0 AND borrow==1) ? 0xFFFFFFFF : 0\n"
        "SEL_LOOP (j=0..7):   c[j] = (t[j] & keep_t) | (u[j] & ~keep_t)",
        fc="#E8FFF8", ec="#009966", lw=1.5, fontsize=9)
    arrow(ax, 6, 4.5, 6, 4.2)
    arrow(ax, 6, 2.5, 6, 2.1)

    # ---- 出力ポート ----
    box(ax, 4.0, 0.8, 4.0, 0.7,
        "c[7:0]  (32bit×8)\n= a × b × R⁻¹  mod  N,   R = 2²⁵⁶",
        fc="#EEF8EE", ec="#339933", fontsize=9)

    # DSP リソース注記
    ax.text(0.5, 1.8, "DSP×39\nLUT×3436\n31 clk\n7.224 ns",
            ha="left", va="center", fontsize=8, color="#666666",
            bbox=dict(boxstyle="round", fc="#F0F0F0", ec="#AAAAAA"),
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    save(fig, "arch_01_toplevel.png", dpi=160)


# ==========================================================================
# 図2: CIOS ステージ データパス（NWORDS=8）
# ==========================================================================
def draw_cios_stage():
    fig, ax = plt.subplots(figsize=(14, 10))
    ax.set_xlim(0, 14)
    ax.set_ylim(0, 10)
    ax.axis("off")
    fig.patch.set_facecolor("white")

    ax.text(7, 9.7, "CIOS ステージ データパス（1反復 i の内部、NWORDS=8）",
            ha="center", va="center", fontsize=13, fontweight="bold",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # ---- b[i] ブロードキャスト ----
    box(ax, 6.0, 9.0, 2.0, 0.5, "b[i]  (32bit)", fc="#EEFFEE", ec="#339933", fontsize=9)

    # ==== PP Stage ====
    box(ax, 0.2, 6.5, 13.6, 2.2,
        "", fc="#FFF0FF", ec="#884488", lw=2)
    ax.text(7, 8.5, "PP Stage  (j=0..7 完全展開 → 組合せ論理)",
            ha="center", va="center", fontsize=10, fontweight="bold", color="#663388",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # 乗算器ブロック (×8)
    mul_xs = [0.5, 2.2, 3.9, 5.6, 7.3, 9.0, 10.7, 12.4]
    for k, mx in enumerate(mul_xs):
        # t[j] 入力
        box(ax, mx, 7.8, 1.0, 0.35, f"t[{k}]", fc="#FFFFF0", ec="#999900", fontsize=7.5)
        # a[j] 入力
        box(ax, mx, 7.1, 1.0, 0.35, f"a[{k}]", fc="#FFF0E0", ec="#CC7700", fontsize=7.5)
        # 乗算器
        box(ax, mx, 6.55, 1.0, 0.35, "×", fc="#FFD0FF", ec="#884488", fontsize=11)
        # 加算器（t[j] + 積 + C1）
        box(ax, mx, 6.95, 1.0, 0, "", fc="none", ec="none")  # spacer

    # b[i] から各乗算器へ
    for mx in mul_xs:
        ax.annotate("", xy=(mx+0.5, 7.45), xytext=(7.0, 9.0),
                    arrowprops=dict(arrowstyle="-", color="#339933", lw=0.8,
                                   connectionstyle="arc3,rad=0.0"), zorder=3)

    # キャリー連鎖 C1
    for k in range(7):
        mx0 = mul_xs[k] + 1.0
        mx1 = mul_xs[k+1]
        ax.annotate("", xy=(mx1, 6.73), xytext=(mx0, 6.73),
                    arrowprops=dict(arrowstyle="->", color="#AA2244", lw=1.2), zorder=4)
    ax.text(0.3, 6.73, "C1=0 →", ha="left", va="center", fontsize=7.5, color="#AA2244",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
    ax.text(13.5, 6.73, "→ t[8]\n  t[9]", ha="left", va="center", fontsize=7.5, color="#AA2244",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    ax.text(7, 6.3, "キャリー連鎖 C1:  j=0→1→2→…→7 →  t[8], t[9]",
            ha="center", va="center", fontsize=8.5, color="#AA2244",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # ==== m 計算 ====
    box(ax, 2.5, 5.4, 9.0, 0.7,
        "m 計算:  m = ( t[0] × mprime ) & WMASK          (DSP×1、mprime は定数)",
        fc="#FFE8D0", ec="#AA5500", lw=1.8, fontsize=9)
    arrow(ax, 7, 6.5, 7, 6.1)
    arrow(ax, 7, 5.4, 7, 5.0)

    # ==== RED Stage ====
    box(ax, 0.2, 2.8, 13.6, 2.0,
        "", fc="#FFF0FF", ec="#884488", lw=2)
    ax.text(7, 4.6, "RED Stage  (j=1..7 完全展開 → 組合せ論理)",
            ha="center", va="center", fontsize=10, fontweight="bold", color="#663388",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # mod[] × m 乗算器 (7個, j=1..7)
    red_xs = mul_xs[1:]   # j=1..7
    for k, rx in enumerate(red_xs):
        j = k + 1
        box(ax, rx, 4.15, 1.0, 0.35, f"mod[{j}]", fc="#E8F0FF", ec="#3355AA", fontsize=7)
        box(ax, rx, 3.65, 1.0, 0.35, "×", fc="#FFD0FF", ec="#884488", fontsize=11)

    # m ブロードキャスト
    for rx in red_xs:
        ax.annotate("", xy=(rx+0.5, 3.65), xytext=(7.0, 5.1),
                    arrowprops=dict(arrowstyle="-", color="#AA5500", lw=0.8), zorder=3)

    # C2 キャリー連鎖
    for k in range(len(red_xs)-1):
        rx0 = red_xs[k] + 1.0
        rx1 = red_xs[k+1]
        ax.annotate("", xy=(rx1, 3.4), xytext=(rx0, 3.4),
                    arrowprops=dict(arrowstyle="->", color="#AA2244", lw=1.2), zorder=4)
    ax.text(2.0, 3.4, "C2=0 →", ha="right", va="center", fontsize=7.5, color="#AA2244",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
    ax.text(13.5, 3.4, "→ t[7]\n  t[8]", ha="left", va="center", fontsize=7.5, color="#AA2244",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    ax.text(7, 3.0, "キャリー連鎖 C2:  j=1→2→…→7 →  t[7], t[8]  ( t[j−1] に書き戻し )",
            ha="center", va="center", fontsize=8.5, color="#AA2244",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # ---- 出力 (更新済み t[]) ----
    box(ax, 1.5, 1.9, 11.0, 0.6,
        "更新済み  t[0..7]  →  次の CIOS 反復 (i+1) へ、または Cond Sub へ",
        fc="#E8FFE8", ec="#339933", fontsize=9)
    arrow(ax, 7, 2.8, 7, 2.5)

    # DSP カウント注記
    ax.text(0.3, 2.3, "PP: DSP×8\nRED: DSP×7\n合計 DSP×15/反復\n(パイプライン共有で\n実質 DSP×39)",
            ha="left", va="center", fontsize=7.5, color="#555555",
            bbox=dict(boxstyle="round", fc="#F8F8F8", ec="#AAAAAA"),
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    save(fig, "arch_02_cios_stage.png", dpi=160)


# ==========================================================================
# 図3: パイプライン タイミング図 (II=2, Depth=6)
# ==========================================================================
def draw_pipeline():
    fig, ax = plt.subplots(figsize=(14, 7))
    ax.set_xlim(-1, 24)
    ax.set_ylim(-1, 9)
    ax.axis("off")
    fig.patch.set_facecolor("white")

    ax.text(11, 8.6,
            "CIOS_LOOP パイプライン タイミング図  (II = 2, Depth = 6, NWORDS = 8)",
            ha="center", va="center", fontsize=13, fontweight="bold",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    depth = 6
    ii    = 2
    N     = 8

    stage_colors = ["#FFD0D0", "#FFE8D0", "#FFFFD0", "#D0FFD0", "#D0FFFF", "#D0D8FF"]
    stage_labels = ["S1\nPP前半", "S2\nPP後半", "S3\nm計算", "S4\nRED前半", "S5\nRED後半", "S6\n書戻"]

    # サイクル目盛
    max_cyc = ii * (N-1) + depth + 2
    for c in range(1, max_cyc + 1):
        ax.text(c - 0.5, 7.5, str(c), ha="center", va="center", fontsize=8,
                **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
    ax.axhline(7.2, color="#AAAAAA", lw=0.8, xmin=0, xmax=1)

    # i ラベル
    for i in range(N):
        ax.text(-0.5, 6.5 - i * 0.75, f"i = {i}", ha="right", va="center",
                fontsize=9, fontweight="bold",
                **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # パイプライン矩形
    for i in range(N):
        start = ii * i  # 0-indexed cycle
        for s in range(depth):
            cyc = start + s
            rect = plt.Rectangle((cyc, 6.2 - i*0.75), 1, 0.55,
                                  facecolor=stage_colors[s],
                                  edgecolor="#666666", linewidth=0.8, zorder=2)
            ax.add_patch(rect)
            ax.text(cyc + 0.5, 6.2 - i*0.75 + 0.27,
                    stage_labels[s].split("\n")[0],
                    ha="center", va="center", fontsize=6.5,
                    **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # II スパン矢印 (i=0とi=1の間)
    ax.annotate("", xy=(ii, 7.0), xytext=(0, 7.0),
                arrowprops=dict(arrowstyle="<->", color="#CC0000", lw=1.5), zorder=5)
    ax.text(ii/2, 7.05, "II = 2", ha="center", va="bottom", fontsize=9,
            color="#CC0000", fontweight="bold",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # Depth スパン矢印 (i=0)
    ax.annotate("", xy=(depth, 5.7), xytext=(0, 5.7),
                arrowprops=dict(arrowstyle="<->", color="#004499", lw=1.5), zorder=5)
    ax.text(depth/2, 5.6, "Depth = 6", ha="center", va="top", fontsize=9,
            color="#004499", fontweight="bold",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # 全レイテンシ スパン
    total = ii*(N-1) + depth
    ax.annotate("", xy=(total, -0.3), xytext=(0, -0.3),
                arrowprops=dict(arrowstyle="<->", color="#006600", lw=2.0), zorder=5)
    ax.text(total/2, -0.5,
            f"CIOS 全体 = II×(N−1)+Depth = {ii}×{N-1}+{depth} = {total} clk",
            ha="center", va="top", fontsize=10, color="#006600", fontweight="bold",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # ステージ凡例
    for s in range(depth):
        rect = plt.Rectangle((s*2.1 + 0.5, 0.3), 1.5, 0.4,
                              facecolor=stage_colors[s],
                              edgecolor="#666666", linewidth=0.8)
        ax.add_patch(rect)
        ax.text(s*2.1 + 1.25, 0.5, stage_labels[s].replace("\n", " "),
                ha="center", va="center", fontsize=7.5,
                **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # 合計レイテンシ内訳
    ax.text(13.5, 2.5,
            "合計レイテンシ内訳:\n"
            "  Init:      ~ 1 clk\n"
            "  CIOS_LOOP: ~ 21 clk  (パイプライン)\n"
            "  Cond Sub:  ~ 9 clk   (完全 UNROLL)\n"
            "  ──────────────────────\n"
            "  合計        31 clk",
            ha="left", va="center", fontsize=9.5,
            bbox=dict(boxstyle="round", fc="#FFFFD8", ec="#CCAA00", lw=1.5),
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    save(fig, "arch_03_pipeline.png", dpi=160)


# ==========================================================================
# 図4: 変換前 vs 変換後 構造比較
# ==========================================================================
def draw_comparison():
    fig, ax = plt.subplots(figsize=(14, 9))
    ax.set_xlim(0, 14)
    ax.set_ylim(0, 9)
    ax.axis("off")
    fig.patch.set_facecolor("white")

    ax.text(7, 8.7, "変換前 vs 変換後 アーキテクチャ比較 (256-bit / NWORDS=8)",
            ha="center", va="center", fontsize=13, fontweight="bold",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # ---------- 変換前 (左) ----------
    box(ax, 0.3, 0.5, 6.2, 7.8, "", fc="#FFF8F8", ec="#CC3333", lw=2)
    ax.text(3.4, 8.05, "変換前  (mont_hls_orig)", ha="center", va="center",
            fontsize=11, fontweight="bold", color="#CC0000",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # 変換前 構造
    box(ax, 0.6, 6.9, 5.6, 0.6,
        "for i=0..7  (外側ループ, パイプラインなし)",
        fc="#FFE8E8", ec="#CC3333", fontsize=8.5)
    box(ax, 0.9, 5.8, 5.0, 0.85,
        "PP_LOOP j=0..7\n#pragma HLS PIPELINE II=1\n→ 乗算器 1個を 8 サイクルで時分割",
        fc="#FFD0D0", ec="#CC3333", fontsize=8)
    box(ax, 0.9, 4.7, 5.0, 0.85,
        "m 計算  (1 サイクル)",
        fc="#FFE8D0", ec="#AA5500", fontsize=8)
    box(ax, 0.9, 3.6, 5.0, 0.85,
        "RED_LOOP j=1..7\n#pragma HLS PIPELINE II=1\n→ 乗算器 1個を 7 サイクルで時分割",
        fc="#FFD0D0", ec="#CC3333", fontsize=8)
    box(ax, 0.6, 2.6, 5.6, 0.7,
        "↑  1 外側反復 = 約 9 サイクル\n   8 反復 × 9 = 72 サイクル (CIOS)",
        fc="#FFE8E8", ec="#CC3333", fontsize=8)

    # 乗算器図 (1個)
    ax.add_patch(plt.Circle((3.4, 1.8), 0.5, color="#FF9999", zorder=3))
    ax.text(3.4, 1.8, "×\nDSP\n×1", ha="center", va="center", fontsize=8,
            fontweight="bold", color="#660000",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
    ax.text(3.4, 1.0, "乗算器 1個を時分割再利用\n(実行時 nwords 変数のため展開不可)",
            ha="center", va="center", fontsize=8, color="#CC0000",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # 変換前 結果
    box(ax, 0.5, 0.6, 5.9, 0.5,
        "70 clk  /  7.224 ns  /  DSP×39  /  LUT×3299",
        fc="#FFCCCC", ec="#CC0000", lw=2, fontsize=9, bold=True)

    # ---------- 変換後 (右) ----------
    box(ax, 7.5, 0.5, 6.2, 7.8, "", fc="#F8FFF8", ec="#339933", lw=2)
    ax.text(10.6, 8.05, "変換後  (MontOps_Param)", ha="center", va="center",
            fontsize=11, fontweight="bold", color="#006600",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # 変換後 構造
    box(ax, 7.8, 6.9, 5.6, 0.6,
        "for i=0..7  (#pragma HLS PIPELINE  II=2, auto)",
        fc="#D0FFD0", ec="#339933", fontsize=8.5)
    box(ax, 8.1, 5.8, 5.0, 0.85,
        "PP_LOOP j=0..7\n#pragma HLS UNROLL (完全展開)\n→ 乗算器 8個 並列組合せ論理",
        fc="#C0FFC0", ec="#339933", fontsize=8)
    box(ax, 8.1, 4.7, 5.0, 0.85,
        "m 計算  (1 サイクル)",
        fc="#FFE8D0", ec="#AA5500", fontsize=8)
    box(ax, 8.1, 3.6, 5.0, 0.85,
        "RED_LOOP j=1..7\n#pragma HLS UNROLL (完全展開)\n→ 乗算器 7個 並列組合せ論理",
        fc="#C0FFC0", ec="#339933", fontsize=8)
    box(ax, 7.8, 2.6, 5.6, 0.7,
        "↑  外側 1 反復 = II = 2 サイクル\n   パイプライン: 2×7+6 = 20 サイクル (CIOS)",
        fc="#D0FFD0", ec="#339933", fontsize=8)

    # 乗算器図 (16個並列)
    for k in range(8):
        cx = 7.9 + k * 0.68
        ax.add_patch(plt.Circle((cx, 1.8), 0.28, color="#99FF99", zorder=3, ec="#339933"))
        ax.text(cx, 1.8, "×", ha="center", va="center", fontsize=7,
                fontweight="bold", color="#006600",
                **{k2: v for k2, v in {"fontname": jfont()["fontname"]}.items()})
    ax.text(10.6, 2.2, "PP: 8個", ha="center", va="center", fontsize=7.5, color="#339933",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
    for k in range(7):
        cx = 8.2 + k * 0.68
        ax.add_patch(plt.Circle((cx, 1.3), 0.28, color="#99FF99", zorder=3, ec="#339933"))
        ax.text(cx, 1.3, "×", ha="center", va="center", fontsize=7,
                fontweight="bold", color="#006600",
                **{k2: v for k2, v in {"fontname": jfont()["fontname"]}.items()})
    ax.text(10.6, 0.95, "RED: 7個\n計 15個 / ステージ → コンパイル時NWORDS定数で展開可能",
            ha="center", va="center", fontsize=7.5, color="#006600",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # 変換後 結果
    box(ax, 7.7, 0.6, 5.9, 0.5,
        "31 clk  /  7.224 ns  /  DSP×39  /  LUT×3436",
        fc="#CCFFCC", ec="#009900", lw=2, fontsize=9, bold=True)

    # 中央 比較矢印
    ax.annotate("", xy=(7.3, 4.5), xytext=(6.6, 4.5),
                arrowprops=dict(arrowstyle="->", color="#555555", lw=2.5), zorder=5)
    ax.text(6.95, 5.0, "2.26×\n高速", ha="center", va="center",
            fontsize=10, fontweight="bold", color="#FF6600",
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    # 鍵となる違い
    ax.text(7, 0.25,
            "変換の核心:  runtime nwords 変数 → コンパイル時定数 NWORDS\n"
            "これにより HLS が内側ループを完全展開できる → 外側ループがパイプライン化可能になる",
            ha="center", va="center", fontsize=9, color="#333333",
            bbox=dict(boxstyle="round", fc="#FFFFF0", ec="#CCAA00", lw=1.5),
            **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    save(fig, "arch_04_comparison.png", dpi=160)


# ==========================================================================
# 図5: INNER_UNROLL パラメータ別アーキテクチャ (NWORDS=8)
# ==========================================================================
def draw_unroll_variants():
    fig, axes = plt.subplots(1, 3, figsize=(15, 8))
    fig.patch.set_facecolor("white")
    fig.suptitle("INNER_UNROLL パラメータ別 ハードウェア構造 (NWORDS=8, 256-bit)",
                 fontsize=13, fontweight="bold",
                 **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

    configs = [
        # (title, color, dsp, lut, lat, cios_ii, description_lines)
        ("INNER_UNROLL = 0\n(折りたたみ)", "#FFD0D0",
         "DSP: 15個", "LUT: 2103", "218 clk", "CIOS II=1",
         ["外側ループ: パイプラインなし",
          "(ステートマシン)",
          "",
          "内側ループ:",
          "  PIPELINE II=1",
          "  → j=0,1,...,7 を",
          "    逐次処理",
          "",
          "乗算器 1個を",
          "時分割再利用",
          "",
          "⚠ DSP最少だが",
          "  latency 大幅増"]),
        ("INNER_UNROLL = 2\n(部分展開, QUARTER)",  "#FFFFD0",
         "DSP: 39個", "LUT: 3436", "31 clk", "CIOS II=2",
         ["外側ループ:",
          "  PIPELINE (auto II=2)",
          "",
          "内側ループ:",
          "  UNROLL factor=2",
          "  → j を 2 つずつ展開",
          "",
          "乗算器は実質 8+7 個",
          "(carry chain の解決で",
          " FULL と同等になる)",
          "",
          "✓ FULL と同一結果",
          "  最小有効展開数"]),
        ("INNER_UNROLL = 8 = N\n(完全展開, FULL)", "#D0FFD0",
         "DSP: 39個", "LUT: 3436", "31 clk", "CIOS II=2",
         ["外側ループ:",
          "  PIPELINE (auto II=2)",
          "",
          "内側ループ:",
          "  完全 UNROLL",
          "  → 組合せ論理に展開",
          "",
          "PP:  乗算器 8個 並列",
          "RED: 乗算器 7個 並列",
          "計 15個/ステージ",
          "",
          "✓ 最小 latency",
          "  (デフォルト推奨)"]),
    ]

    for ax, (title, color, dsp, lut, lat, cios_ii, lines) in zip(axes, configs):
        ax.set_xlim(0, 4)
        ax.set_ylim(0, 10)
        ax.axis("off")
        ax.set_facecolor("white")

        # タイトル
        box(ax, 0.1, 8.9, 3.8, 0.9, title,
            fc=color, ec="#555555", lw=2, fontsize=10, bold=True)

        # 説明テキスト
        for k, line in enumerate(lines):
            ax.text(0.2, 8.5 - k*0.48, line,
                    ha="left", va="center", fontsize=8.5,
                    **{k2: v for k2, v in {"fontname": jfont()["fontname"]}.items()})

        # 乗算器の絵
        ax_title = title.split("\n")[0]
        if "= 0" in ax_title:
            # 1個
            ax.add_patch(plt.Circle((2.0, 1.7), 0.45,
                                    color="#FF9999", ec="#CC3333", lw=2, zorder=3))
            ax.text(2.0, 1.7, "×\nDSP", ha="center", va="center",
                    fontsize=9, fontweight="bold", color="#660000",
                    **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
            ax.text(2.0, 0.95, "× 1個 (時分割)", ha="center", va="center",
                    fontsize=8.5, color="#CC0000",
                    **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
        else:
            # PP: 8個
            for k in range(8):
                cx = 0.2 + k * 0.45
                ax.add_patch(plt.Circle((cx, 2.2), 0.19,
                                        color="#99FF99", ec="#339933", zorder=3))
                ax.text(cx, 2.2, "×", ha="center", va="center", fontsize=7,
                        **{k2: v for k2, v in {"fontname": jfont()["fontname"]}.items()})
            ax.text(1.9, 2.5, "PP×8", ha="center", va="center", fontsize=7.5,
                    color="#339933",
                    **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})
            # RED: 7個
            for k in range(7):
                cx = 0.4 + k * 0.45
                ax.add_patch(plt.Circle((cx, 1.6), 0.19,
                                        color="#99FF99", ec="#339933", zorder=3))
                ax.text(cx, 1.6, "×", ha="center", va="center", fontsize=7,
                        **{k2: v for k2, v in {"fontname": jfont()["fontname"]}.items()})
            ax.text(1.9, 1.3, "RED×7", ha="center", va="center", fontsize=7.5,
                    color="#339933",
                    **{k: v for k, v in {"fontname": jfont()["fontname"]}.items()})

        # 結果ボックス
        box(ax, 0.1, 0.05, 3.8, 0.82,
            f"{dsp}   {lut}\nlatency: {lat}   {cios_ii}",
            fc=color, ec="#555555", lw=1.5, fontsize=9, bold=True)

    plt.tight_layout(rect=[0, 0, 1, 0.95])
    save(fig, "arch_05_unroll.png", dpi=160)


# ==========================================================================
# main
# ==========================================================================
if __name__ == "__main__":
    import os
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    print("アーキテクチャ図を生成中...")
    draw_toplevel()
    draw_cios_stage()
    draw_pipeline()
    draw_comparison()
    draw_unroll_variants()
    print("完了。")
