serverList=`expressvpn list all | awk '{print $1}' | sed '1,2d'`;

serverCount=`echo "$serverList" | wc -l`;

randomServerIndex=`shuf -i 0-"$serverCount" -n 1`;

randomServer=`echo "$serverList" | sed -n "${randomServerIndex}p"`;

execute=`expressvpn disconnect && expressvpn connect "$randomServer"`;

#echo "$serverList";
printf "\n\n\nTOTAL SERVERS: $serverCount\n\n";
printf "RANDOM SERVER INDEX: $randomServerIndex\n\n";
printf "$randomServer\n\n";

echo "$execute";

