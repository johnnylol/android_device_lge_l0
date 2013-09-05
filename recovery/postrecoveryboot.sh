#!/sbin/sh

# Ignore the bootloader's message to wipe data. We dont want to wipe
# every time we launch recovery.
#0x800
#echo -ne "BSP Forever\x00" > /tmp/miscflag
#busybox dd if=/tmp/miscflag bs=1 count=12 of=/dev/block/mmcblk0p13 skip=204

busybox bb if=/dev/zero bs=1 seek=077777777 count=13 conv=nottrunc of=/dev/block/mmcblk0p13
