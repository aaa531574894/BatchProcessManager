#!/bin/sh
#######################
#Æ¶¯ÔÐTF½øqianhu@asiainfo.com
#######################

#¿ªʼÆ¶¯TF
IP=$1
PORT=$2


PROCESS_NAME=SA_CENTER_CSF
LOG_NAME=${PROCESS_NAME}_${PORT}
CSF_CLIENT_NAME=csf_client_cust_app_g2
MAIN_PATH=/home/sa/sa-center
JDK_HOME=/home/sa/jdk1.7.0_79
MEM_ARGS="-Xms512m -Xmx3072m   -XX:PermSize=512M"
JAVA_OPTIONS="-Djava.security.egd=file:/dev/../dev/urandom -Dfile.encoding=GBK  -Doracle.jdbc.V8Compatible=true -Duser.timezone=GMT+08"

CONF_PATH=/home/sa/sa-center-shcmcc/conf
LIB_PATH=/home/sa/sa-center-shcmcc/lib

#È־·¾¶
LOG_PATH=${MAIN_PATH}/logs
#Ŀ¼ÏÐҪÓcronolog


CLASSPATH=$CONF_PATH
for filename in $(ls ${LIB_PATH}/*.jar);
do
        CLASSPATH=${CLASSPATH}:${filename};
done

CLASSPATH=${CLASSPATH}:${LIB_PATH}/config

export CLASSPATH



nohup ${JDK_HOME}/bin/java   ${MEM_ARGS}  ${JAVA_OPTIONS} -javaagent:/home/sa/sa-center/agent/log4x-agent.jar  -Dserver.name=${PROCESS_NAME} -Dappframe.server.name=SA-PROCESS_CSF -Dcsf.client.name=${CSF_CLIENT_NAME}  -Dserver.ip=${IP} -Dserver.port=${PORT} com.ai.aif.csf.server.start.CsfStartRemote  2>&1 | ${LOG_PATH}/cronolog  ${LOG_PATH}/%Y%m%d/${LOG_NAME}.log  &
echo  "FINISH."
