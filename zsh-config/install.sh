#!/bin/sh

dir=$(cd $(dirname $0); pwd)

copylocation="$HOME/.zshrc"

[ -f $copylocation ] && rm -f $copylocation
cp "$dir/zshrc" $copylocation

cp "$dir/agnoster-duet.zsh-theme" $HOME/.oh-my-zsh/themes/
cp -R "$dir/plugins/" $HOME/.oh-my-zsh/plugins/

touch $HOME/.zprofile
