# TWRP product makefile for OnePlus 9RT (martini)
# The GitHub Actions builder uses: lunch twrp_martini-eng

# Include TWRP configuration
$(call inherit-product, vendor/fox/twrp.mk)

# Include device configuration
$(call inherit-product, device/oneplus/martini/device.mk)
$(call inherit-product, device/oneplus/sm8350-common/common.mk)

# Product identity
PRODUCT_NAME := twrp_martini
PRODUCT_DEVICE := martini
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 9RT 5G
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_RELEASE_NAME := OnePlus9RT

# Recovery properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.product=martini \
    ro.product.device=martini \
    persist.sys.usb.config=adb \
    sys.usb.config=adb
