#!/bin/sh



#Disable Apple ID Prompt during the first time login
#http://managingosx.wordpress.com/2012/07/26/mountain-lion-suppress-apple-id-icloud-prompt/
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.loginwindow -dict ''
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/loginwindow -dict ''
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.SetupAssistant DidSeeCloudSetup -bool true
defaults write /System/Library/User\ Template/Non_localized/Library/Preferences/com.apple.SetupAssistant LastSeenCloudProductVersion -string '10.9.2'
