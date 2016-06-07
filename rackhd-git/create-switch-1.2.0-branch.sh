#!/bin/bash

for repo in $(echo "on-core on-tasks on-taskgraph on-http on-dhcp-proxy on-tftp on-syslog");
do
    pushd ~/src/$repo
    git checkout -b "1.2.0" --track upstream/release/1.2.0-branch
done
