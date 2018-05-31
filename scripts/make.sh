#!/bin/bash

# Exit if anything errors
set -e

docker pull docker.sdlocal.net/csvw/metadata2rst
docker run -it --rm -v `pwd`:/mnt/cwd docker.sdlocal.net/csvw/metadata2rst

#pushd .

pushd doc
    rm -rf data-specification/_data build
    cp -rf ../data data-specification/_data
popd

if [ ! -z $2 ]; then
    pushd $2
else
    pushd doc
fi



if [ -z $1 ]; then
  ARG1=html
else
  ARG1=$1
fi

GIT_VERSION=$(git describe --tags --always)

current_dir=`pwd`

echo "PWD=$current_dir"

pwd

docker run -ti -e GIT_VERSION -v `pwd`:/mnt/workdir stratdat/sphinx:production make $ARG1

popd
