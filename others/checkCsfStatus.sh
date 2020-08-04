#!/bin/bash




PORTS=$1
IP=$2

PORTS=${PORTS//','/' '}
PORTS=($PORTS)
EXPECT_COUNT=${#PORTS[@]} 
count=`ps -ef|grep java|grep -v grep |grep  SA_CENTER_CSF |wc -l`

if [ ${count} -eq ${EXPECT_COUNT} ]
then
	echo    ----CSF  CHECK OUT PASS !!      ${IP}  EXPECT_COUNT:${EXPECT_COUNT}       IN_FACT_COUNT:${count}
else 
	echo    ----CSF  CHECK OUT UNPASS !!  ${IP}   EXPECT_COUNT:${EXPECT_COUNT}       IN_FACT_COUNT:${count} 
fi
