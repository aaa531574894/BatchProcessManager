#!/bin/bash
LOG_PATH="/home/sa/sa-center/logs"

## eg: TF_CODES="KTCENTER_IOV_SYNC_200|2:0-0,1-1;KTCENTER_IOV_SYNC_201|1:0-0"
TF_CODES=$1

TF_CODES=${TF_CODES//';'/'  '}
for CODE_SEG in ${TF_CODES};do
        CODE_SEG=${CODE_SEG//'|'/'  '}
        ARRAY=(${CODE_SEG})
        CODE=${ARRAY[0]}
        SEG=${ARRAY[1]}

        MOD_VALS=${SEG//','/' '}
        for MOD_VAL in ${MOD_VALS};do
		ps -ef| grep java |grep "${CODE}:${MOD_VAL}"| grep -v grep | awk '{print $2}' |while read pid
		do
        		kill -9 $pid
                	echo "`date +%Y-%m-%d_%H:%M:%S`  stop_tf ${CODE}:${MOD_VAL} " >> ${LOG_PATH}/start_stop.log
		done
        done

done



exit 0
