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
#include "xkernel_top.h"

extern XKernel_top_Config XKernel_top_ConfigTable[];

#ifdef SDT
XKernel_top_Config *XKernel_top_LookupConfig(UINTPTR BaseAddress) {
	XKernel_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XKernel_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XKernel_top_ConfigTable[Index].Control_r_BaseAddress == BaseAddress) {
			ConfigPtr = &XKernel_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKernel_top_Initialize(XKernel_top *InstancePtr, UINTPTR BaseAddress) {
	XKernel_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKernel_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKernel_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XKernel_top_Config *XKernel_top_LookupConfig(u16 DeviceId) {
	XKernel_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKERNEL_TOP_NUM_INSTANCES; Index++) {
		if (XKernel_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKernel_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKernel_top_Initialize(XKernel_top *InstancePtr, u16 DeviceId) {
	XKernel_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKernel_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKernel_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

