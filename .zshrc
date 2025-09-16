# OH MY ZSH
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

setopt autocd
setopt correct
autoload -Uz compinit && compinit

bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# LANGUAGE
export LANG=pl_PL.UTF-8

# EVALS
eval "$(starship init zsh)"
eval $(thefuck --alias)

# EDITOR
export EDITOR=nvim

# PATH
export ANDROID_HOME="$HOME/.sdk/Android"
export DOTNET_HOME="$HOME/.dotnet"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
export BUN_HOME="$HOME/.bun"

export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$DOTNET_HOME:$BUN_HOME/bin

# ALIAS
alias ff=fastfetch
alias zc="nvim ~/.zshrc"
alias gacp='git pull && git add . && git commit -m "UPDATE" && git push'

