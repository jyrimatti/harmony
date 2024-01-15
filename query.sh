#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p dash gnugrep gnused python3Packages.aioharmony
set -eu

command="$*"

aioharmony --harmony_ip "$(cat .harmony-ip)" $command\
  | grep -v '^Trying to connect to HUB'\
  | grep -v '^Connected to HUB Harmony Hub'\
  | grep -v '^HUB: Harmony Hub$'\
  | sed 's/^HUB: Harmony Hub //'