#!/usr/bin/env bash
set -e
docker login -u santoshm93 -p Internity@123
echo $BUILD_ID
docker build --no-cache -f Dockerfile -t santoshm93/mavenwebapp:$BUILD_ID .
docker push santoshm93/mavenwebapp:$BUILD_ID
dcos auth login --username root --password Caas@123
dcos marathon app remove /mvn-app
