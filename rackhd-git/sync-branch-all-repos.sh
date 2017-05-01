#!/bin/bash

branch=$1

for repo in $(echo "on-core on-tasks on-taskgraph on-http on-dhcp-proxy on-tftp on-syslog");
do
    echo ">>> $repo"
    pushd ~/src/$repo
    git checkout $branch
    git fetch upstream
    git rebase upstream/master
done
