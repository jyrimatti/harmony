#! /usr/bin/env nix-shell
#! nix-shell --pure --keep LD_LIBRARY_PATH -i dash -I channel:nixos-23.11-small -p nix dash
set -eu

getset="${1:-}"

if [ "$getset" = "Set" ]; then
    response1="$(dash ./command.sh 67020089 Mute)"
    response2="$(dash ./command.sh 67020091 Mute)"
    echo 1
fi

echo 0
