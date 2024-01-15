#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.05-small -p nix dash
set -eu

activity="$1"

./query.sh start_activity --activity "$activity"
