#!/bin/sh
command="curl -X POST $3 --data \"\$1\" $2"
eval $command
