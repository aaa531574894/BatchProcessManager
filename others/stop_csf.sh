#!/bin/bash

### eg : PORTS="31001,31002,31003"
PORTS=$1

PORTS=${PORTS//','/' '}
PORTS=($PORTS)
EXPECT_COUNT=${#PORTS[@]} 
count=`ps -ef|grep java|grep -v grep |grep  SA_CENTER_CSF |wc -l`


ps -ef| grep java |grep SA_CENTER_CSF| grep -v grep | awk '{print $2}' |while read pid
do
	kill -9 $pid
	echo "`date +%Y-%m-%d_%H:%M:%S`  stop_all_csf  " >> ${LOG_PATH}/start_stop.log
done
