# Release name
PRODUCT_RELEASE_NAME := OptimusG

# Inherit device configuration
$(call inherit-product, device/lge/e973/full_e973.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e973
PRODUCT_NAME := mahdi_e973
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E973
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=e973 BUILD_FINGERPRINT=lge/e973:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="e973-user 4.4.2 KOT49H 937116 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip
