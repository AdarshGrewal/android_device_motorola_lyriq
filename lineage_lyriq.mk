#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lyriq device
$(call inherit-product, device/motorola/lyriq/device.mk)

PRODUCT_NAME := lineage_lyriq
PRODUCT_DEVICE := lyriq
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=lyriq \
    PRIVATE_BUILD_DESC="lyriq_g-user 13 T2TL33.3-62-3 22ea1-a67b0 release-keys"

BUILD_FINGERPRINT := motorola/lyriq_g/lyriq:13/T2TL33.3-62-3/22ea1-a67b0:user/release-keys
