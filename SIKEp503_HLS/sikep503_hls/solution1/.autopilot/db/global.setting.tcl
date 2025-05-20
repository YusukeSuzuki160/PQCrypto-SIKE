
set TopModule "sikep503_kem_enc_hw"
set ClockPeriod 10
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix sikep503_kem_enc_hw_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg484:-1
set SourceFiles {sc {} c {../.././src/sikep503_kem_enc_tb.cpp ../.././src/sike.h ../.././src/sidh.h ../.././src/ec_isogeny.h ../.././src/fpx.h ../.././src/config.h ../.././src/sha3/fips202.h ../.././src/random/random.h ../.././src/api.h ../.././src/P503_internal.h ../.././src/sha3/fips202.c ../.././src/random/random.c ../.././src/generic/fp_generic.c ../.././src/sike.c ../.././src/sidh.c ../.././src/fpx.c ../.././src/ec_isogeny.c ../.././src/P503.c ../../src/sikep503_kem_enc_tb.cpp ../../src/sha3/fips202.c ../../src/random/random.c ../../src/generic/fp_generic.c ../../src/sike.c ../../src/sidh.c ../../src/fpx.c ../../src/ec_isogeny.c ../../src/P503.c}}
set SourceFlags {sc {} c {{ } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} {} {} {} {} {} {} {} {} {}}}
set DirectiveFile {}
set TBFiles {verilog {../../src/tb_top.cpp ../../src/sikep503_kem_enc_tb.cpp} bc {../../src/tb_top.cpp ../../src/sikep503_kem_enc_tb.cpp} sc {../../src/tb_top.cpp ../../src/sikep503_kem_enc_tb.cpp} vhdl {../../src/tb_top.cpp ../../src/sikep503_kem_enc_tb.cpp} c {} cas {../../src/tb_top.cpp ../../src/sikep503_kem_enc_tb.cpp}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound ../../tb/tb_top.cpp
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
