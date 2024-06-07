#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)

# Inherit some common Infinity-X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7T
PRODUCT_SYSTEM_DEVICE := OnePlus7T

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7T \
    TARGET_PRODUCT=OnePlus7T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

INFINITY_MAINTAINER := matt0301
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
INFINITY_BUILD_TYPE := OFFICIAL
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true
