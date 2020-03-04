#!/bin/bash
while ( true );
do
	GST_PID=$(ps auxww|grep gst-launch-1.0|grep -v grep|awk '{print $2}')
	MEM=$(cat  /proc/$GST_PID/statm |awk '{print ($2*4096)/1024}')
	echo $MEM
done
