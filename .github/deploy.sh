#!/bin/bash

set -e

git config user.name "Travis CI"
git config user.email "dkhamsing@users.noreply.github.com"

git checkout master

git add README.md

git commit -m "[auto] [ci skip] Generate README"

git push --quiet "https://${GH_TOKEN}@github.com/dkhamsing/open-source-ios-apps" master:master > /dev/null 2>&1
