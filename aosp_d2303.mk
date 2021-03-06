# Copyright 2014 The Android Open Source Project
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

TARGET_KERNEL_CONFIG := aosp_yukon_eagle_defconfig

# Include others
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/sony/yukon/platform.mk)
$(call inherit-product, vendor/sony/eagle/eagle-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/eagle/overlay

# Device etc
PRODUCT_COPY_FILES += \
    device/sony/eagle/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/eagle/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/eagle/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/eagle/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Device Init
PRODUCT_PACKAGES += \
    fstab.yukon \
    init.recovery.eagle \
    init.eagle \
    ueventd.eagle

# Lights
PRODUCT_PACKAGES += \
    lights.eagle

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.eagle

# NFC config
PRODUCT_PACKAGES += \
    nfc_nci.eagle

# Product attributes
PRODUCT_NAME := aosp_d2303
PRODUCT_DEVICE := eagle
PRODUCT_MODEL := Xperia M2 (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.usb.pid_suffix=1B8
