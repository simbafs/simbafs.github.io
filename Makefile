USER:=simba
HOST:=simba-fs.dev
DIR:=website/blog


all:
	cd $(git rev-parse --show-toplevel)

	git add .
	git commit -m '' --allow-empty-message
	git push
	
	hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR}

list:
	tree -I '*.md' content/posts

