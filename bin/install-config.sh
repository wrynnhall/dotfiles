#!/bin/bash 

set -eu

STOW_DIRS="$(ls */ -d | grep -Ev 'download|bin')"

sudo -u $USER stow --dir=/home/$USER/dotfiles \
	--ignore=downloads \
	--ignore=bin \
	${STOW_DIRS}

groupadd docker || true
usermod -aG docker $USER
snap disable docker
snap enable docker

chsh -s $(which zsh)

restic -r ~/restic-repo restore 84f368d7:/home/wrynn --target /home/$USER
