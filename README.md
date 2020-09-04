# expressvpnRandomizer


This mini-program is simply a bash script and a crontab command that interacts with the expressvpn-cli to change your vpn server location at a specified time interval.






# Dependencies

~ should work for most linux systems, was made on Ubuntu (version 20.04.1)

~ active expressvpn subscription --> https://www.expressvpn.com/

~ expressvpn cli (version 2.6.3.3) --> https://www.expressvpn.com/support/vpn-setup/app-for-linux/


# Installation
(assuming correct installation of the express app for linux)

1.) Assumes you're already connected to expressvpn; ensure that the returned text shows that auto_connect, network_lock, and desktop_notifications are set to on
    
    $ expressvpn disconnect && expressvpn preferences set network_lock strict && expressvpn autoconnect && expressvpn preferences set desktop_notifications true && expressvpn connect && expressvpn preferences
    

2.) Change the file permissions so that you are able to execute it

    $ chmod 700 /path/to/expressVpnRandomizer.sh

3.) Test the script once on your system before running the crontab, so you can see any errors if there are any.
    
    $ ./path/to/expressVpnRandomizer.sh
    
  
4.) Paste the line from the crontab file into your own system's crontab file (must be the root crontab file)  

    $ sudo crontab -e 
    


.
.
.
.

Done! Unless you edited the crontab line, you would see your location automatically change starting at the next 10 minute interval of an hour.

You can of course change the crontab to a time interval that better suites you --> https://www.tutorialspoint.com/unix_commands/crontab.htm





