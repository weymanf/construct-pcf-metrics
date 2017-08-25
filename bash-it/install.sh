#!/bin/sh

git clone --quiet --depth=1 https://github.com/Bash-it/bash-it.git $HOME/.bash_it
yes | $HOME/.bash_it/install.sh 1>/dev/null
