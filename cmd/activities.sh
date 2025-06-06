#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY
#! nix-shell -i dash -I channel:nixos-24.11-small -p nix dash jq curl cacert websocat coreutils
set -eu

dash ./config.sh | jq -r '.data.activity | .[] | [.id,.label] | @tsv' | sort
