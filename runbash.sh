#!/bin/bash
docker run --rm -it \
       --env="DISPLAY" \
       -v "${HOME}/.Xauthority:/home/scilab/.Xauthority:rw" \
       --entrypoint /bin/bash \
       andzuc/debian-scilab