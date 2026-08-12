#
# Copyright (C) 2021-2024 The OrangeFox Recovery Project
# OnePlus 9RT (martini) — based on vayu template (fox_12.1)
#

# Release name
PRODUCT_RELEASE_NAME := martini
DEVICE_PATH := device/oneplus/$(PRODUCT_RELEASE_NAME)

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# SM8350 common product config (A/B, update engine, bootctrl, etc.)
$(call inherit-product, device/oneplus/martini/sm8350-common/common.mk)

# Inherit any OrangeFox-specific settings
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_martini.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := MT2111
PRODUCT_MANUFACTURER := OnePlus
