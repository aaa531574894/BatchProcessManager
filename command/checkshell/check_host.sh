#/bin/bash
date=`date +%H:%M:%S`
ansible SACENTER -m shell -a 'hostname' 2>&1  -f 20| /home/sa/sacenter/logs/cronolog  /home/sa/sacenter/logs/check/${date}_check_host.log
more /home/sa/sacenter/logs/check/${date}_check_host.log |grep UN


ansible DEPLOY -m shell -a 'hostname -i' | grep UN
