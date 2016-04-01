#!/bin/bash

# set -x
# trap read debug

TARGET_BRANCH=$1
FORSE=false

API='/home/user/PycharmProjects/connector-api-python/'
ING='/home/user/PycharmProjects/pipeline-ingest'
PIPE='/home/user/PycharmProjects/connector-pipeline-python'
PLAT='/home/user/PycharmProjects/platform-api-python'
CONM='/home/user/PycharmProjects/connector-common-python'


REPOS=($PIPE $PLAT $CONM $COMMON $API)

for repo in ${REPOS[@]}; do
	cd $repo
	git stash
	git checkout $TARGET_BRANCH
	while getopts ":f" opt; do
		case $opt in
			f)
				FORSE=true
				git checkout $TARGET_BRANCH
				;;
			\?)
				echo 'Bad option'
				;; 
		esac
	done
	if [ ! $FORSE ]
		then

			git fetch
			git reset --hard origin/"$TARGET_BRANCH"
	fi
done
