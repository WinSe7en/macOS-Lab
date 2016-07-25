#!/bin/sh
##
#   Writing out launchd item to disable the iCloud login wizard every time the os version is increased/patched.
##

echo "
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.markIcloudComplete.plist</string>
    <key>LaunchOnlyOnce</key>
    <true/>
    <key>RunAtLoad</key>
    <true/>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/local/bin/markIcloudComplete.sh</string>
    </array>
</dict>
</plist>
" > /Library/LaunchDaemons/com.markIcloudComplete.plist
chmod 644 /Library/LaunchDaemons/com.markIcloudComplete.plist

echo "
##
# Disabling icloud preferences wizard on logins for current os revision.
##

# Setting this variable, "field splitting" makes sure each line is considered as such, even with spaces in them.
#  Otherwise spaces are considered splitters.  Here we are specifying "\n"(page break) is the only splitter.
IFS=\$'\\\n'

osVer=\`sw_vers -productVersion\`

markerFile=\"/var/log/icloudDone\$osVer\"

if [ ! -e \$markerFile ];
then
    echo Disabling iCloud login wizard for OS X \$osVer
    for i in \`ls -d /System/Library/User\ Template/*\`;
    do

        defaults write \"\$i/Library/Preferences/com.apple.SetupAssistant.plist\" LastSeenCloudProductVersion -string \$osVer
        defaults write \"\$i/Library/Preferences/com.apple.SetupAssistant.plist\" DidSeeCloudSetup -bool true
        defaults write \"\$i/Library/Preferences/com.apple.SetupAssistant.plist\" DidSeeSyncSetup -bool true
        defaults write \"\$i/Library/Preferences/com.apple.SetupAssistant.plist\" DidSeeSyncSetup2 -bool true
    done

    a=\`ls -d /Users/*\`
    for userfolder in \$a
    do
        if [ \"\$userfolder\" != \"/Users/Shared\" ];
        then
            defaults write \"\$userfolder/Library/Preferences/com.apple.SetupAssistant.plist\" LastSeenCloudProductVersion -string \$osVer
            defaults write \"\$userfolder/Library/Preferences/com.apple.SetupAssistant.plist\" DidSeeCloudSetup -bool true
            defaults write \"\$userfolder/Library/Preferences/com.apple.SetupAssistant.plist\" DidSeeSyncSetup -bool true
            defaults write \"\$userfolder/Library/Preferences/com.apple.SetupAssistant.plist\" DidSeeSyncSetup2 -bool true
            chmod 666 \"\$userfolder/Library/Preferences/com.apple.SetupAssistant.plist\"
        fi
    done
    touch \$markerFile
fi
" > /usr/local/bin/markIcloudComplete.sh
chmod +x /usr/local/bin/markIcloudComplete.sh
