#!/bin/bash
date=`date +%Y%m%d`
echo '------------bak up---------------'
cd /home/sa/deploy/data/patch/ktcenter/;
mv sa-center-shcmcc-assembly-relase.tar sa-center-shcmcc-assembly-release.tar_${date}
echo '------------bak success----------'
cd -;

sleep 1s

echo '-----------get bag---------------'
ansible DEPLOY -m fetch -a "src=/data/patch/ktcenter/sa-center-shcmcc-assembly-release.tar  dest=/home/sa/deploy/data/patch/ktcenter"
echo '-----------get bag success-------'
