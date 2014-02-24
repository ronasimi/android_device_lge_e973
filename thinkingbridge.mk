# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit some common ThinkingBridge stuff.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit gsm packages
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e973/full_e973.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e973
PRODUCT_NAME := thinkingbridge_e973
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E973
PRODUCT_MANUFACTURER := LGE

# Enable Torch
PRODUCT_PACKAGES += Torch
