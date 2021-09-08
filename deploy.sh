#!/bin/sh

if [[ $1 -eq "--help" ]];then
	cat << EOF
Usage: ./deploy.sh
Deploy hugo server via reync to vps server
  -h, --help                 print this help message

EOF
	exit
fi

USER=simba
HOST=simba-fs.dev
DIR=website/blog

git add .
git commit -m '' --allow-empty-message
git push

hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR}

exit 0
