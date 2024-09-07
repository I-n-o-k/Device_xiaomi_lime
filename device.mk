#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_HARDWARE := lime

# Include common platform configs
include device/xiaomi/sm6115-common/common.mk

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    CarrierConfigOverlay \
    FrameworksCustomLime \
    FrameworksResLime \
    SettingsResLime \
    SystemUIResLime \
    TelephonyResLime

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/lime/lime-vendor.mk)
