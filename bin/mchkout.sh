#!/bin/bash

# set -x
# trap read debug

TARGET_BRANCH='develop'

API='/home/anton/PycharmProjects/connector-api-python/'
ING='/home/anton/PycharmProjects/pipeline-ingest'
PIPE='/home/anton/PycharmProjects/connector-pipeline-python'
PLAT='/home/anton/PycharmProjects/platform-api-python'
CONM='/home/anton/PycharmProjects/connector-common-python'


REPOS=($PIPE $PLAT $CONM $COMMON $API)


while getopts ":t:f" opt; do
	case "${opt}" in
		f)
			FORSE="true"
			;;
		t)
			TARGET_BRANCH=$OPTARG
			;;
		:)
			echo "Option -$OPTARG requires a parameter"
			exit
			;;
		\?)
			echo 'Bad option'
			;; 
	esac
done

for repo in ${REPOS[@]}; do
	cd $repo
	git stash
	git checkout $TARGET_BRANCH
	if [ "$FORSE" != "true" ]
		then
			git fetch
			git reset --hard origin/"$TARGET_BRANCH"
	fi
done
