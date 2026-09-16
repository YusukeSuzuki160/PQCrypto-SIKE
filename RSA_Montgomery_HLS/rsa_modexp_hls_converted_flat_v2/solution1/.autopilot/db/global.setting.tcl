
set TopModule "rsa_modexp_hw"
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
set RtlSubPrefix rsa_modexp_hw_
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
set SourceFiles {sc {} c {../../src_converted_flat_v2/rsa_modexp_hw.cpp ../../src_converted_flat_v2/mont_word.cpp}}
set SourceFlags {sc {} c {{} -I../montgomery_converter/include}}
set DirectiveFile {}
set TBFiles {verilog /home/meltpoint/eeic/PQCrypto-SIKE/RSA_Montgomery_HLS/src_converted_flat_v2/tb_top.cpp bc /home/meltpoint/eeic/PQCrypto-SIKE/RSA_Montgomery_HLS/src_converted_flat_v2/tb_top.cpp vhdl /home/meltpoint/eeic/PQCrypto-SIKE/RSA_Montgomery_HLS/src_converted_flat_v2/tb_top.cpp sc /home/meltpoint/eeic/PQCrypto-SIKE/RSA_Montgomery_HLS/src_converted_flat_v2/tb_top.cpp cas /home/meltpoint/eeic/PQCrypto-SIKE/RSA_Montgomery_HLS/src_converted_flat_v2/tb_top.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
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
