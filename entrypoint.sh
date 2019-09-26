#!/bin/sh
set -eu

curl -X POST --data "$data" $WEBHOOK_URL
