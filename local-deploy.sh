#!/bin/bash

docker run -it --rm -v ${PWD}:/app node:18-alpine npm --prefix /app install --save-dev
USER_ID=$(id -u) docker-compose -f docker-compose.local.yml up -d $1
