#!/usr/bin/bash
set -e
# Allow an optional argument to specify the branch name
BRANCH=${1:-$(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')}

git checkout "${BRANCH}"
git pull --no-tags --prune
git submodule update --init --recursive
