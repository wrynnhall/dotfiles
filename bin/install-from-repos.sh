#!/bin/bash

set -eu

apt update && apt upgrade -y

apt install -y \
	git \
	curl \
	software-properties-common \
	zsh

apt update

$(dirname $0)/install-custom-repos.sh

apt install -y \
	stow \
	tmux  \
	fzf \
	unzip \
	xclip \
	ca-certificates \
	jq \
	dotnet-sdk-8.0 \
	aspnetcore-runtime-8.0 \
	ripgrep \
	fd-find \
	python3-pip \
	restic


snap install node --classic --channel=20
snap install docker
snap install aws-cli --classic
snap install nvim --classic


dotnet tool install -g Yae.Tool
dotnet new -i Yae.Templates

# https://restic.readthedocs.io/en/stable/010_introduction.html
# https://dev.to/vvidovic/set-up-your-new-machine-in-a-blink-of-an-eye-43j7
# https://www.youtube.com/watch?v=y6XCebnB9gs
