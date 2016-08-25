#!/bin/bash

docker build -t docker.sdlocal.net/csvw/metadata2rst . \
  && docker push docker.sdlocal.net/csvw/metadata2rst

# Usage
# docker run -it --rm -v `pwd`:/mnt/cwd docker.sdlocal.net/csvw/metadata2rst