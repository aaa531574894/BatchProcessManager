#!/bin/bash
LOG_PATH="/home/sa/sa-center/logs"
START_CSF="/home/sa/sa-center/bin/start_csf.sh"


IP=$1
PORTS=$2



PORTS=${PORTS//','/' '}
PORTS=${PORTS//'['/' '}
PORTS=${PORTS//']'/' '}
for PORT in ${PORTS};do
	echo "`date +%Y-%m-%d_%H:%M:%S`  start_csf ${IP} ${PORT} " >> ${LOG_PATH}/start_stop.log
	PORT=${PORT//'['/' '} 
	PORT=${PORT//']'/' '}
	bash ${START_CSF} ${IP} ${PORT}
done

exit 0
