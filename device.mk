# Device makefile for OnePlus 9RT (martini)
# Based on bheatleyyy/device_oplus_martini + lemonadep TWRP tree

LOCAL_PATH := $(call my-dir)

# Boot control HAL (A/B)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service \
    bootctrl.lahaina

# Health HAL (battery)
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.lahaina

# Update engine (A/B)
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_client \
    update_verifier

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service.dual_role_usb

# fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.lahaina:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.lahaina
