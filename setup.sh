#!/bin/sh
# This currently has been tested, use at your own discretion

# ohmyzsh setup
cd ~
git clone https://github.com/dillionnason/dotfiles
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
cp ~/dotfiles/.zshrc ~/.zshrc
chsh -s $(which zsh)

# needed packages
sudo pacman -S neovim zsh-syntax-highlighting exa

# copy dotfiles
# vim plugins will be installed on first run
cp ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
cp -r ~/dotfiles/nvim/plugins ~/.config/nvim/
source ~/.config/nvim/init.vim
rm -r ~/dotfiles


