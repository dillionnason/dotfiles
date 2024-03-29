# Path to your oh-my-zsh installation.
export ZSH="$HOME/dotfiles/.oh-my-zsh"

# Theme
ZSH_THEME="cypher"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Env
export EDITOR='nvim'

# Alias
alias zshconfig="nvim ~/.zshrc"
alias l="exa -lhF --group-directories-first --sort=ext"
alias vi="nvim"
