echo 'size=5G type=83'| sudo fdisk /dev/xvdf
sudo pvcreate /dev/xvdf1
echo 'size=5G type=83'|sudo fdisk /dev/xvdf
sudo pvcreate /dev/xvdf2
