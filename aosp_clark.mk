# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

$(call inherit-product, device/motorola/clark/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

# GApps
TARGET_GAPPS_ARCH := arm64
DEVICE_PACKAGE_OVERLAYS += device/motorola/clark/overlay
TARGET_INCLUDE_LIVE_WALLPAPERS := false

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_clark
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := clark
PRODUCT_MODEL := XT1575
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="clark_retus-user 7.0 NPHS25.200-22-1 1 release-keys"

BUILD_FINGERPRINT := motorola/clark_retus/clark:7.0/NPHS25.200-22-1/1:user/release-keys
