#!/bin/sh
# Sends a Slack DM to Daniel via a Workflow Builder webhook. The URL lives in the macOS Keychain.
set -eu

[ $# -ge 1 ] || { echo "usage: ping-me.sh \"message\"" >&2; exit 2; }

url=$(security find-generic-password -s ping-me-slack-webhook -w) || {
  echo "ping-me: no 'ping-me-slack-webhook' item in the Keychain" >&2
  exit 1
}

jq -n --arg message "$*" '{message: $message}' |
  curl -sS --fail-with-body -X POST -H 'Content-Type: application/json' -d @- "$url"
echo
