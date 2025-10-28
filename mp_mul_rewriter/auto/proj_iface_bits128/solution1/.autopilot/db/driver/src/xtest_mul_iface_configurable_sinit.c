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
#include "xtest_mul_iface_configurable.h"

extern XTest_mul_iface_configurable_Config XTest_mul_iface_configurable_ConfigTable[];

#ifdef SDT
XTest_mul_iface_configurable_Config *XTest_mul_iface_configurable_LookupConfig(UINTPTR BaseAddress) {
	XTest_mul_iface_configurable_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XTest_mul_iface_configurable_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XTest_mul_iface_configurable_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XTest_mul_iface_configurable_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_mul_iface_configurable_Initialize(XTest_mul_iface_configurable *InstancePtr, UINTPTR BaseAddress) {
	XTest_mul_iface_configurable_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_mul_iface_configurable_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_mul_iface_configurable_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XTest_mul_iface_configurable_Config *XTest_mul_iface_configurable_LookupConfig(u16 DeviceId) {
	XTest_mul_iface_configurable_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_MUL_IFACE_CONFIGURABLE_NUM_INSTANCES; Index++) {
		if (XTest_mul_iface_configurable_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_mul_iface_configurable_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_mul_iface_configurable_Initialize(XTest_mul_iface_configurable *InstancePtr, u16 DeviceId) {
	XTest_mul_iface_configurable_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_mul_iface_configurable_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_mul_iface_configurable_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

