USER:=simba
HOST:=simba-fs.dev
DIR:=website/blog
GITROOT:=$(git rev-parse --show-toplevel)


deploy:
	cd $(GITROOT) 
	git add . 
	-git commit -m '' --allow-empty-message 
	git push 
	hugo 
	rsync -avz --delete public/ $(USER)@$(HOST):~/$(DIR) 

list:
	tree -I '*.md' content/posts

dev:
	hugo server -D
