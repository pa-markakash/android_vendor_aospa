#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_star,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/star/lahaina.mk)

# Call the MiuiCamera setup
$(call inherit-product-if-exists, vendor/xiaomi/star-miuicamera/products/miuicamera.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := star
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Xiaomi 11 Ultra
PRODUCT_NAME := aospa_star

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=star

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1440

endif
