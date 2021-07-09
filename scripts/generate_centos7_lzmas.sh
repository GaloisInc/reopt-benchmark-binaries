#!/bin/bash

set -Eeuox pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

pushd $DIR/..

docker build -t centos7-dev .
CONTAINER=$(docker run --entrypoint /bin/bash -t -d centos7-dev)

mkdir -p centos7-dev/bin
mkdir -p centos7-dev/lib64
mkdir -p centos7-dev/debug-lib64

docker cp $CONTAINER:/opt/app-root/src/bin.tar ./centos7-dev/bin/bin.tar
docker cp $CONTAINER:/opt/app-root/src/lib64.tar ./centos7-dev/lib64/lib64.tar
docker cp $CONTAINER:/opt/app-root/src/debug-lib64.tar ./centos7-dev/debug-lib64/debug-lib64.tar
docker kill $CONTAINER

pushd centos7-dev/bin
lzma ./bin.tar
popd

pushd centos7-dev/lib64
lzma ./lib64.tar
popd

pushd centos7-dev/debug-lib64
lzma ./debug-lib64.tar
popd

popd # $DIR/..
