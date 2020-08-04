#!/bin/bash

ps -ef| grep java | grep SA-PROCESS_CSF| grep -v grep | awk '{print $2}' |while read pid
do
	kill -9 $pid
done
