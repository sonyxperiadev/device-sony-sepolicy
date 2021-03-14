# Sony Open Devices
# SELinux policy variable definitions
LOCAL_SEPOLICY := device/sony/sepolicy

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(LOCAL_SEPOLICY)/vendor

# TODO(b/systemext-policy): Will be renamed to:
# - SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS
# - SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS
# once Android S lands and throw a warning/error
# See https://r.android.com/q/topic:board-system-ext-sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(LOCAL_SEPOLICY)/system_ext/private

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    $(LOCAL_SEPOLICY)/system_ext/public
