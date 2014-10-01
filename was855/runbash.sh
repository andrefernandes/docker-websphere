#!/bin/bash
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
#echo "ENVBASH=$ENVBASH"
docker run --rm -P -t -i andrefernandes/docker-was855:latest $ENVBASH ${@:2}

