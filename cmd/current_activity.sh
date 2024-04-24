#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash
set -eu

condition="${1:-}"

ret="$(./query.sh show_current_activity | sed 's/\(.*\)([0-9]*)/\1/')"
if [ "$condition" = "" ]; then
    echo "$ret"
else
    if [ "$ret" = "$condition" ]; then
        echo 0
    else
        echo 1
    fi
fi