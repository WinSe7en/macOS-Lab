#!/bin/sh

#Create NTP.CONF File
touch /etc/ntp.conf

#Set timeserver
/usr/sbin/systemsetup -setnetworktimeserver time.du.edu
/usr/sbin/systemsetup -setusingnetworktime on
