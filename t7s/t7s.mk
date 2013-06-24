#
# Copyright (C) 2012 The CyanogenMod Project
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

$(call inherit-product, device/hyundai/txx-common/txx-common.mk)

LOCAL_PATH := device/hyundai/t7s

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    device/hyundai/t7s/init.smdk4x12.rc:root/init.smdk4x12.rc \
    device/hyundai/txx-common/configs/tiny_hw.xml:system/etc/sound/T7S

# Gps
PRODUCT_COPY_FILES += \
    device/hyundai/t7s/configs/gps.conf:system/etc/gps.conf \
    device/hyundai/t7s/configs/gps.xml:system/etc/gps.xml
