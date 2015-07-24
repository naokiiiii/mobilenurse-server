#!/bin/bash
#
# docker build mobilenurse-volume
#

if [ "$GIT_HOME" = "" ]; then
    echo "GIT_HOME must be set. exit."
    exit 1
fi

docker build --rm -t t4j/volume:latest -f $GIT_HOME/mobilenurse-server/Dockerfiles/Dockerfile_volume $GIT_HOME/mobilenurse-server/Dockerfiles

exit 0
