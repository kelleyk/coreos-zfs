#!/usr/bin/env bash

docker run --rm -it --volume=$PWD:$PWD --workdir=$PWD quay.io/kelleyk/toolbox:e1f0951 ./upload.sh

