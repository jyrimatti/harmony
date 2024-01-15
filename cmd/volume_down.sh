#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.05-small -p nix dash
set -eu

./command.sh "VolumeDown"
