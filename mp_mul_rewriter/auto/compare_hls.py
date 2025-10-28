#!/usr/bin/env python3
"""
HLS Performance Comparison Tool
VitisHLSで3つのバージョンを比較し、性能差を分析
"""
import os
import re
import subprocess
import sys
from pathlib import Path


class HLSTest:
    def __init__(self, name, description, source_file, extra_files=None):
        self.name = name
        self.description = description
        self.source_file = source_file
        self.extra_files = extra_files or []
        self.results = {}

    def run_hls(self, output_dir):
        """VitisHLSを実行して合成レポートを取得"""
        print(f"\n{'='*60}")
        print(f"Testing: {self.name} - {self.description}")
        print(f"{'='*60}")

        project_dir = f"proj_{self.name}"
        solution_name = "solution1"

        # プロジェクト作成
        tcl_script = f"""
        open_project -reset {project_dir}
        set_top test_mul_{self.name}
        add_files {self.source_file}
"""
        # 追加ファイルがあれば追加
        for extra in self.extra_files:
            tcl_script += f"add_files {extra}\n"

        tcl_script += f"""
        open_solution "{solution_name}" -flow_target vivado
        set_part {{xcvu9p-flga2104-2-i}}
        create_clock -period 10 -name default
        
        # C simulation
        csim_design
        
        # C synthesis
        csynth_design
        
        # レポートを取得
        exit
"""

        # TCLスクリプトを実行
        try:
            result = subprocess.run(
                ["vitis_hls", "-f", "-"],
                input=tcl_script,
                text=True,
                capture_output=True,
                cwd=Path.cwd(),
            )

            if result.returncode != 0:
                print(f"Error running HLS: {result.stderr}")
                return None

            # レポートファイルを読み込み
            report_path = (
                Path(project_dir)
                / solution_name
                / "syn"
                / "report"
                / f"test_mul_{self.name}_csynth.rpt"
            )
            if report_path.exists():
                self.results["report"] = report_path.read_text()
                # 結果をファイルに保存
                output_file = Path(output_dir) / f"{self.name}_csynth.rpt"
                output_file.write_text(self.results["report"])
                print(f"Report saved to: {output_file}")
                return self.results
            else:
                print(f"Report file not found: {report_path}")
                return None

        except Exception as e:
            print(f"Error: {e}")
            return None


def extract_metrics(report_text):
    """レポートから主要なメトリクスを抽出"""
    metrics = {"latency": None, "area": None, "timing": None}

    # Latency抽出
    latency_match = re.search(r"Latency\s*=\s*(\d+)", report_text)
    if latency_match:
        metrics["latency"] = int(latency_match.group(1))

    # Area抽出
    area_match = re.search(r"Total\s*(\d+)", report_text)
    if area_match:
        metrics["area"] = int(area_match.group(1))

    return metrics


def main():
    # テストケース定義
    tests = [
        HLSTest("orig", "Original (pre-conversion)", "test_orig.cpp"),
        HLSTest(
            "converted",
            "Converted (PackedOps)",
            "test_converted.cpp",
            ["mpx_packed.hpp"],
        ),
        HLSTest("comba", "Comba multiplication", "test_comba.cpp"),
    ]

    output_dir = Path("hls_comparison_results")
    output_dir.mkdir(exist_ok=True)

    results_summary = []

    # 各テストを実行
    for test in tests:
        result = test.run_hls(output_dir)
        if result and "report" in result:
            metrics = extract_metrics(result["report"])
            results_summary.append(
                {
                    "name": test.name,
                    "description": test.description,
                    "metrics": metrics,
                }
            )

    # サマリーを生成
    print(f"\n{'='*60}")
    print("SUMMARY")
    print(f"{'='*60}")

    summary_file = output_dir / "comparison_summary.txt"
    with open(summary_file, "w") as f:
        f.write("HLS Performance Comparison Summary\n")
        f.write("=" * 60 + "\n\n")

        for result in results_summary:
            print(f"\n{result['name']}: {result['description']}")
            f.write(f"\n{result['name']}: {result['description']}\n")

            metrics = result["metrics"]
            if metrics["latency"]:
                print(f"  Latency: {metrics['latency']} cycles")
                f.write(f"  Latency: {metrics['latency']} cycles\n")
            if metrics["area"]:
                print(f"  Area: {metrics['area']}")
                f.write(f"  Area: {metrics['area']}\n")

    print(f"\nSummary saved to: {summary_file}")
    print("\nDetailed reports are in:", output_dir)


if __name__ == "__main__":
    main()
