#!/bin/sh

help(){
	cat << EOF
Usage: ./deploy.sh
Deploy hugo server via reync to vps server
  -h, --help                 print this help message

EOF
}

deploy(){
	cd $(git rev-parse --show-toplevel)

	USER=simba
	HOST=simba-fs.dev
	DIR=website/blog

	git add .
	git commit -m '' --allow-empty-message
	git push

	# hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR}

	exit 0
}

for opt in "$@";do
	case $opt in
		"--help"|"-h")
			help
			exit
			;;
	esac
done

deploy
