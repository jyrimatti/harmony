#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash
set -eu

ret="$(./cmd/active_identifier.sh)"
if [ "$ret" = "-1" ]; then
    echo 0
else
    echo 1
fi
