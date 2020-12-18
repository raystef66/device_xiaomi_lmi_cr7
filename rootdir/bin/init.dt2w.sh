#! /system/bin/sh
#dirty fix for double tap to wake sends below command at firstboot 
sendevent /dev/input/event4 0 1 5
