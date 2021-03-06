# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DLGE_MSM8960

# Include path
#TARGET_SPECIFIC_HEADER_PATH := device/lge/l0/include

# Kernel
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=l0 lpj=676678
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x81500000

TARGET_PREBUILT_KERNEL := device/lge/l0/kernel
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)

TARGET_KERNEL_CONFIG := l0-perf_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

# Platform
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_PRODUCT := l0_MPCS_US

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_QCOM_DISPLAY_VARIANT := caf
BOARD_EGL_NEEDS_LEGACY_FB := true

# Linaro Optimization
TARGET_USE_O3 := true
TARGET_USE_GRAPHITE := true
TARGET_USE_LINARO_STRING_ROUTINES := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ROTATOR_KERNEL_FORMATS
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/lge/l0/prebuilt/lib/egl/egl.cfg

# PMEM compatibility
BOARD_NEEDS_MEMORYHEAPPMEM := true

# ICS proprietary blob compatibility
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# Audio
TARGET_QCOM_AUDIO_VARIANT := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true
TARGET_USES_ION_AUDIO := true

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/l0/bluetooth

# Wifi
BOARD_HAS_QCOM_WLAN 			 := true
BOARD_WLAN_DEVICE 				 := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER 	 := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER 			 := NL80211
BOARD_HOSTAPD_PRIVATE_LIB 		 := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP 			 := "ap"
WIFI_DRIVER_FW_PATH_STA 		 := "sta"
WIFI_DRIVER_MODULE_NAME 		 := wlan
WIFI_DRIVER_MODULE_PATH 		 := "/system/lib/modules/wlan.ko"
WPA_SUPPLICANT_VERSION 			 := VER_0_8_X

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/l0/recovery/fstab.l0
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_7x16.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
ENABLE_LOKI_RECOVERY := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1744829440
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 97

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/lge/l0/releasetools/l0_ota_from_target_files

# Loki
#TARGET_RELEASETOOLS_EXTENSIONS := device/lge/msm8960-common/loki
