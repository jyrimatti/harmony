#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash
set -eu

getset=${1:-}

if [ "$getset" = "Set" ]; then
    ./query.sh power_off
fi

echo 0
