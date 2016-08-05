#!/bin/sh

WallpaperName="Milky Way.jpg"

mv /Volumes/Macintosh\ HD/Library/Desktop\ Pictures/El\ Capitan.jpg /Library/Desktop\ Pictures/El\ Capitan\ 3.jpg
cp /Volumes/Macintosh\ HD/Library/Desktop\ Pictures/Milky\ Way.jpg /Library/Desktop\ Pictures/El\ Capitan.jpg

rm /Volumes/Macintosh\ HD/Library/Caches/com.apple.desktop.admin.png 

sips -s format png /Volumes/Macintosh\ HD/Library/Desktop\ Pictures/Milky\ Way.jpg --out /Volumes/Macintosh\ HD/Library/Caches/com.apple.desktop.admin.png
#mv /System/Library/CoreServices/DefaultDesktop.jpg /System/Library/CoreServices/DefaultDesktop.old.jpg
#ln -s "/Library/Desktop\ Pictures/Milky Way.jpg" /System/Library/CoreServices/DefaultDesktop.jpg
