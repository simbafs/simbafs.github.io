#!/bin/bash
USER=simba
HOST=simba-fs.dev
DIR=website/blog
GITROOT=$(git rev-parse --show-toplevel)

case $1 in
	list)
		tree -I '*.md' content/posts
		;;
	server)
		hugo server -D
		;;
	deploy|*)
		cd $GITROOT
		git add .
		git commit -m '' --allow-empty-message
		git push
		hugo
		rsync -avz --delete public/ $USER@$HOST:~/$DIR
		;;
esac
