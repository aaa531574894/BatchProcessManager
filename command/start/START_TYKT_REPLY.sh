#!/bin/bash
playbookDir="/home/sa/shangxian/command/playbooks"

ansible-playbook ${playbookDir}/start_tykt_reply.yml -f 10
