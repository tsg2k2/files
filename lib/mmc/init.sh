#!/bin/ash
data_mmcblk=$(grep -rn PARTNAME /sys/block/mmcblk0 | grep -w data | cut -d '/' -f 5)
mkdir -p /mnt/data
cryptsetup --key-file=/lib/mmc/data_key luksOpen /dev/$data_mmcblk data
mount /dev/mapper/data /mnt/data
