#!/bin/bash
playbookDir="/home/sa/shangxian/command/playbooks"

ansible-playbook ${playbookDir}/stop_tykt_sync.yml -f 10
