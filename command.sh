#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY -i dash -I channel:nixos-24.11-small -p dash nix curl cacert websocat jq
set -eu

device="$1"
command="$2"

dash ./query.sh 'vnd.logitech.harmony/vnd.logitech.harmony.engine?holdAction' '"status":"press","verb":"render","action": "{\"command\":\"'"$command"'\",\"type\":\"IRCommand\",\"deviceId\":\"'"$device"'\"}"'
