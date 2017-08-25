#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${DIR}/variables.sh"

which -s gobosh && gobosh -v | grep ${VERSION}
