#!/bin/bash
LOG_PATH="/home/sa/sa-center/logs"
START_TF="/home/sa/sa-center/bin/start_tf.sh"


TF_CODES=$1

TF_CODES=${TF_CODES//';'/'  '}
for CODE_SEG in ${TF_CODES};do
        CODE_SEG=${CODE_SEG//'|'/'  '}
        ARRAY=(${CODE_SEG})
        CODE=${ARRAY[0]}
        SEG=${ARRAY[1]}

        MOD_VALS=${SEG//','/' '}
        for MOD_VAL in ${MOD_VALS};do
		temp_count=`ps -ef| grep java |grep "${CODE}:${MOD_VAL}"| grep -v grep |wc -l`
		if [ ${temp_count} -eq 0 ]
		then
			echo "`date +%Y-%m-%d_%H:%M:%S`  start_tf ${CODE} ${MOD_VAL} " >> ${LOG_PATH}/start_stop.log
        	        ${START_TF} ${CODE} ${MOD_VAL}
		fi
        done

done



exit 0
