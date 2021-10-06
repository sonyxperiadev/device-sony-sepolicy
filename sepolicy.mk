# Sony Open Devices
# SELinux policy variable definitions
LOCAL_SEPOLICY := device/sony/sepolicy

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(LOCAL_SEPOLICY)/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(LOCAL_SEPOLICY)/system_ext/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(LOCAL_SEPOLICY)/system_ext/public
