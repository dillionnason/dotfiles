#!/bin/sh
# This hasn't been thoroughly tested, use at your own discretion
# This is only viable for an Arch based distribution or Macos

# needed packages
# this is assuming a completely blank slate
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      sudo pacman -S --needed zsh neovim exa universal-ctags ripgrep fd git;
elif [[ "$OSTYPE" == "darwin"* ]]; then
      command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
      brew install zsh neovim exa ripgrep fd git;
fi

# copy dotfiles
git clone https://github.com/dillionnason/dotfiles ~/dotfiles
cp ~/dotfiles/.zshrc ~/.zshrc
cp -R ~/dotfiles/nvim ~/.config

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim --c 'PlugInstall' \
      --c 'qa!'

# ohmyzsh setup
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
chsh -s $(which zsh)

# install fonts
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      git clone https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts ~/.local/share/fonts/San-Francisco-Pro-Fonts
      git clone https://github.com/epk/SF-Mono-Nerd-Font ~/.local/share/fonts/SF-Mono-Nerd-Font
      chmod -R 555 ~/.local/share/fonts
      fc-cache
fi
