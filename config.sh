#! /usr/bin/env nix-shell
#! nix-shell --pure --keep LD_LIBRARY_PATH -i dash -I channel:nixos-23.11-small -p nix dash curl cacert websocat
set -eu

dash ./query.sh 'vnd.logitech.harmony\/vnd.logitech.harmony.engine?config'