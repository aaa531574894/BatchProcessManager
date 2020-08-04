#!/bin/bash
bag_path=/home/sa/deploy/data/patch/ktcenter/sa-center-shcmcc-assembly-release.tar
dir=`date +%Y%m%d`
date=`date +%H:%M:%S`
bag=send_log_${date}
echo '-------send package start----------'
sleep 2s
echo ' ansible SACENTER -m copy -a 'src=/home/sa/deploy/data/patch/ktcenter/sa-center-shcmcc-assembly-release.tar dest=/home/sa/sa-center-shcmcc-assembly-release.tar' 2>&1 | /home/sa/sacenter/logs/cronolog  /home/sa/sacenter/logs/publish/%Y%m%d/${bag}.log '

ansible SACENTER -m copy -a 'src=/home/sa/deploy/data/patch/ktcenter/sa-center-shcmcc-assembly-release.tar dest=/home/sa/' -f 10 2>&1 | /home/sa/sacenter/logs/cronolog  /home/sa/sacenter/logs/publish/%Y%m%d/${bag}.log 

echo '-------check success or fail-------'
more /home/sa/sacenter/logs/publish/${dir}/${bag}.log |grep UN
echo '-------end check-------------------'

echo '-------finished send---------------'

