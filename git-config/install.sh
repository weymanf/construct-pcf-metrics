#!/bin/sh

dir=$(cd $(dirname $0); pwd)

copylocation="$HOME/.gitconfig"

[ -f $copylocation ] && rm -f $copylocation
cp "$dir/gitconfig" $copylocation