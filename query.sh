#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p dash nix curl cacert websocat jq
set -eu

cmd="$1"
params="${2:-}"

echo '{"hubId":"'"$(cat .harmony-id)"'","timeout":10,"hbus":{"cmd":"'"$cmd"'","id":1,"params":{"verb": "get",'"$params"'}}}' | {
    websocat "ws://$(cat .harmony-ip):8088/?domain=svcs.myharmony.com&hubId=$(cat .harmony-id)"
}