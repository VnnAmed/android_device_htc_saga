# Copyright (C) 2009 The Android Open Source Project
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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/saga/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := saga
BOARD_KERNEL_BASE := 0x04400000

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Partition info
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 5194304

# Kernel
TARGET_KERNEL_CONFIG := saga_andromadus_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/saga/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/saga/configs/libbt_vndcfg.txt

# Misc
BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true

# TWRP
#TARGET_RECOVERY_INITRC := device/htc/saga/init.recovery.saga.rc
DEVICE_RESOLUTION := 480x800
TW_FLASH_FROM_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := false
TW_INCLUDE_DUMLOCK := false
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_INCLUDE_DUMLOCK := true
TW_NO_BATT_PERCENT := false
TW_NO_REBOOT_BOOTLOADER := false
TW_NO_REBOOT_RECOVERY := false
TW_NO_USB_STORAGE := false
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
