## Sepolicy bug list

- b/37730994: Remove udp_socket requirement from libqdi and have all its
  clients use netlink route sockets.
- b/36644492: Remove data_between_core_and_vendor_violators once tee no longer
  directly accesses /data owned by the frameworks.
- b/36644492: Remove data_between_core_and_vendor_violators once
  hal_fingerprint no longer directly accesses fingerprintd_data_file.
- b/ueventd_vendor: Remove once uevent no longer tries to access
  wifi_vendor_data_file
- b/111219177: Remove symlinks once no need to maintain the backward
  compatibility
- b/77868789: netd tethering: Remove once fixed upstream
- b/867711: webview_zygote: Fix socket call to parent in code
- b/124102550: system_server: Remove once fixed upstream
- b/compatible: Remove all not_compatible_property() macros and update labels
  once all devices use "compatible" props
- b/core-sp-hal: Remove sp-hal file labels once audioserver/cameraserver and
  their associated libs no longer access vendor files
- b/deprecate-old-ipc-router: Remove 4.9 ipc-router compatibility `socket'
  when kernel 4.14 is final. ioctl defines and macros can be removed as well.
- b/aosp-keylayout: Remove once https://r.android.com/1140902 has landed in
  Android R
- b/qcrild: Remove qcrild_exec label and rild domain transition when odm-v5 is
  released
- b/36764215: Remove `firmware_file` compat once 64bit A/B GSIs stop shipping it
