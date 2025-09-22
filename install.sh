#! /usr/bin/env bash

sudo pacman -Syyu --needed --noconfirm rust stow

cd ~
mkdir -p .local/bin .config Github

cd ~/dotfiles
stow .

# install packages
cd ~
paru -Syy --needed --noconfirm $(grep -v '^#' ~/dotfiles/packages.lst | tr '\n' ' ')

# install nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node

# install bun js
curl -fsSL https://bun.sh/install | sh

# install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -

# TPM install
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# change default shell to zsh
chsh -s /usr/bin/zsh

# cache clean up
paru -Sccc

# setup sddm
sudo systemctl enable sddm
sudo systemctl set-default graphical.target

# start hyprland
sudo systemctl start sddm
