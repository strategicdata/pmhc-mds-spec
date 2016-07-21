#!/bin/bash 

git checkout v1/preview && \
  git merge master && \
  git push publish v1/preview && \
  git checkout master 