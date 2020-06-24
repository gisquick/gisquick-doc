#!/usr/bin/env bash
# build docs
git checkout new_order
make clean
make html
git checkout gh-pages
cp -r _build/html /tmp
rm -rf *
touch .nojekyll
mv /tmp/html/* ./
rm -rf /tmp/html
git add -A
git commit -m "publishing updated docs..."
git push origin gh-pages
# switch back
git checkout new_order
