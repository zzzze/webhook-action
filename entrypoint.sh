#!/bin/sh
set -eu
echo $WEBHOOK_URL
echo "Authorization: token $WEBHOOK_URL"
curl -X POST $2 -H "Accept: application/vnd.github.everest-preview+json" -H "Authorization: token $TOKEN" --data $1
