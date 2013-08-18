# inherit from the proprietary version
-include vendor/lge/p880/BoardConfigVendor.mk

# Board nameing
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := p880

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_CPU := $(TARGET_CPU_VARIANT)
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# Block Size
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056859750
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13164074762
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_RECOVERY_PRE_COMMAND := "/system/bin/setup-recovery"

# Kernel
TARGET_KERNEL_CONFIG := mokee_x3_defconfig
TARGET_PREBUILT_KERNEL := device/lge/p880/kernel

TARGET_SPECIFIC_HEADER_PATH := device/lge/p880/include

#FB
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_EGL_CFG := device/lge/p880/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_NEEDS_LEGACY_FB := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
BOARD_LEGACY_NL80211_STA_EVENTS := true

# Bootnimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/p880/bluetooth/vnd_bt.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p880/bluetooth

# Hardware
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_USERIMAGES_USE_EXT4 := true

COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR0_CAMERA_BLOB

BOARD_HARDWARE_CLASS := device/lge/p880/cmhw/

## Radio fixes
BOARD_RIL_CLASS := ../../../device/lge/p880/ril/

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/p880/fstab.x3
RECOVERY_FSTAB_VERSION := 2
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p880/recovery-gfx.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/p880/recovery-keys.c

# Changer
BOARD_CHARGER_ENABLE_SUSPEND := true

# SeLinux
ifeq ($(HAVE_SELINUX),true)

BOARD_SEPOLICY_DIRS := \
    device/lge/p880/selinux

BOARD_SEPOLICY_UNION := \
    file_contexts \
    file.te \
    device.te \
    domain.te

endif
