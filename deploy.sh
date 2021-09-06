#!/bin/sh

USER=simba
HOST=simba-fs.dev
DIR=website/blog

git add .
git commit -m '' --allow-empty-message
git push

hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR}

exit 0
