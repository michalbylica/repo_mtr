#!/bin/bash
if [ $1 = "on" ];then
sudo sh -c "echo 1 > /sys/class/leds/led0/brightness"
elif [ $1 = "off" ];then
sudo sh -c "echo 0 > /sys/class/leds/led0/brightness"
elif [ $1 = "blink" ];then
a=0;
while [ $a -le $2 ];
do sudo sh -c "echo 1 > /sys/class/leds/led0/brightness"
sleep 1
sudo sh -c "echo 0 > /sys/class/leds/led0/brightness"
sleep $3
a=$[a+1]
done
fi
