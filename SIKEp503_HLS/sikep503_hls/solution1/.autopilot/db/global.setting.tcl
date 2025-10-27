
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
set TargetInfo xcvu29p:-fsga2577:-2L-e
set SourceFiles {sc {} c {../.././src/sha3/fips202.cpp ../.././src/random/random.cpp ../.././src/generic/fp_generic.cpp ../.././src/sikep503_kem_enc_hw.cpp ../.././src/P503.cpp ../.././src/sike.cpp ../.././src/sidh.cpp ../.././src/ec_isogeny.cpp ../.././src/fpx.cpp ../.././src/generic/mpx_iface_tvu_mul.hpp ../.././src/sha3/fips202.h ../.././src/random/random.h ../.././src/api.h ../.././src/config.h ../.././src/sike.h ../.././src/sidh.h ../.././src/ec_isogeny.h ../.././src/fpx.h ../.././src/P503_internal.h ../../src/sha3/fips202.cpp ../../src/random/random.cpp ../../src/generic/fp_generic.cpp ../../src/sikep503_kem_enc_hw.cpp ../../src/P503.cpp ../../src/sike.cpp ../../src/sidh.cpp ../../src/ec_isogeny.cpp ../../src/fpx.cpp}}
set SourceFlags {sc {} c {{ } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} { } {} {} {} {} {} {} {} {} {} {}}}
set DirectiveFile {}
set TBFiles {verilog /home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/tb_top.cpp bc /home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/tb_top.cpp sc /home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/tb_top.cpp vhdl /home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/tb_top.cpp c {} cas /home/meltpoint/eeic/PQCrypto-SIKE/SIKEp503_HLS/src/tb_top.cpp}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
