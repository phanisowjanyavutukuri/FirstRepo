#(echo n; echo p; echo 1G ;  echo w) | sudo fdisk /dev/xvdf |
(echo n; echo p; echo ; echo ; echo +2G; echo n; echo p; echo ; echo; echo +2G;echo w) | sudo fdisk /dev/xvdf 
partprobe /dev/xvdf
pvcreate /dev/xvdf1 /dev/xvdf2 
vgcreate vg1 /dev/xvdf1 /dev/xvdf2
lvcreate -L 10M -n lv1 vg1
mkdir mount
mkfs.ext4 /dev/vg1/lv1
mount -a /dev/vg1/lv1 /home/ubuntu/mount
dmesg |cat >log 
