mkdir -p /mnt/data
data_mmcblk=$(grep -rn PARTNAME sys/block/mmcblk0 | grep -w data | cut -d '/' -f 4)
cryptsetup --key-file=/lib/mmc/data_key luksOpen /dev/$data_mmcblk data 2>&1 /dev/console



