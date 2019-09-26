#!/bin/sh
echo "$1"
echo "Authorization: token $2"
curl -X POST $2 "'$3'" --data "'$1'"
