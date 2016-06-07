#!/bin/bash

for repo in $(echo "on-core on-tasks on-taskgraph on-http on-dhcp-proxy on-tftp on-syslog");
do
    pushd ~/src/$repo
    git remote add $1 https://github.com/$1/$repo.git
done
