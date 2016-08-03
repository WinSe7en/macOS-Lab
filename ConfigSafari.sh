#!/bin/sh

SafariPlist="/System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari"
# Variables used by this script.
webURL="http://www.du.edu"

if [ "$4" != "" ]; then
    webURL="$4"
fi


#Disable Automatically Open Safe Downloads
echo $SafariPlist
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoOpenSafeDownloads -bool False
#Set homepage
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari HomePage -string $webURL
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari NewWindowBehavior -int 0
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari NewTabBehavior -int 4
#Disable Autofill Passwords
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoFillPasswords -bool False
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoFillCreditCardData -bool False
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoFillFromAddressBook -bool False
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoFillMiscellaneousForms -bool False
#defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari AutoFillFromAddressBook -bool False

defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari DownloadsPath -string "~/Downloads"
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari ExtensionsEnabled -bool False
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.Safari HistoryAgeInDaysLimit -int 1
