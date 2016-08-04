#!/bin/sh

#Create NTP.CONF File
touch /etc/ntp.conf

#Set timeserver
systemsetup -setnetworktimeserver time.du.edu
