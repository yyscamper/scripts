#!/bin/bash

for pid in $(ps -aux | grep "node index.js" | awk '{ print $2 }');
do
    sudo kill $pid
done
