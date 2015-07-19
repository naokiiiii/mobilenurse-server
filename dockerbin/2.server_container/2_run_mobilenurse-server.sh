#!/bin/bash
#
# docker run mobilenurse-server
#
if [ "$GIT_HOME" = "" ]; then
    echo "GIT_HOME must be set. exit."
    exit 1
fi

docker run --name mobilenurse-server-up -i -t -d \
  -p 80:80 \
  --volumes-from mobilenurse-volume t4j/serverapp:latest

exit 0