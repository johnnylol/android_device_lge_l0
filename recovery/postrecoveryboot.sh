#!/sbin/sh

## Fix wtfe LG has aboot doing on reboot recovery
mke2fs -t ext4 /dev/block/platform/msm_sdcc.1/by-name/userdata

# Zero out wipe data command
#dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/misc seek=64 count=24 bs=1

