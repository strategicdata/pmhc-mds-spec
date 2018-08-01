
#!/bin/bash

# ensure we are on master
git checkout master
git checkout -q $(git rev-parse HEAD)

# Edit .gitignore to publish
perl -n -i -e "print unless /^doc\/build\/$/" ./gitignore

git add .
git commit -m "Commit build artefacts for publishing"
git remote add pages git@github.com:strategicdata/pmhc-mds-spec.git
git push pages `git subtree split --prefix doc/build/html 2> /dev/null`:gh-pages --force
git remote remove pages

git reset HEAD~
git checkout ./doc/.gitignore
git checkout master

curl -s -X POST --data-urlencode \
  'payload={"channel": "#pmhc", "username": "CHiMP", "text": "Published updated documentation to docs.pmhc-mds.com", "icon_emoji": ":monkey_face:"}' \
  https://hooks.slack.com/services/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
