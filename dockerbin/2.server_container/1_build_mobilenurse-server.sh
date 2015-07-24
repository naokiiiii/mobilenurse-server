#!/bin/bash
#
# docker build mobilenurse-server
#

if [ "$GIT_HOME" = "" ]; then
    echo "GIT_HOME must be set. exit."
    exit 1
fi

docker build --rm -t t4j/chainer:latest -f $GIT_HOME/mobilenurse-server/Dockerfiles/Dockerfile_chainer $GIT_HOME/mobilenurse-server/Dockerfiles
docker build --rm -t t4j/chainerapp:latest -f $GIT_HOME/mobilenurse-server/Dockerfiles/Dockerfile_chainerapp $GIT_HOME/mobilenurse-server/Dockerfiles
docker build --rm -t t4j/serverapp:latest -f $GIT_HOME/mobilenurse-server/Dockerfiles/Dockerfile_serverapp $GIT_HOME/mobilenurse-server/Dockerfiles

exit 0
