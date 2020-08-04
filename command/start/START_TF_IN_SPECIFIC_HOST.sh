#!/bin/bash  

hostname=$1
ansible ${hostname}  -m shell -a "/home/sa/sa-center/bin/start_tf_by_code.sh '{{TF_CODES}}'"
