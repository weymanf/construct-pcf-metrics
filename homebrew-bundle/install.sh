#!/bin/sh

brew tap homebrew/bundle

cd $(dirname $0)
export HOMEBREW_BUNDLE_RUNNING=1

brew bundle
