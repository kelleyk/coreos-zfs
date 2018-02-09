#!/usr/bin/env bash

docker run --rm -it --volume=$PWD:$PWD --workdir=$PWD quay.io/kelleyk/toolbox:ab88e5a ./build.sh
