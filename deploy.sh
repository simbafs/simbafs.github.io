#!/bin/sh

USER=simba
HOST=simba-fs.dev
DIR=website/blog

hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR}

exit 0
