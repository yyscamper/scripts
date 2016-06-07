#!/bin/bash

reposync()
{
    echo "syncing repository $1 ..."
    cd ~/src/$1

    #cd ~/src/$repo
    git checkout master
    git fetch upstream
    git merge upstream/master
    git push origin master
    echo "syncing repository done."
}

reposync on-core
reposync on-tasks
reposync on-taskgraph
reposync on-http
reposync on-syslog
reposync on-dhcp-proxy
reposync on-tftp
reposync on-skupack
reposync on-imagebuilder
reposync RackHD
reposync docs




