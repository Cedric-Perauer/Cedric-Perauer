# Fixing Broken PiKVM Web UI

If your PiKVM login page looks broken (strange symbols, misaligned
inputs, missing styles), the web UI files may be corrupted or cached
incorrectly. Here's how to fix it.

------------------------------------------------------------------------

## 1. SSH into PiKVM

From another machine:

``` bash
ssh root@<pikvm-ip>
```

Default user is `root` (unless changed).

------------------------------------------------------------------------

## 2. Update the system

``` bash
rw
pacman -Syu
```

-   `rw` → make filesystem writable\
-   `pacman -Syu` → update all packages (including PiKVM ones)

------------------------------------------------------------------------

## 3. Reinstall PiKVM Web/UI Packages

Depending on your PiKVM model (v2, v3, CM4), reinstall the relevant
packages.

### Common (v2 example)

``` bash
pacman -S kvmd kvmd-webterm kvmd-platform-v2-hdmi
```

### Find your platform package

``` bash
pacman -Ss kvmd-platform
```

This will list packages like `kvmd-platform-v3-hdmi` or
`kvmd-platform-cm4`. Install the one that matches your hardware.

------------------------------------------------------------------------

## 4. Restart the PiKVM service

``` bash
systemctl restart kvmd
```

------------------------------------------------------------------------

## 5. Make filesystem read-only again (recommended)

``` bash
ro
```

------------------------------------------------------------------------

## Notes

-   If the UI is still broken, try clearing your browser cache or using
    incognito mode.\
-   If the filesystem is corrupted or packages fail to reinstall,
    reflashing the PiKVM OS image may be required.
