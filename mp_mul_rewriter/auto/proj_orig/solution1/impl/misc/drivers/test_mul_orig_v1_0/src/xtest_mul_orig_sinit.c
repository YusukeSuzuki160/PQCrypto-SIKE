// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xtest_mul_orig.h"

extern XTest_mul_orig_Config XTest_mul_orig_ConfigTable[];

#ifdef SDT
XTest_mul_orig_Config *XTest_mul_orig_LookupConfig(UINTPTR BaseAddress) {
	XTest_mul_orig_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XTest_mul_orig_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XTest_mul_orig_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XTest_mul_orig_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_mul_orig_Initialize(XTest_mul_orig *InstancePtr, UINTPTR BaseAddress) {
	XTest_mul_orig_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_mul_orig_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_mul_orig_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XTest_mul_orig_Config *XTest_mul_orig_LookupConfig(u16 DeviceId) {
	XTest_mul_orig_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_MUL_ORIG_NUM_INSTANCES; Index++) {
		if (XTest_mul_orig_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_mul_orig_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_mul_orig_Initialize(XTest_mul_orig *InstancePtr, u16 DeviceId) {
	XTest_mul_orig_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_mul_orig_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_mul_orig_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

