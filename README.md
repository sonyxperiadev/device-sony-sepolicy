# sepolicy for SODP

This sepolicy is suitable for SODP supported devices when building on AOSP. Where
possible, we follow the structure, style, and naming conventions found in the sepolicy
written for Google devices. The current best comparison is the `wahoo` sepolicy.

When submitting patches please include the following in the commit message:

1. The AVC denial you wish to resolve
2. Why you think this is the correct sepolicy
3. Steps to reproduce the denial
4. Ping @AdFad666 for review.

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
4. `typeattribute` violation declarations
5. `binder_use()` and equivalents
6. `binder_call()` and equivalents
7. `add_service()` and equivalents, `hal_server_domain()`
7. File permissions
8. `dontaudit`
