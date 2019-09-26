#!/bin/sh
echo "'$1'"
echo "$2"
echo "$3"
curl -X POST -H "Accept: application/vnd.github.everest-preview+json" -H "Authorization: token $TOKEN" --data "'$1'" $2
# curl -X POST $2 -H "Accept: application/vnd.github.everest-preview+json" -H "Authorization: token $TOKEN" --data "'$1'"
# curl -X POST $2 --data "'$1'" $3
