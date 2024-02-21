#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from laurel_sprout device
$(call inherit-product, device/xiaomi/laurel_sprout/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

PRODUCT_NO_CAMERA := true
TARGET_SUPPORTS_QUICK_TAP := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_DEVICE := laurel_sprout
PRODUCT_NAME := awaken_laurel_sprout
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 11 RKQ1.200903.002 V12.0.26.0.RFQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/laurel_sprout/laurel_sprout:11/RKQ1.200903.002/V12.0.26.0.RFQMIXM:user/release-keys

#Props
USE_PIXEL_CHARGER := true
USE_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
SKIP_ABI_CHECKS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
AWAKEN_BUILD_TYPE := official
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_DISABLE_EPPE := true
HAS_FOD := true

