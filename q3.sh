service apache2 status
ps cax | grep httpd
if [ $? -eq 0 ]; then
echo 'sowjanya'
 echo "Process is running."
if ! pidof apache2 > /dev/null
then
    mailx -s "Apache web server  is down, Trying auto-restart"

    # web server down, restart the server
    sudo /etc/init.d/apache2 restart > /dev/null
    sleep 10

    #checking if apache restarted or not
    if pidof apache2 > /dev/null
    then
        message="Apache restarted successfully"
    else
        message="Restart Failed, try restarting manually"
    fi
 cax | grep httpd
fi
fi
