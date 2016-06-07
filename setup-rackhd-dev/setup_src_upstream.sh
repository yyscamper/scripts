#!/bin/bash
repo=on-core
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=on-tasks
cd ~/src
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=on-taskgraph
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=on-http
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=on-dhcp-proxy
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=on-tftp
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=on-syslog
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=on-tools
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git

repo=onserve
cd ~/src/$repo
git remote add upstream https://github.com/RackHD/$repo.git
