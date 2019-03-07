#!/usr/bin/env bash
set -e

docker build -f Dockerfile -t santoshm93/mavenwebapp .
docker push santoshm93/mavenwebapp
