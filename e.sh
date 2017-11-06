
   (echo -e "o\nn\np\n1\n\n\nw\\nn\np\n1\n\n\nw" )| sudo fdisk /dev/xvdf
   sudo partprobe /dev/xvdf
   sudo pvcreate /dev/xvdf2
   sudo pvcreate /dev/xvdf1
   sudo vgcreate vg1 /dev/xvdf1
   sudo vgcreate vg1 /dev/xvdf2
   sudo lvcreate -L 100M -n lv1 vg1
   sudo lvcreate -L 100M -n lv2 vg1
   sudo mkfs.ext4 /dev/vg1/lv1
   vim etc/fstab
   enter the entry with /dev/vg1/lv1 
   mount -a
   sudo Dmesg > LogHistory
