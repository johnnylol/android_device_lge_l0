#!/sbin/sh

## Fix wtfe LG has aboot doing on reboot recovery
mke2fs -t ext4 /dev/block/platform/msm_sdcc.1/by-name/userdata

