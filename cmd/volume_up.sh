#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY -i dash -I channel:nixos-24.11-small -p nix dash
set -eu

getset="${1:-}"

if [ "$getset" = "Set" ]; then
    response1="$(dash ./command.sh 67020089 VolumeUp)"
    response2="$(dash ./command.sh 67020091 VolumeUp)"
    echo 1
fi

echo 0
