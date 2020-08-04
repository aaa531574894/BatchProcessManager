#!/bin/bash
roll_version=$1
if [ "" == "$roll_version" ]
then
	echo expect  a old version as param
	exit -1
fi

reback_date=`date +%Y%m%d`
echo '----------------switch version--------------------------------'
sleep 2s
echo 'sa-center-shcmcc-assembly-release.tar -------------> sa-center-shcmcc-assembly-release.tar_reback_'${reback_date}
mv /home/sa/deploy/data/patch/ktcenter/sa-center-shcmcc-assembly-release.tar /home/sa/deploy/data/patch/ktcenter/sa-center-shcmcc-assembly-release.tar_reback_${reback_date}

echo 'sa-center-shcmcc-assembly-release.tar_'${roll_version}'---------------->sa-center-shcmcc-assembly-release.tar'
mv /home/sa/deploy/data/patch/ktcenter/sa-center-shcmcc-assembly-release.tar_${roll_version} /home/sa/deploy/data/patch/ktcenter/sa-center-shcmcc-assembly-release.tar

echo '------------------start to publish package again----------------------'
/home/sa/sacenter/command/pubpackage/publish_bag.sh;
