#!/bin/sh

SafariPlist="/System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari"
# Variables used by this script.
webURL="http://www.du.edu"

if [ "$4" != "" ]; then
    webURL="$4"
fi


#Disable Automatically Open Safe Downloads
defaults write $SafariPlist AutoOpenSafeDownloads -bool False
#Set homepage
defaults write $SafariPlist HomePage -string $webURL
defaults write $SafariPlist NewWindowBehavior -int 0
defaults write $SafariPlist NewTabBehavior -int 4
#Disable Autofill Passwords
defaults write $SafariPlist AutoFillPasswords -bool False
defaults write $SafariPlist AutoFillCreditCardData -bool False
defaults write $SafariPlist AutoFillFromAddressBook -bool False
defaults write $SafariPlist AutoFillMiscellaneousForms -bool False
#defaults write $SafariPlist AutoFillFromAddressBook -bool False

defaults write $SafariPlist DownloadsPath -string "~/Downloads"
defaults write $SafariPlist ExtensionsEnabled -bool False
defaults write $SafariPlist HistoryAgeInDaysLimit -int 1
