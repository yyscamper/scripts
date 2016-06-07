#!/bin/bash

http :8080/api/common/nodes | prettyjson | grep -G "id[^en]" | awk '{print $2}'
