# sepolicy for SODP

This sepolicy is suitable for SODP supported devices when building on AOSP. Where
possible, we follow the structure, style, and naming conventions found in the sepolicy
written for Google devices.

When submitting patches please include the following in the commit message:

1. The AVC denial you wish to resolve
2. Why you think this is the correct sepolicy
3. Steps to reproduce the denial

Failure to include the above may result in your patch being rejected.

This sepolicy also requires device specific `file_contexts` and `genfs_contexts`
that can be found in each platform's git repository.

# License
See `LICENSE.md`.

# Formatting Tips

**General**

- Group declarations of the same type together
- When adding file permissions, first the `dir` line, then the `file` line
- Use macros whenever possible
  (look for `te_macros`, `global_macros` in `system/sepolicy/public/`)

**Recommended Order**

1. Documentation, if any
2. `domain`, `mydomain_exec`
3. `init_daemon_domain` or `app_domain`
3. `hal_server_domain()` and equivalents
5. `typeattribute` violation declarations
6. `binder_use()` and equivalents
7. `binder_call()` and equivalents
8. `add_service()` and equivalents
9. Miscellaneous things like `wakelock_use()` and `capability`
10. `get/set_prop()`
11. `unix_socket_connect()` and other socket stuff
12. `device` access
13. File permissions, ioctl
14. `kernel` and module requests
15. `dontaudit`
