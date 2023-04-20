# dotfiles

Personal configuration files for Unix-like CLI/Linux Desktop.

## Setup script

Use this method at your own discretion, this script has not been throughly tested. As said above, it assumes you are using an Arch based distro or MacOS and will not work otherwise. 

```sh
sh -c "$(curl -fsSL https://raw.github.com/dillionnason/dotfiles/master/setup.sh)"
```

Manual install instructions are below, for now it is the recommend method.

## Manual installation instructions (Arch Linux)

The below is setup à la carte. The first step will install all of the necessary packages at once, but it can be skipped and each section works standalone.

### 1. Required Packages (or install seperately below)

```sh
sudo pacman -S --needed i3-wm xorg-xinit alacritty zsh neovim exa universal-ctags ripgrep fd git ttc-iosevka
```

### 2. Clone the repository

```sh
git clone https://github.com/dillionnason/dotfiles ~/dotfiles
```

### 3. [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

```sh
sudo pacman -S zsh exa
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/dotfile/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/dotfiles/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/dotfiles/.oh-my-zsh/plugins/zsh-autosuggestions
ln -s ~/dotfiles/.zshrc ~/.zshrc
chsh -s $(which zsh)
```

### 4. [Neovim](https://github.com/neovim/neovim) and [packer.nvim](https://github.com/wbthomason/packer.nvim)

```sh
sudo pacman -S --needed neovim universal-ctags ripgrep fd
ln -s ~/dotfiles/nvim ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### 5. [i3](https://i3wm.org/)

```sh
sudo pacman -S --needed i3-wm xorg-xinit ttc-iosevka
ln -s ~/dotfiles/i3 ~/.config/i3
```

### 6. [alacritty](https://github.com/alacritty/alacritty)

```sh
sudo pacman -S --needed alacritty ttc-iosevka
ln -s ~/dotfiles/alacritty ~/.config/alacritty
```
