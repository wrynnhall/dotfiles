#!/bin/bash

set -eu

$(dirname $0)/install-custom-repos.sh

apt update && apt upgrade -y

apt install -y \
	git \
	stow \
	tmux  \
	fzf \
	zsh \
	unzip \
	neovim \
	xclip \
	ca-certificate \
	jq \
	dotnet-sdk-8.0 \
	aspnetcore-runtime-8.0 \
	software-properties-common \
	ripgrep \
	fd-find \
	python3-pip \
	restic


snap install node --classic --channel=20
snap install docker
snap install aws-cli --classic
snap install nvim --classic



# https://restic.readthedocs.io/en/stable/010_introduction.html
# https://dev.to/vvidovic/set-up-your-new-machine-in-a-blink-of-an-eye-43j7
# https://www.youtube.com/watch?v=y6XCebnB9gs
