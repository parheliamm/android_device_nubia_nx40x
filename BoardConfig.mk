USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/nubia/NX501/BoardConfigVendor.mk

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_SPECIFIC_HEADER_PATH := device/nubia/NX501/include

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP

# Kernel source
TARGET_KERNEL_CONFIG := Z5_defconfig
#TARGET_KERNEL_CONFIG := Z5mini_defconfig
TARGET_KERNEL_SOURCE := kernel/nubia/NX501

# Architecture
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_VARIANT := krait

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_NAME := NX501
TARGET_BOOTLOADER_BOARD_NAME := NX501
TARGET_BOARD_INFO_FILE := device/nubia/NX501/board-info.txt

# Others
BOARD_USES_SECURE_SERVICES := true
BOARD_LIB_DUMPSTATE := libdumpstate.NX501
TARGET_ADDITIONAL_BOOTCLASSPATH := qcmediaplayer:WfdCommon:qcom.fmradio
BOARD_EGL_CFG := device/nubia/NX501/configs/egl.cfg

# Kernel 
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=4 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 15728640 # 15M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640 # 15M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 # 2G
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2859941888 # 2.66G
BOARD_FLASH_BLOCK_SIZE := 131072

# Caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT   := caf
TARGET_QCOM_AUDIO_VARIANT   := caf

# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# GPS
BOARD_HAVE_NEW_QC_GPS := true

# Audio
BOARD_HAVE_NEW_QCOM_CSDCLIENT := true
TARGET_USES_QCOM_MM_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_USES_ALSA_AUDIO:= true
BOARD_HAVE_LOW_LATENCY_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
# maxwen: this is actually only needed because
# of a bug in audio-caf when BOARD_USES_FLUENCE_INCALL := true
# to enter the default else path
BOARD_USES_SEPERATED_AUDIO_INPUT := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true

# Display
#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITION := true

# Camera
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DDISABLE_HW_ID_MATCH_CHECK -DQCOM_BSP_CAMERA_ABI_HACK

#QC Time
#BOARD_USES_QC_TIME_SERVICES := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# FIXME: HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_MODULE_NAME := wlan
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/nubia/NX501/bluetooth

# RIL class
#BOARD_RIL_CLASS := ../../../device/nubia/NX501/telephony-common/

#TARGET_NO_RECOVERY := true
# CWM Recovery
TARGET_RECOVERY_FSTAB := device/nubia/NX501/rootdir/fstab.qcom
RECOVERY_FSTAB_VERSION := 2
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BORAD_REC_LANG_CHINESE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_INITRC := device/nubia/NX501/recovery/init.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/nubia/NX501/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

# TWRP Recovery
DEVICE_RESOLUTION := 720x1280
#RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := false
TWRP_EVENT_LOGGING := false
RECOVERY_GRAPHICS_USE_LINELENGTH := true

BOARD_SEPOLICY_DIRS += \
    device/nubia/NX501/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    te_macros \
    bluetooth_loader.te \
    bridge.te \
    camera.te \
    device.te \
    dhcp.te \
    domain.te \
    drmserver.te \
    file.te \
    kickstart.te \
    init.te \
    mediaserver.te \
    mpdecision.te \
    netmgrd.te \
    property.te \
    qmux.te \
    rild.te \
    rmt.te \
    surfaceflinger.te \
    system.te \
    tee.te \
    thermald.te \
    ueventd.te \
    wpa_supplicant.te
