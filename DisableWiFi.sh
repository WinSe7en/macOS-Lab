#!/bin/sh

#Created by Matt Johnson
#Date Created: 7/20/2016
#This script disables Wifi and prevents it from turning on without Admin privileges.
#http://www.techrepublic.com/article/pro-tip-manage-wi-fi-with-terminal-commands-on-os-x/

$airport = "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

$airport prefs RequireAdminIBSS=YES
$airport prefs RequireAdminPowerToggle=YES
$airport prefs RequireAdminNetworkChange=YES

networksetup -setairportpower en0 off
