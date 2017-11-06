
echo 'size =5G type=83' |sudo fdisk /dev/xvdf

(echo n; echo p;echo 2;echo 200; echo w) | sudo fdisk /dev/xvdf
