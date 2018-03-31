#!/bin/bash -ex

tag=test

docker build -t $tag .

docker run --rm -it $tag bash
