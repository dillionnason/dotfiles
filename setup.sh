#!/bin/sh
# This hasn't been thoroughly tested, use at your own discretion
# This is only viable for an Arch based distribution or MacOS

config=$HOME/dotfiles

# needed packages
# this is assuming a completely blank slate
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      sudo pacman -S --needed i3-wm xorg-xinit alacritty zsh neovim exa universal-ctags ripgrep fd git ttc-iosevka;
elif [[ "$OSTYPE" == "darwin"* ]]; then
      command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
      brew install zsh neovim exa ripgrep fd git;
fi

# copy dotfiles
git clone --depth=1 https://github.com/dillionnason/dotfiles $config

# ohmyzsh setup
git clone https://github.com/ohmyzsh/ohmyzsh.git $config/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $config/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $config/.oh-my-zsh/plugins/zsh-autosuggestions
ln -s $config/.zshrc $HOME/.zshrc
chsh -s $(which zsh)

# packer
cp -r $config/nvim $HOME/.config/
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim

# emacs
cp -r $config/emacs $HOME/.config/

# Linux specific config
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	# i3 config
	ln -s $config/i3 $HOME/.config/i3

	# Hyprland config
	ln -s $config/hypr $HOME/.config/hypr
	ln -s $config/waybar $HOME/.config/waybar

	# alacritty
	ln -s $config/alacritty $HOME/.config/alacritty
fi
