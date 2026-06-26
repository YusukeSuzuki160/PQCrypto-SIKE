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
#include "xntt_forward_orig.h"

extern XNtt_forward_orig_Config XNtt_forward_orig_ConfigTable[];

#ifdef SDT
XNtt_forward_orig_Config *XNtt_forward_orig_LookupConfig(UINTPTR BaseAddress) {
	XNtt_forward_orig_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XNtt_forward_orig_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XNtt_forward_orig_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XNtt_forward_orig_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNtt_forward_orig_Initialize(XNtt_forward_orig *InstancePtr, UINTPTR BaseAddress) {
	XNtt_forward_orig_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNtt_forward_orig_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNtt_forward_orig_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XNtt_forward_orig_Config *XNtt_forward_orig_LookupConfig(u16 DeviceId) {
	XNtt_forward_orig_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNTT_FORWARD_ORIG_NUM_INSTANCES; Index++) {
		if (XNtt_forward_orig_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNtt_forward_orig_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNtt_forward_orig_Initialize(XNtt_forward_orig *InstancePtr, u16 DeviceId) {
	XNtt_forward_orig_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNtt_forward_orig_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNtt_forward_orig_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

