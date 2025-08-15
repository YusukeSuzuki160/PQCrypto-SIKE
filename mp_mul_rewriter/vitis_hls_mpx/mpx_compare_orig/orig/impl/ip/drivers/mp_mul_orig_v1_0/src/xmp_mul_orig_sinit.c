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
#include "xmp_mul_orig.h"

extern XMp_mul_orig_Config XMp_mul_orig_ConfigTable[];

#ifdef SDT
XMp_mul_orig_Config *XMp_mul_orig_LookupConfig(UINTPTR BaseAddress) {
	XMp_mul_orig_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMp_mul_orig_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMp_mul_orig_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMp_mul_orig_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMp_mul_orig_Initialize(XMp_mul_orig *InstancePtr, UINTPTR BaseAddress) {
	XMp_mul_orig_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMp_mul_orig_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMp_mul_orig_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMp_mul_orig_Config *XMp_mul_orig_LookupConfig(u16 DeviceId) {
	XMp_mul_orig_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMP_MUL_ORIG_NUM_INSTANCES; Index++) {
		if (XMp_mul_orig_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMp_mul_orig_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMp_mul_orig_Initialize(XMp_mul_orig *InstancePtr, u16 DeviceId) {
	XMp_mul_orig_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMp_mul_orig_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMp_mul_orig_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

