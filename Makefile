all:
	rsync -a ./ ${HOME}/ --exclude=.git/*
