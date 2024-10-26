#!/bin/bash

set -eu

add-apt-repository ppa:neovim-ppa/unstable
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm



