echo 'size=5G Type =83'|sudo fdisk /dev/xvdf
echo 'size=5G Type=83'|sudo fdisk /dev/xvdf
sudo partprobe /dev/xvdf 
sudo pvcreate /dev/xvdf1
sudo pvcreate /dev/xvdf2

