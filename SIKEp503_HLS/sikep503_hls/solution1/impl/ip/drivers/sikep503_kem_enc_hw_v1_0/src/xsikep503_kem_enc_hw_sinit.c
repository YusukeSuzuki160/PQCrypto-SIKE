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
#include "xsikep503_kem_enc_hw.h"

extern XSikep503_kem_enc_hw_Config XSikep503_kem_enc_hw_ConfigTable[];

#ifdef SDT
XSikep503_kem_enc_hw_Config *XSikep503_kem_enc_hw_LookupConfig(UINTPTR BaseAddress) {
	XSikep503_kem_enc_hw_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSikep503_kem_enc_hw_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSikep503_kem_enc_hw_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSikep503_kem_enc_hw_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSikep503_kem_enc_hw_Initialize(XSikep503_kem_enc_hw *InstancePtr, UINTPTR BaseAddress) {
	XSikep503_kem_enc_hw_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSikep503_kem_enc_hw_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSikep503_kem_enc_hw_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSikep503_kem_enc_hw_Config *XSikep503_kem_enc_hw_LookupConfig(u16 DeviceId) {
	XSikep503_kem_enc_hw_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSIKEP503_KEM_ENC_HW_NUM_INSTANCES; Index++) {
		if (XSikep503_kem_enc_hw_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSikep503_kem_enc_hw_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSikep503_kem_enc_hw_Initialize(XSikep503_kem_enc_hw *InstancePtr, u16 DeviceId) {
	XSikep503_kem_enc_hw_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSikep503_kem_enc_hw_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSikep503_kem_enc_hw_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

