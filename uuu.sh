echo "Enter username"
read username
sudo adduser --force-badname $username
echo "Enter Groupname"
read Groupname
sudo groupadd $Groupname
sudo usermod -a -G $Groupname $username
sudo sh -c "echo \"group ALL=($username) NOPASSWD: ALL\" >> /etc/sudoers"
