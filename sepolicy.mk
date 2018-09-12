# Sony Open Devices
# SELinux policy variable definitions
LOCAL_SEPOLICY := device/sony/sepolicy

BOARD_SEPOLICY_DIRS += \
    $(LOCAL_SEPOLICY)/vendor

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    $(LOCAL_SEPOLICY)/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(LOCAL_SEPOLICY)/private

# Add sepolicy version to support OS upgrade and backward compatibility
BOARD_SEPOLICY_VERS := \
    $(PLATFORM_SDK_VERSION).0
