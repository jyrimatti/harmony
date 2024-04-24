#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash
set -eu

getset="${1:-}"
value="${4:-}"

if [ "$getset" = "Set" ]; then
    if [ "$value" = "0" ]; then
        response="$(./command.sh "VolumeUp")"
    elif [ "$value" = "1" ]; then
        response="$(./command.sh "VolumeDown")"
    else
        echo "Invalid value: $value" >&2
    fi
fi

echo 0
