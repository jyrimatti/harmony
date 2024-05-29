#! /usr/bin/env nix-shell
#! nix-shell --pure --keep LD_LIBRARY_PATH -i dash -I channel:nixos-23.11-small -p curl cacert
set -eu

curl -X POST "$(cat .harmony-ip):8088" -H 'Accept: utf-8' -H 'Content-Type: application/json' -H 'Origin: http://sl.dhg.myharmony.com' -d '{"id":1,"cmd":"setup.account?getProvisionInfo","params":{}}'