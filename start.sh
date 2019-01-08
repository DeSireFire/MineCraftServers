#!/bin/sh
#cd "$(dirname "$(readlink -fn "$0")")"
while true 
do
	echo "Starting server..." 
	java -XX:+UseG1GC -XX:+UseFastAccessorMethods -XX:+OptimizeStringConcat -XX:MetaspaceSize=1024m -XX:MaxMetaspaceSize=2048m -XX:+AggressiveOpts -XX:MaxGCPauseMillis=10 -XX:+UseStringDeduplication -Xms2G -Xmx4G -jar forge-1.12.2-14.23.5.2768-universal.jar nogui
	if read -n1 -t 10 -p "Press any key in 10 seconds to stop..."
	then 
		exit 0  
	fi 
done
