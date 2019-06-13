#!/bin/bash

docker run --rm --user $(id -u):$(id -g) -v ${PWD}:/doc hombrenieve/sw_craftmanship-latexmaker:pygments /bin/bash -c "make clean && make"