#!/bin/bash

http :8080/api/common/nodes | prettyjson | grep -G "id[^en]" | awk '{print $2}' | while read LINE
do
    cmd="http delete :8080/api/common/nodes/$LINE"
    echo $cmd
    # eval "$cmd"
done

