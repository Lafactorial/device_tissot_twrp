#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := tissot

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from device configuration
$(call inherit-product, device/xiaomi/tissot/device.mk)

# Platform
TARGET_BOARD_PLATFORM := msm8953

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=$(TARGET_BOARD_PLATFORM) \
    ro.hardware.bootctrl=$(TARGET_BOARD_PLATFORM)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tissot
PRODUCT_NAME := twrp_tissot
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A1
PRODUCT_MANUFACTURER := Xiaomi
