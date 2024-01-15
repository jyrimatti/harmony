#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.05-small -p dash
set -eu

command="$1"

device_id="$(./query.sh show_current_activity | sed 's/.*(\([0-9]*\))/\1/')"
./query.sh send_command --device_id "$device_id" --command "$command"