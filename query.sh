#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY
#! nix-shell -i dash -I channel:nixos-24.11-small -p dash nix curl cacert websocat jq
set -eu

cmd="$1"
params="${2:-}"

. ./harmony_env.sh

echo '{"hubId":"'"$HARMONY_ID"'","timeout":10,"hbus":{"cmd":"'"$cmd"'","id":1,"params":{"verb": "get",'"$params"'}}}' | {
    websocat "ws://$HARMONY_IP:8088/?domain=svcs.myharmony.com&hubId=$HARMONY_ID"
}