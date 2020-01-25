#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, build/target/product/embedded.mk)

$(call inherit-product, vendor/omni/config/gsm.mk)

$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/google/taimen/device.mk)
$(call inherit-product-if-exists, vendor/google/taimen/proprietary/device-vendor.mk)

PRODUCT_PACKAGES += \
    libcryptfs_hw \
    netutils-wrapper-1.0 \
    vndk_package

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.hardware.keystore=msm8998 \
    ro.product.name=platina \
    ro.allow.mock.location=0

PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := Android
PRODUCT_NAME := omni_taimen
PRODUCT_DEVICE := taimen
PRODUCT_MODEL := Pixel 2 XL
