## New CoreOS or ZFS release

- Go to https://stable.release.core-os.net/amd64-usr/current/version.txt and get the current stable `COREOS_VERSION`.
- Go to https://github.com/zfsonlinux/zfs/releases and get the latest stable (non-RC) `zfsonlinux`
  version number.
- Update both in `set-vars.sh`.
- Double-check that the version of `zfsonlinux` you intend to use supports the version of the Linux kernel that is
  included in your version of CoreOS.
- Run `docker-build.sh`.
- Run `docker-upload.sh` to upload a new release to `github.com/kelleyk/coreos-zfs`.

- If you're here because `install-zfs.service` failed (e.g. because machines updated to a new CoreOS release), then
  issue `systemctl restart install-zfs.service` on them and proceed!

## Changing repository location

- (There are almost certainly other things to update, but...)
  - Check URL in `systemd/system/zfs-release-upgrade.service`.

## Build requirements

- Versions of CoreOS using the 4.14.11 kernel or later require `libelf-dev` to be installed; otherwise,
  `docker-build.sh` will fail with the error "nable to build an empty module".  (If you look at `config.log` in the
  `spl` source tree, you can see the actual error, which asks to you to install `libelf-dev`.)
