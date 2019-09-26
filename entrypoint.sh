#!/bin/sh
echo "'$1'"
echo "$2"
echo "$3"
curl -X POST --data "$1" $3 $2
command="curl -X POST \$3 --data \"\$1\" \$2"
eval $command

# curl -X POST $2 -H "Accept: application/vnd.github.everest-preview+json" -H "Authorization: token $TOKEN" --data "'$1'"
# curl -X POST $2 --data "'$1'" $3
