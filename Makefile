all:
	rsync -a ./ ${HOME}/testdir --exclude=.git/*
