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

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOS flags
WITH_GMS := true
TARGET_HAS_UDFPS := true
TARGET_PREBUILT_PIXEL_LAUNCHER := true
TARGET_USE_GOOGLE_TELEPHONY := true
RISING_MAINTAINER := matt0301
RISING_CHIPSET := Snapdragon855+
RISING_STORAGE := 256GB
RISING_RAM := 8GB
RISING_BATTERY := 3800mAh
RISING_DISPLAY := 2400×1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7T
PRODUCT_SYSTEM_DEVICE := OnePlus7T

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7T \
    TARGET_PRODUCT=OnePlus7T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
