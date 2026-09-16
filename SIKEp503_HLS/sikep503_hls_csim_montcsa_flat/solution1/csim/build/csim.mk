# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

__USE_VCXX_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../src_montcsa_flat/tb_top.cpp ../../../../src_montcsa_flat/sha3/fips202.cpp ../../../../src_montcsa_flat/random/random.cpp ../../../../src_montcsa_flat/generic/fp_generic.cpp ../../../../src_montcsa_flat/sikep503_kem_enc_hw.cpp ../../../../src_montcsa_flat/P503.cpp ../../../../src_montcsa_flat/sike.cpp ../../../../src_montcsa_flat/sidh.cpp ../../../../src_montcsa_flat/ec_isogeny.cpp ../../../../src_montcsa_flat/fpx.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /home2/meltpoint/Xilinx/Vitis/2024.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /home2/meltpoint/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${XILINX_VCXX}/libexec
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
CCFLAG += -fdebug-default-version=4
CCFLAG += --gcc-toolchain=/home2/meltpoint/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized
LFLAG += --gcc-toolchain=/home2/meltpoint/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/tb_top.o: ../../../../src_montcsa_flat/tb_top.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/tb_top.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb_top.d

$(ObjDir)/fips202.o: ../../../../src_montcsa_flat/sha3/fips202.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/sha3/fips202.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fips202.d

$(ObjDir)/random.o: ../../../../src_montcsa_flat/random/random.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/random/random.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/random.d

$(ObjDir)/fp_generic.o: ../../../../src_montcsa_flat/generic/fp_generic.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/generic/fp_generic.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fp_generic.d

$(ObjDir)/sikep503_kem_enc_hw.o: ../../../../src_montcsa_flat/sikep503_kem_enc_hw.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/sikep503_kem_enc_hw.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sikep503_kem_enc_hw.d

$(ObjDir)/P503.o: ../../../../src_montcsa_flat/P503.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/P503.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/P503.d

$(ObjDir)/sike.o: ../../../../src_montcsa_flat/sike.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/sike.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sike.d

$(ObjDir)/sidh.o: ../../../../src_montcsa_flat/sidh.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/sidh.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sidh.d

$(ObjDir)/ec_isogeny.o: ../../../../src_montcsa_flat/ec_isogeny.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/ec_isogeny.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/ec_isogeny.d

$(ObjDir)/fpx.o: ../../../../src_montcsa_flat/fpx.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src_montcsa_flat/fpx.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -I../../../.././../montgomery_converter/include  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fpx.d
