## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := NX501

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/NX501/device_NX501.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NX501
PRODUCT_NAME := cm_NX501
PRODUCT_BRAND := nubia
PRODUCT_BOARD := MSM8960
PRODUCT_MODEL := NX501
PRODUCT_MANUFACTURER := nubia
