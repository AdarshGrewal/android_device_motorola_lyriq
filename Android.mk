#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),lyriq)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

32BIT_SYMLINKS := $(TARGET_OUT_VENDOR)/lib
$(32BIT_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating 32bit components symlinks: $@"
	@mkdir -p $@
	@mkdir -p $@/egl
	@mkdir -p $@/hw
	$(hide) ln -sf /vendor/lib/mt6893/arm.graphics-V1-ndk_platform.so $@/arm.graphics-V1-ndk_platform.so
	$(hide) ln -sf /vendor/lib/mt6893/arm.graphics-ndk_platform.so $@/arm.graphics-ndk_platform.so
	$(hide) ln -sf /vendor/lib/egl/mt6893/libGLES_mali.so $@/egl/libGLES_mali.so
	$(hide) ln -sf /vendor/lib/hw/libMcGatekeeper.so $@/hw/gatekeeper.trustonic.so
	$(hide) ln -sf /vendor/lib/egl/mt6893/libGLES_mali.so $@/hw/vulkan.mt6893.so
	$(hide) ln -sf /vendor/lib/hw/libSoftGatekeeper.so $@/hw/gatekeeper.default.so
	$(hide) ln -sf /vendor/lib/hw/mt6893/android.hardware.graphics.mapper@4.0-impl-mediatek.so $@/hw/android.hardware.graphics.mapper@4.0-impl-mediatek.so
	$(hide) ln -sf /vendor/lib/hw/mt6893/vulkan.mali.so $@/hw/vulkan.mali.so
	$(hide) ln -sf /vendor/lib/hw/kmsetkey.trustonic.so $@/hw/kmsetkey.default.so
	$(hide) ln -sf /vendor/lib/hw/mt6893/android.hardware.graphics.allocator@4.0-impl-mediatek.so $@/hw/android.hardware.graphics.allocator@4.0-impl-mediatek.so
	$(hide) ln -sf /vendor/lib/mt6893/libaiselector.so $@/libaiselector.so
	$(hide) ln -sf /vendor/lib/mt6893/libdpframework.so $@/libdpframework.so
	$(hide) ln -sf /vendor/lib/mt6893/libgpudataproducer.so $@/libgpudataproducer.so
	$(hide) ln -sf /vendor/lib/mt6893/libmtk_drvb.so $@/libmtk_drvb.so
	$(hide) ln -sf /vendor/lib/mt6893/libneuron_platform.vpu.so $@/libneuron_platform.vpu.so
	$(hide) ln -sf /vendor/lib/mt6893/libnir_neon_driver.so $@/libnir_neon_driver.so
	$(hide) ln -sf /vendor/lib/mt6893/libpq_prot.so $@/libpq_prot.so

64BIT_SYMLINKS := $(TARGET_OUT_VENDOR)/lib64
$(64BIT_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating 64bit components symlinks: $@"
	@mkdir -p $@
	@mkdir -p $@/egl
	@mkdir -p $@/hw
	$(hide) ln -sf /vendor/lib64/mt6893/arm.graphics-V1-ndk_platform.so $@/arm.graphics-V1-ndk_platform.so
	$(hide) ln -sf /vendor/lib64/mt6893/arm.graphics-ndk_platform.so $@/arm.graphics-ndk_platform.so
	$(hide) ln -sf /vendor/lib64/egl/mt6893/libGLES_mali.so $@/egl/libGLES_mali.so
	$(hide) ln -sf /vendor/lib64/hw/libMcGatekeeper.so $@/hw/gatekeeper.trustonic.so
	$(hide) ln -sf /vendor/lib64/egl/mt6893/libGLES_mali.so $@/hw/vulkan.mt6893.so
	$(hide) ln -sf /vendor/lib64/hw/libSoftGatekeeper.so $@/hw/gatekeeper.default.so
	$(hide) ln -sf /vendor/lib64/hw/mt6893/android.hardware.graphics.mapper@4.0-impl-mediatek.so $@/hw/android.hardware.graphics.mapper@4.0-impl-mediatek.so
	$(hide) ln -sf /vendor/lib64/hw/mt6893/vulkan.mali.so $@/hw/vulkan.mali.so
	$(hide) ln -sf /vendor/lib64/hw/kmsetkey.trustonic.so $@/hw/kmsetkey.default.so
	$(hide) ln -sf /vendor/lib64/hw/mt6893/android.hardware.graphics.allocator@4.0-impl-mediatek.so $@/hw/android.hardware.graphics.allocator@4.0-impl-mediatek.so
	$(hide) ln -sf /vendor/lib64/mt6893/libaiselector.so $@/libaiselector.so
	$(hide) ln -sf /vendor/lib64/mt6893/libdpframework.so $@/libdpframework.so
	$(hide) ln -sf /vendor/lib64/mt6893/libgpudataproducer.so $@/libgpudataproducer.so
	$(hide) ln -sf /vendor/lib64/mt6893/libmtk_drvb.so $@/libmtk_drvb.so
	$(hide) ln -sf /vendor/lib64/mt6893/libneuron_platform.vpu.so $@/libneuron_platform.vpu.so
	$(hide) ln -sf /vendor/lib64/mt6893/libnir_neon_driver.so $@/libnir_neon_driver.so
	$(hide) ln -sf /vendor/lib64/mt6893/libpq_prot.so $@/libpq_prot.so
	$(hide) ln -sf /vendor/lib64/mt6893/libmnl.so $@/libmnl.so
	$(hide) ln -sf /vendor/lib64/mt6893/libDR.so $@/libDR.so
	$(hide) ln -sf /vendor/lib64/mt6893/libneuron_runtime.5.so $@/libneuron_runtime.5.so
	$(hide) ln -sf /vendor/lib64/mt6893/libneuron_runtime.so $@/libneuron_runtime.so

ALL_DEFAULT_INSTALLED_MODULES += $(32BIT_SYMLINKS) $(64BIT_SYMLINKS)

endif
