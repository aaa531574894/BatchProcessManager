#!/bin/bash



TF_CODES=$1

TF_CODES=${TF_CODES//';'/'  '}
for CODE_SEG in ${TF_CODES};do
        CODE_SEG=${CODE_SEG//'|'/'  '}
        ARRAY=(${CODE_SEG})
        CODE=${ARRAY[0]}
        SEG=${ARRAY[1]}

        MOD_VALS=${SEG//','/' '}
        for MOD_VAL in ${MOD_VALS};do
		
		count=`ps -ef| grep java |grep "${CODE}:${MOD_VAL}"| grep -v grep |wc -l`
		if [ ${count} -eq 1 ]
        	then
                	echo ${CODE}:${MOD_VAL} ---- CHECK OUT PASS!    IN_FACT_COUNT: ${count}
        	else
                	echo ${CODE}:${MOD_VAL} ---- CHECK OUT UNPASS!  IN_FACT_COUNT: ${count}
        	fi
        done

done

exit 0

