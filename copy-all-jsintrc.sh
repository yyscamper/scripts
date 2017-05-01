#!/bin/bash

for repo in $(echo "on-tasks on-taskgraph on-http on-dhcp-proxy on-tftp on-syslog");
do
    pushd ~/src/$repo > /dev/null
    cp ~/src/on-core/.jshintrc .jshintrc
    git add .jshintrc
    git commit -m "fix houndci parse error by removing comment in jshintrc"
    git push origin bug/fix-houndci-parse-error
done
