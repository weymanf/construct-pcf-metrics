#!/bin/sh

dir=$(cd $(dirname $0); pwd)

cp -f "$dir/com.googlecode.iterm2.plist" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
mkdir -p "$HOME/.config/karabiner"
cp -f "$dir/karabiner.json" "$HOME/.config/karabiner/karabiner.json"

# iTerm2
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Normal Font\" \"InconsolataForPowerline 14\""  ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Merge '$dir/Solarized Dark.itermcolors' :'Custom Color Presets':'Solarized Dark'" ~/Library/Preferences/com.googlecode.iterm2.plist

open /Applications/Docker.app
open /Applications/Screenhero.app
open /Applications/ShiftIt.app
