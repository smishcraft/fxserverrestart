#!/bin/bash
# originally designed for a community that I host but people have asked for it
# Smishcraft Hosting 2018
echo "***********************************************************"
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Starting server restart"
sleep 4
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Stopping server!!!"
pkill screen
sleep 10
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Starting server!!!"
screen -dmS "input what ever here" bash ./run.sh +exec server.cfg
sleep 15
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Server has restarted successfully"