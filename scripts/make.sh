#!/bin/bash

# Exit if anything errors
set -e

docker run -it --rm -v `pwd`:/mnt/cwd docker.sdlocal.net/csvw/metadata2rst

pushd .

cd doc

rm -rf _data build
cp -rf ../data _data

if [ -z $1 ]; then
  ARG1=html
else
  ARG1=$1
fi

GIT_VERSION=$(git describe --tags --always)

docker run -ti -e GIT_VERSION -v `pwd`:/mnt/workdir stratdat/sphinx:production make $ARG1

popd
