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
include device/oneplus/sm8350-common/BoardConfigCommon.mk

# ===== OrangeFox flags =====
FOX_VERSION := "R12.1"
FOX_BUILD_TYPE := "Unofficial"
FOX_DEVICE_MODEL := "OnePlus 9RT 5G"
FOX_TARGET_DEVICES := martini

# OrangeFox features
FOX_RECOVERY_SYSTEM_PARTITION := "/dev/block/mapper/system"
FOX_RECOVERY_VENDOR_PARTITION := "/dev/block/mapper/vendor"
FOX_RECOVERY_INSTALL_PARTITION := "/dev/block/by-name/userdata"
FOX_ENABLE_APP_MANAGER := 1
FOX_USE_NANO_EDITOR := 1
FOX_ADVANCED_SECURITY := 1
FOX_ENABLE_FOX_OBSESSION := 1
FOX_USE_LZ4_COMPRESSION := 1

# 9RT specifics
FOX_RESET_SETTINGS := 0
FOX_DELETE_AROMAFM := 1
FOX_DELETE_MAGISK_ADDON := 0
FOX_USE_SPECIFIC_MAGISK_ZIP := 1
FOX_SPECIFIC_MAGISK_ZIP := Magisk-v28.1.zip

# A/B device
AB_OTA_UPDATER := 1
FOX_VIRTUAL_AB_DEVICE := 1
FOX_AB_DEVICE := 1

# Decryption support
FOX_RECOVERY_FBE_DECRYPTING := 1
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_USE_FSCRYPT_POLICY := 2
