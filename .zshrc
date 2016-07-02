export ZSH=/home/joseph/.oh-my-zsh

ZSH_THEME="lambda"
plugins=(git)

path=("$HOME/bin" "$path[@]")

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
