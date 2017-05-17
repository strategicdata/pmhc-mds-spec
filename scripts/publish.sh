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

curl -s -X POST --data-urlencode \
  'payload={"channel": "#pmhc", "username": "CHiMP", "text": "Published updated documentation to docs.pmhc-mds.com", "icon_emoji": ":monkey_face:"}' \
  https://hooks.slack.com/services/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
