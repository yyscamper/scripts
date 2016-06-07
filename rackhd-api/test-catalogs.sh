#!/bin/bash

set -e

nodesId=$1

http :8080/api/1.1/nodes/$nodesId/catalogs/bmc
http :8080/api/1.1/nodes/$nodesId/catalogs/ohai
http :8080/api/1.1/nodes/$nodesId/catalogs/smart
http :8080/api/1.1/nodes/$nodesId/catalogs/dmi
http :8080/api/1.1/nodes/$nodesId/catalogs/ipmi-fru
http :8080/api/1.1/nodes/$nodesId/catalogs/lshw
http :8080/api/1.1/nodes/$nodesId/catalogs/lsscsi
http :8080/api/1.1/nodes/$nodesId/catalogs/driveId

