(echo n
  echo p
  echo 
  echo 
  echo +2G
  echo n
  echo p
  echo
  echo 
  echo +2G
  echo w) | sudo fdisk /dev/xvdf
sudo pvcreate /dev/xvdf1
sudo pvcreate /dev/xvdf2
sudo vgcreate Vgroup1 /dev/xvdf1
 sudo vgextend Vgroup1 /dev/xvdf2
 sudo lvcreate -L 300M -n Vgroup1 Lvol1
sudo lvcreate -L 600M -n Vgroup1 Lvol2
sudo mkfs.ext4 /dev/Vgroup1/Lvol1
echo “ /dev/xvdf1 dir1 ext4 defaults  0 0” |sudo cat >> /etc/fstab
mount -a
