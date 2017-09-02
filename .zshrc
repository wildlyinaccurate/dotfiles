# oh-my-zsh start
export ZSH=/home/joseph/.oh-my-zsh

ZSH_THEME="lambda"
plugins=(git)

path=("$HOME/bin" "$path[@]")

source $ZSH/oh-my-zsh.sh
# oh-my-zsh end

eval `keychain --eval id_ed25519 id_rsa`

# version management start
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

source /usr/local/share/chruby/chruby.sh
chruby 2.4

echo "node $(node -v)"
ruby -v
# version management end

# aliases start
alias reload!='source ~/.zshrc'
# aliases end
