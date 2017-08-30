#!/bin/sh

dir=$(cd $(dirname $0); pwd)

cp -f "$dir/com.googlecode.iterm2.plist" "$HOME/Library/Preferences/com.googlecode.iterm2.plist"
