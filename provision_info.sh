#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY
#! nix-shell -i dash -I channel:nixos-24.11-small -p dash curl cacert
set -eu

. ./harmony_env.sh

curl -X POST "$HARMONY_IP:8088" -H 'Accept: utf-8' -H 'Content-Type: application/json' -H 'Origin: http://sl.dhg.myharmony.com' -d '{"id":1,"cmd":"setup.account?getProvisionInfo","params":{}}'