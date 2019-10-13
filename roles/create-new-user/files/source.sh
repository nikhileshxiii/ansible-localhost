#!/bin/bash
export GOPATH=/home/nik/golib
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:/home/nik/code/golang/wksp

export PATH="$PATH:$HOME/npm/bin"

export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"
source ~/.sdkman/bin/sdkman-init.sh
export DOCKER_HOST=unix:///var/run/docker.sock
export HELM_HOST=localhost
