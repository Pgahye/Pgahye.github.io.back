




#!/usr/bin/env bash
set -e # 에러 발생 시 스크립트 중단

bundle exec jekyll build
bundle exec htmlproofer ./_site
