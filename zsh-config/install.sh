#!/bin/sh

dir=$(cd $(dirname $0); pwd)

copylocation="$HOME/.zshrc"

[ -f $copylocation ] && rm -f $copylocation
cp "$dir/zshrc" $copylocation

touch $HOME/.zprofile

cp "$dir/agnoster-duet.zsh-theme" $HOME/.oh-my-zsh/themes/
