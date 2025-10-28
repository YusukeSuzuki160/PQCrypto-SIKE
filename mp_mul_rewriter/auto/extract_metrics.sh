#!/bin/bash
# extract_metrics.sh
# HLSレポートから主要なメトリクスを抽出

if [ $# -eq 0 ]; then
    echo "Usage: $0 <report_file>..."
    exit 1
fi

echo "Metric Name                     | Value"
echo "--------------------------------|-------------------"

for report in "$@"; do
    if [ ! -f "$report" ]; then
        echo "Warning: File not found: $report"
        continue
    fi
    
    echo ""
    echo "Report: $(basename $report)"
    echo "--------------------------------|-------------------"
    
    # Latency
    latency=$(grep -m1 "Latency (cycles)" "$report" || echo "N/A")
    echo "Latency (cycles)                | $latency"
    
    # Area
    area=$(grep -m1 "Total" "$report" || echo "N/A")
    echo "Area                            | $area"
    
    # BRAM
    bram=$(grep -i "BRAM" "$report" | head -1 || echo "N/A")
    echo "BRAM                            | $bram"
    
    # DSP
    dsp=$(grep -i "DSP" "$report" | head -1 || echo "N/A")
    echo "DSP                             | $dsp"
    
done

