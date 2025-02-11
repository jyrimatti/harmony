#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY
#! nix-shell -i dash -I channel:nixos-24.11-small -p nix dash curl cacert websocat
set -eu

dash ./query.sh 'vnd.logitech.harmony\/vnd.logitech.harmony.engine?config'