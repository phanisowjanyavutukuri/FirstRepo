if [ $(dpkg-query -W -f='${Status}' apache 2>/dev/ | grep -c "ok installed") -eq 0 ];
then
 sudo  apt-get install apache2;
fi

