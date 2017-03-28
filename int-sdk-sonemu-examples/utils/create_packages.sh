#!/bin/bash
set -e
set -x


docker exec son-cli-int-test son-workspace --init
cd /tmp/workspace
git clone https://github.com/sonata-nfv/son-examples.git
cd son-examples/vnfs
docker build -t sonatanfv/sonata-empty-vnf -f sonata-empty-vnf-docker/Dockerfile sonata-empty-vnf-docker
docker exec son-cli-int-test bash -c 'cd son-examples/service-projects && son-package --project sonata-empty-service-emu -n sonata-empty-service'
docker exec son-cli-int-test docker images
