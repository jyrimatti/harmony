#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash curl cacert websocat jq
set -eu

activity="$1"
getset="${2:-}"

if [ "$getset" = "Set" ]; then
    response="$(dash ./query.sh 'vnd.logitech.harmony\/vnd.logitech.harmony.engine?startactivity' \""activityId": "$activity"\")"
    echo 1
else
    ret="$(dash ./cmd/current_activity.sh)"
    if [ "$ret" = "$activity" ]; then
        echo 1
    else
        echo 0
    fi
fi