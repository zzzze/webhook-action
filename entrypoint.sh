#!/bin/sh
echo $1
echo "Authorization: token $2"
curl -X POST $2 -H "Accept: application/vnd.github.everest-preview+json" -H "Authorization: token $TOKEN" --data $1
