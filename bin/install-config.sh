#!/bin/bash 

set -eu

stow --dir=/home/wrynn/dotfiles \
	--ignore=downloads \
	--ignore=bin \
	--adopt \
	.

groupadd docker || true
usermod -aG docker wrynn
snap disable docker
snap enable docker

chsh -s $(which zsh)

restic -r ~/restic-repo restore 84f368d7:/home/wrynn --target /home/wrynn
