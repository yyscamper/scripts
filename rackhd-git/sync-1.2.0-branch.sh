#!/bin/bash

for repo in $(echo "on-core on-tasks on-taskgraph on-http on-dhcp-proxy on-tftp on-syslog");
do
    pushd ~/src/$repo
    git checkout 1.2.0
    git fetch upstream
    git fetch upstream release/1.2.0-branch
    git rebase upstream/release/1.2.0-branch
done
