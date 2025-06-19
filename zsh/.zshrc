export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"  # tema leve e simples do Oh My Zsh

plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

# fzf
source <(fzf --zsh)

# Angular CLI completion
source <(ng completion script)

