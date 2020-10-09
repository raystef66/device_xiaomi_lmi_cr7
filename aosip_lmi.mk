#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosip_lmi
PRODUCT_DEVICE := lmi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := F2 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Redmi/lmi/lmi:10/QKQ1.191117.002/V12.0.8.0.QJKCNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmi-user 10 QKQ1.191117.002 V12.0.8.0.QJKCNXM release-keys" \
    PRODUCT_NAME="lmi" \
    TARGET_DEVICE="lmi"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
