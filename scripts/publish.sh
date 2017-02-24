#!/bin/bash 

echo "remote add will fail if it exists already, this is ok!"

git remote add publish git@github.com:strategicdata/pmhc-mds-spec.git

git checkout master && \
  git add doc && \
  git commit -m "Update processed documentation" && \
  git push


git checkout v1/preview && \
  git merge master && \
  git push -f publish v1/preview && \
  git checkout master 