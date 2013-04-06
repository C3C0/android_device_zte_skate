#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/zte/skate/BoardConfigVendor.mk

# CPU
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi-v6l
TARGET_ARCH_VARIANT := armv6-vfp

# Target and board properties
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_PROVIDES_LIBRIL := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOOTLOADER_BOARD_NAME := skate
TARGET_SPECIFIC_HEADER_PATH := device/zte/skate/include

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/skate/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/zte/skate/recovery/recovery_keys.c
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/skate/recovery/recovery_kernel
TARGET_RECOVERY_INITRC := device/zte/skate/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/zte/skate/recovery/recovery.fstab

# Kernel
TARGET_KERNEL_SOURCE := kernel/zte/skate
TARGET_KERNEL_CONFIG := skate_jb_defconfig
BOARD_KERNEL_BASE := 0x02600000
BOARD_KERNEL_CMDLINE := androidboot.hardware=skate console=null

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
WPA_SUPPLICANT_IBSS_HACK := true
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/fw_4319.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/fw_4319_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/fw_4319.bin,nvram_path=/system/etc/nv_4319.txt iface_name=wlan"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_LOADER_REUSE := true

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/zte/skate/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/skate/bluetooth

# Browser
WITH_JIT := true
HTTP := chrome

# Webkit
ENABLE_WEBGL := false
TARGET_FORCE_CPU_UPLOAD := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_LEGACY_OMX

# Graphics
BOARD_EGL_CFG := device/zte/skate/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT -DQCOM_NO_SECURE_PLAYBACK

# Bootanimation
TARGET_BOOTANIMATION_USE_RGB565 := true

# Fonts
SMALLER_FONT_FOOTPRINT := true

# Camera
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true

# FM Radio
BOARD_USES_STE_FMRADIO := true
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DSTE_FM -DQCOM_FM_ENABLED

# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "recovery"
# mtd1: 00500000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00080000 00020000 "misc"
# mtd4: 00200000 00020000 "cache"
# mtd5: 08a00000 00020000 "system"
# mtd6: 13ba0000 00020000 "userdata"
# mtd7: 00020000 00020000 "oem"
# mtd8: 00180000 00020000 "persist"
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0dc00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a280000
BOARD_FLASH_BLOCK_SIZE := 131072
