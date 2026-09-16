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
#include "xrsa_modexp_hw.h"

extern XRsa_modexp_hw_Config XRsa_modexp_hw_ConfigTable[];

#ifdef SDT
XRsa_modexp_hw_Config *XRsa_modexp_hw_LookupConfig(UINTPTR BaseAddress) {
	XRsa_modexp_hw_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XRsa_modexp_hw_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XRsa_modexp_hw_ConfigTable[Index].Control_r_BaseAddress == BaseAddress) {
			ConfigPtr = &XRsa_modexp_hw_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRsa_modexp_hw_Initialize(XRsa_modexp_hw *InstancePtr, UINTPTR BaseAddress) {
	XRsa_modexp_hw_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRsa_modexp_hw_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRsa_modexp_hw_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XRsa_modexp_hw_Config *XRsa_modexp_hw_LookupConfig(u16 DeviceId) {
	XRsa_modexp_hw_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XRSA_MODEXP_HW_NUM_INSTANCES; Index++) {
		if (XRsa_modexp_hw_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XRsa_modexp_hw_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRsa_modexp_hw_Initialize(XRsa_modexp_hw *InstancePtr, u16 DeviceId) {
	XRsa_modexp_hw_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRsa_modexp_hw_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRsa_modexp_hw_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

