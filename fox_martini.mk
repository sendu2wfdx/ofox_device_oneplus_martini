# OrangeFox product makefile for OnePlus 9RT (martini)
# BUILD_TARGET: recovery (with recovery-as-boot, produces recovery.img)

# Include OrangeFox common configuration
$(call inherit-product, vendor/fox/twrp.mk)

# Include device configuration
$(call inherit-product, device/oneplus/martini/device.mk)
$(call inherit-product, device/oneplus/martini/sm8350-common/common.mk)

# Product identity
PRODUCT_NAME := fox_martini
PRODUCT_DEVICE := martini
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 9RT 5G
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_RELEASE_NAME := OnePlus9RT

# OrangeFox branding
PRODUCT_PACKAGE_OVERLAYS += vendor/fox/overlay

# Recovery properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.product=martini \
    ro.product.device=martini \
    persist.sys.usb.config=adb \
    sys.usb.config=adb \
    ro.twrp.boot=true
