#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/duchamp/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_duchamp
PRODUCT_DEVICE := duchamp
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2311DRK48G
PRODUCT_SYSTEM_NAME := duchamp_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="duchamp_global-user 15 AP3A.240905.015.A2 OS2.0.103.0.VNLMIXM release-keys" \
    BuildFingerprint=POCO/duchamp_global/duchamp:14/UP1A.230905.011/OS2.0.103.0.VNLMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# Misc
AXION_CAMERA_REAR_INFO := 64,8,2
AXION_CAMERA_FRONT_INFO := 16
AXION_PROCESSOR := Dimensity_8300_Ultra_(4nm)
AXION_MAINTAINER := zenin1504
AXION_DEBUGGING_ENABLED := true
TARGET_ENABLE_BLUR := true

# Gapps
WITH_GMS := true

# Core groups
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6
AXION_CPU_PRIME_CORE := 7

# Task assignments
AXION_CPU_BG := 0,1
AXION_CPU_FG := 2,3,4
AXION_CPU_LIMIT_BG := 0
