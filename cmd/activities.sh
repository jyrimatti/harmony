#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash jq
set -eu

./query.sh show_config | jq -r '.Activities | .[]'
