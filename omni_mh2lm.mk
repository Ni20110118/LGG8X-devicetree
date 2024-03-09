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

# Inherit from mh2lm device
$(call inherit-product, device/lge/mh2lm/device.mk)

PRODUCT_DEVICE := mh2lm
PRODUCT_NAME := omni_mh2lm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-G850
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mh2lm-user 10 QKQ1.200216.002 2110610453a6c release-keys"

BUILD_FINGERPRINT := lge/mh2lm/mh2lm:10/QKQ1.200216.002/2110610453a6c:user/release-keys
