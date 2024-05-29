#! /usr/bin/env nix-shell
#! nix-shell --pure --keep LD_LIBRARY_PATH -i dash -I channel:nixos-23.11-small -p nix dash curl cacert websocat jq
set -eu

condition="${1:-}"

ret="$(dash ./query.sh 'vnd.logitech.harmony\/vnd.logitech.harmony.engine?getCurrentActivity' | jq -r '.data.result')"
if [ "$condition" = "" ]; then
    echo "$ret"
else
    if [ "$ret" = "$condition" ]; then
        echo 0
    else
        echo 1
    fi
fi