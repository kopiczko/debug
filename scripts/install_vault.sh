#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

VAULT_VER="1.9.3"

curl https://releases.hashicorp.com/vault/${VAULT_VER}/vault_${VAULT_VER}_linux_amd64.zip -o /tmp/vault.zip
unzip -d /tmp/ /tmp/vault.zip

chmod +x /tmp/vault
/tmp/vault version
