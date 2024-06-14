#!/bin/sh

export HARMONY_IP="$(cat "${CREDENTIALS_DIRECTORY:-.}/.harmony-ip")"
export HARMONY_ID="$(cat "${CREDENTIALS_DIRECTORY:-.}/.harmony-id")"
