#!/bin/sh
#####################################################################################################
#
# ABOUT THIS PROGRAM
#
# NAME
#	ConfigSafari.sh -- Setup Safari
#
# SYNOPSIS
#	sudo ConfigSafari.sh
#
# DESCRIPTION
#	
#
#
####################################################################################################
#
# HISTORY
#
#	Version: 1.0
#
#
####################################################################################################
#
# DEFINE VARIABLES & READ IN PARAMETERS
#
#####################################################################################################
#
# HARDCODED VALUES SET HERE
#
# Variables set by Casper - To manually override, remove the comment for the given variable
# targetDrive=""  # Casper will pass this parameter as "Target Drive" if left commented out
# computerName=""  # Casper will pass this parameter as "Computer Name" if left commented out
# userName=""  # Casper will pass this parameter as "User Name" if left commented out. Usernames
#				   can only be passed if the script is triggered at login, logout, or by Self Service
####################################################################################################

#Disable Automatically Open Safe Downloads
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoOpenSafeDownloads -bool False
#Set homepage
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari HomePage -string "http://www.du.edu"
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari NewWindowBehavior -int 0
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari NewTabBehavior -int 4
#Disable Autofill Passwords
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoFillPasswords -bool False
