# expressvpnRandomizer


This mini-program is a script and a crontab command that interacts with the expressvpn-cli to change your vpn server location at a specified time interval.






# Dependencies

~ should work for most linux systems, was made on Ubuntu (version 20.04.1)

~ active expressvpn subscription --> https://www.expressvpn.com/

~ expressvpn cli (version 2.6.3.3) --> https://www.expressvpn.com/support/vpn-setup/app-for-linux/


# Installation
(assuming correct installation of the express app for linux)

1.) expressvpn disconnect && expressvpn preferences set network_lock strict && expressvpn autoconnect && expressvpn preferences set desktop_notifications true && expressvpn connect && expressvpn preferences
    #assumes you're connected to express already, ensure that the returned text shows auto_connect, network_lock, and desktop_notifications are set to on

2.) chmod 700 /path/to/expressVpnRandomizer.sh

3.) ./path/to/expressVpnRandomizer.sh   #test the script once your system so you can see any errors, before running the crontab
  
4.) sudo crontab -e   #paste the line from the crontab file into your system's crontab file (must be the root crontab file)

5.) Done! If the crontab line was not edited, you would see your location automatically change starting at the next 10 minute interval of an hour.


.
.
.
.

You can of course change the crontab to a time interval that better suites you --> https://www.tutorialspoint.com/unix_commands/crontab.htm





