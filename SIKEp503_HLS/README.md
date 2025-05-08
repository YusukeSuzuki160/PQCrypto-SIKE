# SIKEp503 – Vitis HLS Hardware Wrapper
This package refactors the official SIKEp503 reference implementation so that the **encapsulation** function can be synthesized to hardware with Xilinx Vitis HLS (2024.2 or later).

## Folder structure
```
src/           – Original SIKEp503 source + `top.cpp` HLS wrapper  
vitis_hls.tcl  – Non‑interactive build script (change `set_part` as needed)  
```
## Quick start
```bash
vitis_hls -f vitis_hls.tcl
```
## Notes on the refactor
* **No functional changes** were made to the cryptographic code.  
* The wrapper applies AXI‑4 interfaces (`m_axi`) for the three data buffers and an AXI‑Lite control interface.  
* Critical loops inside the reference code are automatically pipelined/inlined by Vitis HLS; additional pragmas can be inserted for fine‑tuning if you profile hotspots after synthesis.  
* For FPGAs with limited on‑chip memory you may wish to store the public key in BRAM or stream it via AXI‑4‑Stream – adapt the pragmas accordingly.

## License
The original SIKE reference implementation is released under the Microsoft Research License Agreement.  
The wrapper (`top.cpp`, `vitis_hls.tcl`, this README) is provided under the MIT license.
