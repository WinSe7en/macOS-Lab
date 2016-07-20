#!/bin/sh


# Variables used by this script.
webURL="http://www.du.edu"

if [ "$4" != "" ] && [ "$webURL" == "" ]; then
    webURL="$4"
fi


#Disable Automatically Open Safe Downloads
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoOpenSafeDownloads -bool False
#Set homepage
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari HomePage -string $webURL
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari NewWindowBehavior -int 0
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari NewTabBehavior -int 4
#Disable Autofill Passwords
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoFillPasswords -bool False
