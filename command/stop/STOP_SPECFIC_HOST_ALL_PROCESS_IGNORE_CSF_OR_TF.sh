#!/bin/bash
ansible_hostname=$1
ansible  $1 -m shell -a  "/home/sa/sa-center/bin/stop_all_process_ignore_csf_or_tf.sh" -f 5
