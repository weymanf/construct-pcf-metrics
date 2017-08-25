#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${DIR}/variables.sh"

curl -L https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-${VERSION}-darwin-amd64 > goboshcli
chmod +x goboshcli
mv goboshcli /usr/local/bin/gobosh
ln -s /u:sr/local/bin/gobosh /usr/local/bin/bosh
