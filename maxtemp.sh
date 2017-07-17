#!/bin/bash

TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
while true
do
TEMP1=$(cat /sys/class/thermal/thermal_zone0/temp)
if [ $TEMP1 -gt $TEMP ]
then
 TEMP=$TEMP1
 echo $TEMP
fi
sleep 1
done
