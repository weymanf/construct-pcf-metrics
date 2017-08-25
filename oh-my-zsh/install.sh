#!/bin/sh

installscript="$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | cat | grep -v "env zsh")"
sh -c "$installscript"
