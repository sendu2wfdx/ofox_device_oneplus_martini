# BoardConfig for OnePlus 9RT (martini)
# Based on lemonadep TWRP tree + SM8350 common tree

DEVICE_PATH := device/oneplus/martini

TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Display
TARGET_SCREEN_DENSITY := 402
TARGET_RECOVERY_DENSITY := xxhdpi
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 126

BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
ALLOW_MISSING_DEPENDENCIES := true

# Martini uses recovery-as-boot like other SM8350 OnePlus
TARGET_NO_RECOVERY := true

# Include SM8350 common config
include device/oneplus/martini/sm8350-common/BoardConfigCommon.mk
