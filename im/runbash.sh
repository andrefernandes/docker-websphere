#!/bin/bash
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
#echo "ENVBASH=$ENVBASH"
docker run --rm -t -i andrefernandes/docker-ibmim:latest $ENVBASH ${@:2}

