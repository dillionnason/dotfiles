# dotfiles

Personal configuration files for Unix-like CLI.

## Setup script (not currently recommended)

Use this method at your own discretion, this script has not been tested. As said above, it assumes you are using an Arch based distro or macos and will not work otherwise. 

```sh
sh -c "$(curl -fsSL https://raw.github.com/dillionnason/dotfiles/master/setup.sh)"
```

Manual install instructions are below, for now it is the recommend method.

## Manual installation instructions (recommended)

### 1. Clone the repository

```sh
git clone https://github.com/dillionnason/dotfiles ~/dotfiles
```

### 2. [Neovim](https://github.com/neovim/neovim) and [vim-plug](https://github.com/junegunn/vim-plug)

```sh
sudo pacman -S neovim
cp -R ~/dotfiles/nvim ~/.config/
```

On first run, vim-plug will install and check for missing plugins.

### 3. [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/dotfiles/.zhsrc ~/.zshrc
```

This will alias `nvim` to `vi` and `exa --long --header --group-directories-first --sort=ext` to `l`. Installation instructions for exa are found below.

This also includes `export PATH=$PATH:$HOME/gcc-arm-eabi-10-2020-q4-major/bin`, which is used for compiling C programs on Arm integrated chips. This can be removed or modified to use a newer toolchain, as this is a fairly outdated toolchain for my specific machine.

### 4. Zsh plugins

These can be installed in several ways. Currently preffered method is to clone them into the oh-my-zsh plugins folder (they are already added to the .zshrc):

```sh 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
```

### 5. [exa](https://github.com/ogham/exa)

If you prefer to not use `exa`, remove the `exa --long --header --group-directories-first --sort=ext` line from `~/.zshrc` and then skip this installation.

```sh
sudo pacman -S exa
```

### 6. Cleaning up

```sh
rm -r ~/dotfiles
```
