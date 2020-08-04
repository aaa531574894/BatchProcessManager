#!/bin/bash
ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/checkCsfStatus.sh dest=/home/sa/sa-center/bin" -f 20
ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/checkTFStatus.sh dest=/home/sa/sa-center/bin" -f 20
ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/start_csf_by_ports.sh dest=/home/sa/sa-center/bin" -f 20
ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/start_csf.sh dest=/home/sa/sa-center/bin" -f 20
ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/start_tf_by_code.sh dest=/home/sa/sa-center/bin" -f 20
ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/start_tf.sh dest=/home/sa/sa-center/bin" -f 20
ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/stop_csf.sh dest=/home/sa/sa-center/bin" -f 20
ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/stop_tf.sh dest=/home/sa/sa-center/bin" -f 20
ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/stop_all_process_ignore_csf_or_tf.sh  dest=/home/sa/sa-center/bin" -f 20

ansible SACENTER -m copy -a "src=/home/sa/shangxian/others/list_process.sh  dest=/home/sa/sa-center/bin" -f 20
