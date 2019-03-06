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
- b/vndswitch: Remove once per_mgr uses vendor binder and per_mgr_service is a
  vndservice_manager_type
- b/77868789: netd tethering: Remove once fixed upstream
- b/867711: webview_zygote: Fix socket call to parent in code
- b/124102550: system_server: Remove once fixed upstream
