udo fdisk /dev/xvdf
n
W
sudo pvcreate /dev/xvdf1
sudo pvcreate /dev/xvdf2
sudo vgcreate vol1 /dev/xvdf1
sudo vgcreate vol1 /dev/xvdf2
sudo lvcreate -L 100M -n lv1 vol1
sudo lvcreate -L 100M -n lv2 vol1
sudo mkfs.ext4 /dev/vol1/lv1
mount -a
Dmesg | cat >logfile

