# oh-my-zsh start
export ZSH=/home/joseph/.oh-my-zsh

ZSH_THEME="lambda"
plugins=(docker-compose git)

path=("$HOME/bin" "$HOME/.local/bin" "$path[@]" "$HOME/.rubies/ruby-2.7.0/bin")

source $ZSH/oh-my-zsh.sh
# oh-my-zsh end

# keys start
eval `keychain --eval id_ed25519 id_ed25519_speedcurve id_rsa id_rsa_speedcurve`
export GPG_TTY=$(tty)
# keys end

# version management start
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

echo "node $(node -v)"
ruby -v
# version management end

# aliases start
alias reload!='source ~/.zshrc'
alias rm='rm -v'
alias ifconfig='ip -c a'
alias sc="$HOME/dev/speedcurve/speedcurve.com"
alias scc="$HOME/dev/speedcurve/speedcurve.com/common"
alias scrun="$HOME/dev/speedcurve/speedcurve-run"
alias scapi="$HOME/dev/speedcurve/speedcurve-api"
alias scglaze="$HOME/dev/speedcurve/speedcurve-glaze"
# aliases end

# misc. environment variables start
export SPEEDCURVE_API_KEY_WILDLY_INACCURATE=xxxx
export SPEEDCURVE_API_KEY_USERSCOPE=xxxx
export SPEEDCURVE_API_KEY_SPEEDCURVE=xxxx
export SPEEDCURVE_API_KEY_CANARY=xxxx

export SPEEDCURVE_API_KEY=$SPEEDCURVE_API_KEY_WILDLY_INACCURATE
# misc. environment variables end

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
