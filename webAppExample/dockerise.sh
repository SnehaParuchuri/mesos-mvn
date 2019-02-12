#!/usr/bin/env bash
set -e
docker login -u santoshm93 -p Internity@123
docker build --no-cache -f Dockerfile -t santoshm93/mavenwebapp .
docker push santoshm93/mavenwebapp
