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

HLS_SOURCES = ../../../../src/tb_top.cpp ../../../../src/sha3/fips202.c ../../../../src/random/random.c ../../../../src/generic/fp_generic.c ../../../../src/sike.c ../../../../src/sidh.c ../../../../src/fpx.c ../../../../src/ec_isogeny.c ../../../../src/P503.c ../../../../src/top.cpp

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

IFLAG += -D__DSP48E1__
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



$(ObjDir)/tb_top.o: ../../../../src/tb_top.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/tb_top.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb_top.d

$(ObjDir)/fips202.o: ../../../../src/sha3/fips202.c $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/sha3/fips202.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -std=gnu99 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fips202.d

$(ObjDir)/random.o: ../../../../src/random/random.c $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/random/random.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -std=gnu99 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/random.d

$(ObjDir)/fp_generic.o: ../../../../src/generic/fp_generic.c $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/generic/fp_generic.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -std=gnu99 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fp_generic.d

$(ObjDir)/sike.o: ../../../../src/sike.c $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/sike.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -std=gnu99 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sike.d

$(ObjDir)/sidh.o: ../../../../src/sidh.c $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/sidh.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -std=gnu99 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/sidh.d

$(ObjDir)/fpx.o: ../../../../src/fpx.c $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/fpx.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -std=gnu99 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/fpx.d

$(ObjDir)/ec_isogeny.o: ../../../../src/ec_isogeny.c $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/ec_isogeny.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -std=gnu99 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/ec_isogeny.d

$(ObjDir)/P503.o: ../../../../src/P503.c $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/P503.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -std=gnu99 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/P503.d

$(ObjDir)/top.o: ../../../../src/top.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../src/top.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/top.d
