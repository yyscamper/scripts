#!/bin/bash

branch_name=$1

if [ -z $branch_name ]; then
    echo "You must specify a branch name"
    exit 1
fi

for repo in $(echo "on-core on-tasks on-taskgraph on-http on-dhcp-proxy on-tftp on-syslog");
do
    echo ">>> $repo"
    pushd ~/src/$repo > /dev/null
    if [ `git rev-parse --verify $branch_name > /dev/null` ]
    then
        echo "The branch $branch_name already exists for repository $repo."
    else
        git checkout -b $branch_name --track upstream/master
    fi
done
