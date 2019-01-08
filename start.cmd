:s
	@echo "Starting server..." 
	java -XX:+UseG1GC -XX:+UseFastAccessorMethods -XX:+OptimizeStringConcat -XX:MetaspaceSize=1024m -XX:MaxMetaspaceSize=2048m -XX:+AggressiveOpts -XX:MaxGCPauseMillis=10 -XX:+UseStringDeduplication -Xms2G -Xmx4G -jar forge-1.12.2-14.23.5.2768-universal.jar nogui
	@choice /N /T 10 /D Y /M "Press 'N' in 10 seconds to stop..."
@if NOT ERRORLEVEL 2 goto s