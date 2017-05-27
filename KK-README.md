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