#!/bin/sh
set -eu
echo $WEBHOOK_URL
echo "Authorization: token $WEBHOOK_URL"
curl -X POST $WEBHOOK_URL -H "Accept: application/vnd.github.everest-preview+json" -H "Authorization: token $TOKEN" --data '{"event_type": "CUSTOM_ACTION_NAME_HERE"}
