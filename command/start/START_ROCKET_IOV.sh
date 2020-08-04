#!/bin/bash
playbookDir="/home/sa/shangxian/command/playbooks"

ansible-playbook ${playbookDir}/start_rocket_iov.yml -f 10
