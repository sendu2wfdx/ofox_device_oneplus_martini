# OrangeFox build target for OnePlus 9RT (martini)
# Call lunch with: lunch fox_martini-eng

# Include the common device config
$(call inherit-product, device/oneplus/martini/sm8350-common/common.mk)

# Include OrangeFox common configuration
$(call inherit-product, vendor/recovery/twrp.mk)

# Device identifier
PRODUCT_NAME := fox_martini
PRODUCT_DEVICE := martini
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 9RT 5G
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_RELEASE_NAME := OnePlus9RT
