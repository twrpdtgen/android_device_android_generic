#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from generic device
$(call inherit-product, device/android/generic/device.mk)

PRODUCT_DEVICE := generic
PRODUCT_NAME := omni_generic
PRODUCT_BRAND := Android
PRODUCT_MODEL := mainline
PRODUCT_MANUFACTURER := android

PRODUCT_GMS_CLIENTID_BASE := android-android

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aosp_Mi439_4_19-userdebug 15 AP3A.240905.015.A2 eng.build.00000000.000000 release-keys"

BUILD_FINGERPRINT := Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys
