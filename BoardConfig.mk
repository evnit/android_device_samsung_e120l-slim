# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common celox
-include device/samsung/celox-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/e120l/BoardConfigVendor.mk

# Assert
TARGET_BOARD_INFO_FILE ?= device/samsung/e120l/board-info.txt
TARGET_OTA_ASSERT_DEVICE := SHV-e120l,e120l

# Kernel
# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom kgsl.mmutype=gpummu usb_id_pin_rework=true no_console_suspend=true zcache msm_watchdog.appsbark=0 msm_watchdog.enable=1 loglevel=4 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40400000
TARGET_KERNEL_CONFIG := cyanogenmod_e120l_defconfig
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x41800000
TARGET_KERNEL_SOURCE := kernel/samsung/msm8660-common

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
TARGET_USERIMAGES_USE_EXT4 := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/e120l/bluetooth
