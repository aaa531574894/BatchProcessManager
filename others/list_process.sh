#!/bin/bash

KEY_WORD="KTCENTER"

ps -ef |grep java |grep SA-PROCESS_CSF |awk -v  var1=$KEY_WORD '
{
    for(i=1;i<=NF;i++)
    {
        if  (index($i,var1)==1)
        {
                print $i
        }
    }
}'


KEY_WORD="com.ai.aif.csf.server.start.CsfStartRemote"
ps -ef |grep java |grep SA-PROCESS_CSF |awk -v  var1=$KEY_WORD '
{
    for(i=1;i<=NF;i++)
    {
        if  (index($i,var1)==1)
        {
                print $i
        }
    }
}'
