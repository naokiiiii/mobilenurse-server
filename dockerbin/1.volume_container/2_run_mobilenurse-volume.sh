#!/bin/bash
#
# docker run mobilenurse-volume
#
if [ "$GIT_HOME" = "" ]; then
    echo "GIT_HOME must be set. exit."
    exit 1
fi

docker run --name mobilenurse-volume  -i -t -d \
  -v $GIT_HOME/mobilenurse-server:/tmp/t4j/mobilenurse-server \
  -v $GIT_HOME/mobilenurse-backup:/tmp/t4j/mobilenurse-backup \
  t4j/volume:latest

exit 0