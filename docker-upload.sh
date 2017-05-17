#!/usr/bin/env bash

docker run --rm -it --volume=$PWD:$PWD --workdir=$PWD quay.io/kelleyk/toolbox:e022cfb ./upload.sh

