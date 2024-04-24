#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash
set -eu

activity="$1"
getset="${2:-}"

if [ "$getset" = "Set" ]; then
    response="$(./query.sh start_activity --activity "$activity")"
    echo 1
else
    ret="$(./query.sh show_current_activity | sed 's/\(.*\)([0-9]*)/\1/')"
    if [ "$ret" = "$activity" ]; then
        echo 1
    else
        echo 0
    fi
fi