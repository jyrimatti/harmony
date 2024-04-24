#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash
set -eu

./query.sh show_current_activity | sed 's/.*(\([0-9]*\))/\1/'