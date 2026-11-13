#!/bin/sh
# Sends a Slack DM to Daniel via a Workflow Builder webhook. The URL lives in the macOS Keychain.
set -eu

[ $# -ge 1 ] || { echo "usage: ping-me.sh \"message\"" >&2; exit 2; }

# Slack's auto-linker swallows punctuation right after a URL, which breaks the link
if printf '%s' "$*" | grep -Eq 'https?://[^[:space:]]*[].,;:!?)]([[:space:]]|$)'; then
  echo "ping-me: a URL is followed by punctuation, which breaks the link in Slack. Put whitespace after each URL (e.g. put the link last)." >&2
  exit 2
fi

url=$(security find-generic-password -s ping-me-slack-webhook -w) || {
  echo "ping-me: no 'ping-me-slack-webhook' item in the Keychain" >&2
  exit 1
}

jq -n --arg message "$*" '{message: $message}' |
  curl -sS --fail-with-body -X POST -H 'Content-Type: application/json' -d @- "$url"
echo
