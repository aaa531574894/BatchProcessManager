#!/bin/bash
echo  please wait...
date=`date +%H:%M:%S`
ansible SACENTER -m shell -a 'cd /home/sa;rm -rf sa-center-shcmcc; tar -xf sa-center-shcmcc-assembly-release.tar'  -f 10 2>&1 |  /home/sa/sacenter/logs/cronolog  /home/sa/sacenter/logs/publish/%Y%m%d/tar_bag_${date}.log
