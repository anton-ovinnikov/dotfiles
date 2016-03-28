#!/bin/bash

# set -x
# trap read debug

TARGET_BRANCH=$1

PIPE="/opt/origami/connector-pipeline-python"
PLAT="/opt/origami/platform-api-python"
CONM="/opt/origami/connector-common-python"
COMMON="/opt/origami/common-python"
API="/home/user/PycharmProjects/connector-api-python/"

REPOS=($PIPE $PLAT $CONM $COMMON $API)

for repo in ${REPOS[@]}; do
  cd $repo
  git stash
  git checkout $TARGET_BRANCH
  git fetch
  git reset --hard origin/"$TARGET_BRANCH"
done
