#!/usr/bin/env sh

set -e

yarn run build

cd dist

echo > .nojekyll

git init
git checkout -B main
git add -A
git commit -m 'deploy'

git push -f git@github.com:vsventy/vue-test.git main:gh-pages

cd -