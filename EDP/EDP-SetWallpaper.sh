#!/bin/sh

WallpaperName="Milky Way.jpg"

if [ "$4" != "" ] && [ "$WallpaperName" == "" ]; then
    WallpaperName="$4"
fi

mv /System/Library/CoreServices/DefaultDesktop.jpg /System/Library/CoreServices/DefaultDesktop.old.jpg
ln -s "/Library/Desktop\ Pictures/Milky Way.jpg" /System/Library/CoreServices/DefaultDesktop.jpg
