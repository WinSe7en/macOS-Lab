#!/bin/sh

#Configure Power Settings
#Set AC Adapter Settings
pmset -a displaysleep 45 disksleep 60 sleep 0
#Set Battery Settings
pmset -b displaysleep 25 disksleep 30 sleep 60
