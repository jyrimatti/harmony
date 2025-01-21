#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY -i dash -I channel:nixos-24.11-small -p nix dash jq curl cacert websocat
set -eu

getset="${1:-}"

if [ "$getset" = "Set" ]; then
    response="$(dash ./cmd/start_activity.sh -1 Set)"
fi

ret="$(dash ./cmd/current_activity.sh)"
if [ "$ret" = "-1" ]; then
    echo 0
else
    echo 1
fi