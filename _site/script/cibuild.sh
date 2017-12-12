




#!/usr/bin/env bash
#set -e # 에러 발생 시 스크립트 중단

#bundle exec jekyll build
#bundle exec htmlproofer ./_site





#!/bin/bash

# skip if build is triggered by pull request
if [ $TRAVIS_PULL_REQUEST == "true" ]; then
  echo "this is PR, exiting"
  exit 0
fi

# enable error reporting to the console
set -e

# cleanup "_site"
rm -rf _site
mkdir _site

# clone remote repo to "_site"
git clone https://62f3058a11f610f69fb2b562de526f0835c13aea@github.com/Pgahye/Pgahye.github.io.git --branch source _site

# build with Jekyll into "_site"
bundle exec jekyll build

# push
cd _site
git config user.email "rkgp0515@gmail.com"
git config user.name "Pgahye"
git add --all
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push --force origin source



