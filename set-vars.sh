export INSTALL_MOD_PATH=/usr/share/oem/zfs
export OEM_PATH=/usr/share/oem/zfs
export BIN_DIR=/usr/share/oem/zfs/bin
export LIB_DIR=/usr/share/oem/zfs/lib64
export SBIN_DIR=/usr/share/oem/zfs/sbin
export SYSTEMD_DIR=/etc/systemd
export UDEV_DIR=/etc/udev
export MODULES_LOAD_DIR=/etc/modules-load.d
export DEFAULT_FILE=/etc/default/zfs
export SYSTCONF_DIR=/etc/zfs

# -----

export GITHUB_RELEASE_URL="https://github.com/aktau/github-release/releases/download/v0.6.2/linux-amd64-github-release.tar.bz2"
export RELEASE_IS_PRERELEASE=""

export GITHUB_USER=kelleyk
export GITHUB_REPO=coreos-zfs
export GITHUB_TOKEN=cc56a97b67b0885636210eb10d5048f99e297a2f

# -----

# build.sh is not smart enough to detect COREOS_RELEASE from this; it uses the `current` symlink provided by the CoreOS release archive.
# That means that your build artifact will be in 'artifacts/current' instead of being marked with a version number like it should be.
# We could use `https://stable.release.core-os.net/amd64-usr/current/version.txt` to work around this in the future.
export COREOS_CHANNEL=stable
export COREOS_RELEASE=1298.5.0
export ZFS_VERSION=0.6.5.9

export TRACE=y
