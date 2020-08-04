#!/bin/bash

ansible $1 -m shell -a "/home/sa/sa-center/bin/list_process.sh"   -f 10
