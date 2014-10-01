#!/bin/bash
docker run --rm -t -i \
   -p 9080:9080 \
   -p 9060:9060 \
   -p 9443:9443 \
   -p 2809:2809 \
   andrefernandes/docker-was855:latest

