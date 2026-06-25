#!/usr/bin/env python3
"""Parse Vitis HLS csynth.rpt for latency and utilization summary."""
import re
import sys
from pathlib import Path


def parse_report(path: Path) -> dict:
    text = path.read_text(errors="replace")
    out = {"file": path.name, "ok": True}

    m = re.search(
        r"\|\s*(\d+)\|\s*(\?|\d+)\|\s*([\d.]+\s*us|\?)\|\s*(\?|[\d.]+\s*us)\|\s*(\?|\d+)\|\s*(\?|\d+)\|",
        text,
    )
    if m:
        out["lat_min"] = int(m.group(1))
        out["lat_max"] = int(m.group(2)) if m.group(2) != "?" else ""
        out["lat_us_min"] = m.group(3).strip() if m.group(3) != "?" else ""
        out["lat_us_max"] = m.group(4).strip() if m.group(4) != "?" else ""
        if m.group(5) != "?":
            out["ii_min"] = int(m.group(5))
        if m.group(6) != "?":
            out["ii_max"] = int(m.group(6))

    tm = re.search(r"\|\s*ap_clk\s*\|\s*([\d.]+)\s*ns\|\s*([\d.]+)\s*ns\|", text)
    if tm:
        out["clk_target_ns"] = tm.group(1)
        out["clk_est_ns"] = tm.group(2)

    um = re.search(
        r"\|Total\s*\|\s*(\d+)\|\s*(\d+)\|\s*([\d,~]+)\|\s*([\d,~]+)\|",
        text,
    )
    if um:
        out["bram"] = um.group(1)
        out["dsp"] = int(um.group(2))
        out["ff"] = um.group(3).replace(",", "").replace("~", "")
        out["lut"] = um.group(4).replace(",", "").replace("~", "")

    fm = re.search(r"Estimated Fmax:\s*([\d.]+)\s*MHz", text)
    if fm:
        out["fmax_mhz"] = fm.group(1)

    return out


def main():
    out_dir = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("hls_comparison_results")
    rows = []
    for rpt in sorted(out_dir.glob("karatsuba_*_csynth.rpt")):
        rows.append(parse_report(rpt))

    hdr = ["file", "lat_min", "lat_max", "dsp", "ff", "lut", "clk_est_ns", "fmax_mhz"]
    print("\t".join(hdr))
    for r in rows:
        print("\t".join(str(r.get(k, "")) for k in hdr))


if __name__ == "__main__":
    main()
