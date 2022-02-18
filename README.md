# dotfiles

Personal configuration files for a Linux desktop. This is all assuming an Arch based distribution and KDE Plasma. Eventually there will be a `setup.sh` to automate most of the process, but for now manual installation instructions are included below.

## [Neovim](https://github.com/neovim/neovim) and [vim-plug](https://github.com/junegunn/vim-plug)

```sh
sudo pacman -S neovim
```

```sh 
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Place the `init.vim` and `plugins/` in `~/.config/nvim`. 

Run `nvim` and run the `:Pluginstall` command or shortcut `space-vr` to install all of the plugins.

## [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Copy contents of `.zshrc` into `~/.zshrc`, or copy into your $HOME directory if it doesn't already exist.

This will alias `nvim` to `vim` and `exa --long --header --group-directories-first --sort=ext` to `l`. Installation instructions for exa are found below.

This also includes `export PATH=$PATH:$HOME/gcc-arm-eabi-10-2020-q4-major/bin`, which is used for compiling C programs on Arm integrated chips. This can be removed or modified to use a newer toolchain, as this is a fairly outdated toolchain for my specific machine.

## [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

This can be installed in several ways.

By package (preferred method):

```sh 
sudo pacman -S zsh-syntax-highlighting
```

Cloning the repository:

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

Plugin manager (have not had this method work as of yet):

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "plugins=( [plugins...] zsh-syntax-highlighting)" >> ${ZDOTDIR:-$HOME}/.zshrc
```

## [exa](https://github.com/ogham/exa)

```sh
pacman -S exa
```
