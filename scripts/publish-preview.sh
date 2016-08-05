#!/bin/bash 

git checkout master && \
  git add doc && \
  git commit -m "Update processed documentation" && \
  git push && \
  git checkout v1/preview && \
  git merge master && \
  git push publish v1/preview && \
  git checkout master 