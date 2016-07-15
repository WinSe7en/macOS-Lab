#!/bin/sh

if [ "$4" != "" ] && [ "$WallpaperName" == "" ]; then
    WallpaperName="$4"
fi
cp $WallpaperName /Library/Desktop\ Pictures/DU_Wallpaper.jpg
mv /System/Library/CoreServices/DefaultDesktop.jpg /System/Library/CoreServices/DefaultDesktop.old.jpg
ln -s /Library/Desktop\ Pictures/DU_Wallpaper.jpg /System/Library/CoreServices/DefaultDesktop.jpg
