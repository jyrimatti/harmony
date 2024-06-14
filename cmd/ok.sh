#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY -i dash -I channel:nixos-23.11-small -p nix dash
set -eu

getset="${1:-}"

if [ "$getset" = "Set" ]; then
    response="$(dash ./command.sh 67020089 Ok)"
    echo 1
fi

echo 0
