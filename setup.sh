#!/bin/sh
# This currently hasn't been tested, use at your own discretion
# This is only viable for an Arch based distribution or Macos

# needed packages
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      sudo pacman -S zsh neovim exa;
elif [[ "$OSTYPE" == "darwin"* ]]; then
      command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
      brew install zsh neovim exa;
fi

# copy dotfiles
# vim plugins will be installed on first run
git clone https://github.com/dillionnason/dotfiles ~/dotfiles
cp ~/dotfiles/.zshrc ~/.zshrc
cp -R ~/dotfiles/nvim ~/.config

# ohmyzsh setup
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
chsh -s $(which zsh)
