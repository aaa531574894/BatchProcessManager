#!/bin/bash
playbookDir="/home/sa/shangxian/command/playbooks"

ansible-playbook ${playbookDir}/stop_rocket_pboss.yml -f 10
